package com.applovin.shadow.okhttp3.internal.ws;

import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.shadow.okhttp3.Call;
import com.applovin.shadow.okhttp3.Callback;
import com.applovin.shadow.okhttp3.EventListener;
import com.applovin.shadow.okhttp3.OkHttpClient;
import com.applovin.shadow.okhttp3.Protocol;
import com.applovin.shadow.okhttp3.Request;
import com.applovin.shadow.okhttp3.Response;
import com.applovin.shadow.okhttp3.WebSocket;
import com.applovin.shadow.okhttp3.WebSocketListener;
import com.applovin.shadow.okhttp3.internal.Util;
import com.applovin.shadow.okhttp3.internal.concurrent.Task;
import com.applovin.shadow.okhttp3.internal.concurrent.TaskQueue;
import com.applovin.shadow.okhttp3.internal.concurrent.TaskRunner;
import com.applovin.shadow.okhttp3.internal.connection.Exchange;
import com.applovin.shadow.okhttp3.internal.connection.RealCall;
import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.applovin.shadow.okhttp3.internal.ws.WebSocketReader;
import com.applovin.shadow.okio.BufferedSink;
import com.applovin.shadow.okio.BufferedSource;
import com.applovin.shadow.okio.ByteString;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealWebSocket.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRealWebSocket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealWebSocket.kt\nokhttp3/internal/ws/RealWebSocket\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n+ 4 Util.kt\nokhttp3/internal/Util\n*L\n1#1,654:1\n1#2:655\n84#3,4:656\n90#3,13:664\n608#4,4:660\n*S KotlinDebug\n*F\n+ 1 RealWebSocket.kt\nokhttp3/internal/ws/RealWebSocket\n*L\n269#1:656,4\n512#1:664,13\n457#1:660,4\n*E\n"})
/* loaded from: classes2.dex */
public final class RealWebSocket implements WebSocket, WebSocketReader.FrameCallback {
    private static final long CANCEL_AFTER_CLOSE_MILLIS = 60000;
    public static final long DEFAULT_MINIMUM_DEFLATE_SIZE = 1024;
    private static final long MAX_QUEUE_SIZE = 16777216;
    private boolean awaitingPong;
    @Nullable
    private Call call;
    private boolean enqueuedClose;
    @Nullable
    private WebSocketExtensions extensions;
    private boolean failed;
    @NotNull
    private final String key;
    @NotNull
    private final WebSocketListener listener;
    @NotNull
    private final ArrayDeque<Object> messageAndCloseQueue;
    private long minimumDeflateSize;
    @Nullable
    private String name;
    @NotNull
    private final Request originalRequest;
    private final long pingIntervalMillis;
    @NotNull
    private final ArrayDeque<ByteString> pongQueue;
    private long queueSize;
    @NotNull
    private final Random random;
    @Nullable
    private WebSocketReader reader;
    private int receivedCloseCode;
    @Nullable
    private String receivedCloseReason;
    private int receivedPingCount;
    private int receivedPongCount;
    private int sentPingCount;
    @Nullable
    private Streams streams;
    @NotNull
    private TaskQueue taskQueue;
    @Nullable
    private WebSocketWriter writer;
    @Nullable
    private Task writerTask;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final List<Protocol> ONLY_HTTP1 = CollectionsKt.e(Protocol.HTTP_1_1);

    /* compiled from: RealWebSocket.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Close {
        private final long cancelAfterCloseMillis;
        private final int code;
        @Nullable
        private final ByteString reason;

        public Close(int i10, @Nullable ByteString byteString, long j10) {
            this.code = i10;
            this.reason = byteString;
            this.cancelAfterCloseMillis = j10;
        }

        public final long getCancelAfterCloseMillis() {
            return this.cancelAfterCloseMillis;
        }

        public final int getCode() {
            return this.code;
        }

        @Nullable
        public final ByteString getReason() {
            return this.reason;
        }
    }

    /* compiled from: RealWebSocket.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: RealWebSocket.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Message {
        @NotNull
        private final ByteString data;
        private final int formatOpcode;

        public Message(int i10, @NotNull ByteString data) {
            Intrinsics.checkNotNullParameter(data, "data");
            this.formatOpcode = i10;
            this.data = data;
        }

        @NotNull
        public final ByteString getData() {
            return this.data;
        }

        public final int getFormatOpcode() {
            return this.formatOpcode;
        }
    }

    /* compiled from: RealWebSocket.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static abstract class Streams implements Closeable {
        private final boolean client;
        @NotNull
        private final BufferedSink sink;
        @NotNull
        private final BufferedSource source;

        public Streams(boolean z10, @NotNull BufferedSource source, @NotNull BufferedSink sink) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(sink, "sink");
            this.client = z10;
            this.source = source;
            this.sink = sink;
        }

        public final boolean getClient() {
            return this.client;
        }

        @NotNull
        public final BufferedSink getSink() {
            return this.sink;
        }

        @NotNull
        public final BufferedSource getSource() {
            return this.source;
        }
    }

    /* compiled from: RealWebSocket.kt */
    @Metadata
    /* loaded from: classes2.dex */
    private final class WriterTask extends Task {
        public WriterTask() {
            super(RealWebSocket.this.name + " writer", false, 2, null);
        }

        @Override // com.applovin.shadow.okhttp3.internal.concurrent.Task
        public long runOnce() {
            try {
                if (RealWebSocket.this.writeOneFrame$okhttp()) {
                    return 0L;
                }
                return -1L;
            } catch (IOException e10) {
                RealWebSocket.this.failWebSocket(e10, null);
                return -1L;
            }
        }
    }

    public RealWebSocket(@NotNull TaskRunner taskRunner, @NotNull Request originalRequest, @NotNull WebSocketListener listener, @NotNull Random random, long j10, @Nullable WebSocketExtensions webSocketExtensions, long j11) {
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        Intrinsics.checkNotNullParameter(originalRequest, "originalRequest");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(random, "random");
        this.originalRequest = originalRequest;
        this.listener = listener;
        this.random = random;
        this.pingIntervalMillis = j10;
        this.extensions = webSocketExtensions;
        this.minimumDeflateSize = j11;
        this.taskQueue = taskRunner.newQueue();
        this.pongQueue = new ArrayDeque<>();
        this.messageAndCloseQueue = new ArrayDeque<>();
        this.receivedCloseCode = -1;
        if (Intrinsics.areEqual(ShareTarget.METHOD_GET, originalRequest.method())) {
            ByteString.Companion companion = ByteString.Companion;
            byte[] bArr = new byte[16];
            random.nextBytes(bArr);
            Unit unit = Unit.f60915a;
            this.key = ByteString.Companion.of$default(companion, bArr, 0, 0, 3, null).base64();
            return;
        }
        throw new IllegalArgumentException(("Request must be GET: " + originalRequest.method()).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isValid(WebSocketExtensions webSocketExtensions) {
        if (webSocketExtensions.unknownValues || webSocketExtensions.clientMaxWindowBits != null) {
            return false;
        }
        if (webSocketExtensions.serverMaxWindowBits != null && !new IntRange(8, 15).i(webSocketExtensions.serverMaxWindowBits.intValue())) {
            return false;
        }
        return true;
    }

    private final void runWriter() {
        if (Util.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        Task task = this.writerTask;
        if (task != null) {
            TaskQueue.schedule$default(this.taskQueue, task, 0L, 2, null);
        }
    }

    public final void awaitTermination(long j10, @NotNull TimeUnit timeUnit) throws InterruptedException {
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        this.taskQueue.idleLatch().await(j10, timeUnit);
    }

    @Override // com.applovin.shadow.okhttp3.WebSocket
    public void cancel() {
        Call call = this.call;
        Intrinsics.checkNotNull(call);
        call.cancel();
    }

    public final void checkUpgradeSuccess$okhttp(@NotNull Response response, @Nullable Exchange exchange) throws IOException {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.code() == 101) {
            String header$default = Response.header$default(response, "Connection", null, 2, null);
            if (StringsKt.G("Upgrade", header$default, true)) {
                String header$default2 = Response.header$default(response, "Upgrade", null, 2, null);
                if (StringsKt.G("websocket", header$default2, true)) {
                    String header$default3 = Response.header$default(response, "Sec-WebSocket-Accept", null, 2, null);
                    ByteString.Companion companion = ByteString.Companion;
                    String base64 = companion.encodeUtf8(this.key + WebSocketProtocol.ACCEPT_MAGIC).sha1().base64();
                    if (Intrinsics.areEqual(base64, header$default3)) {
                        if (exchange != null) {
                            return;
                        }
                        throw new ProtocolException("Web Socket exchange missing: bad interceptor?");
                    }
                    throw new ProtocolException("Expected 'Sec-WebSocket-Accept' header value '" + base64 + "' but was '" + header$default3 + '\'');
                }
                throw new ProtocolException("Expected 'Upgrade' header value 'websocket' but was '" + header$default2 + '\'');
            }
            throw new ProtocolException("Expected 'Connection' header value 'Upgrade' but was '" + header$default + '\'');
        }
        throw new ProtocolException("Expected HTTP 101 response but was '" + response.code() + ' ' + response.message() + '\'');
    }

    @Override // com.applovin.shadow.okhttp3.WebSocket
    public boolean close(int i10, @Nullable String str) {
        return close(i10, str, 60000L);
    }

    public final void connect(@NotNull OkHttpClient client) {
        Intrinsics.checkNotNullParameter(client, "client");
        if (this.originalRequest.header("Sec-WebSocket-Extensions") != null) {
            failWebSocket(new ProtocolException("Request header not permitted: 'Sec-WebSocket-Extensions'"), null);
            return;
        }
        OkHttpClient build = client.newBuilder().eventListener(EventListener.NONE).protocols(ONLY_HTTP1).build();
        final Request build2 = this.originalRequest.newBuilder().header("Upgrade", "websocket").header("Connection", "Upgrade").header("Sec-WebSocket-Key", this.key).header("Sec-WebSocket-Version", "13").header("Sec-WebSocket-Extensions", "permessage-deflate").build();
        RealCall realCall = new RealCall(build, build2, true);
        this.call = realCall;
        Intrinsics.checkNotNull(realCall);
        realCall.enqueue(new Callback() { // from class: com.applovin.shadow.okhttp3.internal.ws.RealWebSocket$connect$1
            @Override // com.applovin.shadow.okhttp3.Callback
            public void onFailure(@NotNull Call call, @NotNull IOException e10) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(e10, "e");
                RealWebSocket.this.failWebSocket(e10, null);
            }

            @Override // com.applovin.shadow.okhttp3.Callback
            public void onResponse(@NotNull Call call, @NotNull Response response) {
                boolean isValid;
                ArrayDeque arrayDeque;
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                Exchange exchange = response.exchange();
                try {
                    RealWebSocket.this.checkUpgradeSuccess$okhttp(response, exchange);
                    Intrinsics.checkNotNull(exchange);
                    RealWebSocket.Streams newWebSocketStreams = exchange.newWebSocketStreams();
                    WebSocketExtensions parse = WebSocketExtensions.Companion.parse(response.headers());
                    RealWebSocket.this.extensions = parse;
                    isValid = RealWebSocket.this.isValid(parse);
                    if (!isValid) {
                        RealWebSocket realWebSocket = RealWebSocket.this;
                        synchronized (realWebSocket) {
                            arrayDeque = realWebSocket.messageAndCloseQueue;
                            arrayDeque.clear();
                            realWebSocket.close(1010, "unexpected Sec-WebSocket-Extensions in response header");
                        }
                    }
                    try {
                        RealWebSocket.this.initReaderAndWriter(Util.okHttpName + " WebSocket " + build2.url().redact(), newWebSocketStreams);
                        RealWebSocket.this.getListener$okhttp().onOpen(RealWebSocket.this, response);
                        RealWebSocket.this.loopReader();
                    } catch (Exception e10) {
                        RealWebSocket.this.failWebSocket(e10, null);
                    }
                } catch (IOException e11) {
                    RealWebSocket.this.failWebSocket(e11, response);
                    Util.closeQuietly(response);
                    if (exchange != null) {
                        exchange.webSocketUpgradeFailed();
                    }
                }
            }
        });
    }

    public final void failWebSocket(@NotNull Exception e10, @Nullable Response response) {
        Intrinsics.checkNotNullParameter(e10, "e");
        synchronized (this) {
            if (this.failed) {
                return;
            }
            this.failed = true;
            Streams streams = this.streams;
            this.streams = null;
            WebSocketReader webSocketReader = this.reader;
            this.reader = null;
            WebSocketWriter webSocketWriter = this.writer;
            this.writer = null;
            this.taskQueue.shutdown();
            Unit unit = Unit.f60915a;
            try {
                this.listener.onFailure(this, e10, response);
            } finally {
                if (streams != null) {
                    Util.closeQuietly(streams);
                }
                if (webSocketReader != null) {
                    Util.closeQuietly(webSocketReader);
                }
                if (webSocketWriter != null) {
                    Util.closeQuietly(webSocketWriter);
                }
            }
        }
    }

    @NotNull
    public final WebSocketListener getListener$okhttp() {
        return this.listener;
    }

    public final void initReaderAndWriter(@NotNull String name, @NotNull Streams streams) throws IOException {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(streams, "streams");
        WebSocketExtensions webSocketExtensions = this.extensions;
        Intrinsics.checkNotNull(webSocketExtensions);
        synchronized (this) {
            try {
                this.name = name;
                this.streams = streams;
                this.writer = new WebSocketWriter(streams.getClient(), streams.getSink(), this.random, webSocketExtensions.perMessageDeflate, webSocketExtensions.noContextTakeover(streams.getClient()), this.minimumDeflateSize);
                this.writerTask = new WriterTask();
                long j10 = this.pingIntervalMillis;
                if (j10 != 0) {
                    final long nanos = TimeUnit.MILLISECONDS.toNanos(j10);
                    final String str = name + " ping";
                    this.taskQueue.schedule(new Task(str) { // from class: com.applovin.shadow.okhttp3.internal.ws.RealWebSocket$initReaderAndWriter$lambda$3$$inlined$schedule$1
                        @Override // com.applovin.shadow.okhttp3.internal.concurrent.Task
                        public long runOnce() {
                            this.writePingFrame$okhttp();
                            return nanos;
                        }
                    }, nanos);
                }
                if (!this.messageAndCloseQueue.isEmpty()) {
                    runWriter();
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.reader = new WebSocketReader(streams.getClient(), streams.getSource(), this, webSocketExtensions.perMessageDeflate, webSocketExtensions.noContextTakeover(!streams.getClient()));
    }

    public final void loopReader() throws IOException {
        while (this.receivedCloseCode == -1) {
            WebSocketReader webSocketReader = this.reader;
            Intrinsics.checkNotNull(webSocketReader);
            webSocketReader.processNextFrame();
        }
    }

    @Override // com.applovin.shadow.okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadClose(int i10, @NotNull String reason) {
        Streams streams;
        WebSocketReader webSocketReader;
        WebSocketWriter webSocketWriter;
        Intrinsics.checkNotNullParameter(reason, "reason");
        if (i10 != -1) {
            synchronized (this) {
                try {
                    if (this.receivedCloseCode == -1) {
                        this.receivedCloseCode = i10;
                        this.receivedCloseReason = reason;
                        streams = null;
                        if (this.enqueuedClose && this.messageAndCloseQueue.isEmpty()) {
                            Streams streams2 = this.streams;
                            this.streams = null;
                            webSocketReader = this.reader;
                            this.reader = null;
                            webSocketWriter = this.writer;
                            this.writer = null;
                            this.taskQueue.shutdown();
                            streams = streams2;
                        } else {
                            webSocketReader = null;
                            webSocketWriter = null;
                        }
                        Unit unit = Unit.f60915a;
                    } else {
                        throw new IllegalStateException("already closed");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            try {
                this.listener.onClosing(this, i10, reason);
                if (streams != null) {
                    this.listener.onClosed(this, i10, reason);
                }
                if (webSocketWriter != null) {
                    return;
                }
                return;
            } finally {
                if (streams != null) {
                    Util.closeQuietly(streams);
                }
                if (webSocketReader != null) {
                    Util.closeQuietly(webSocketReader);
                }
                if (webSocketWriter != null) {
                    Util.closeQuietly(webSocketWriter);
                }
            }
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @Override // com.applovin.shadow.okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadMessage(@NotNull String text) throws IOException {
        Intrinsics.checkNotNullParameter(text, "text");
        this.listener.onMessage(this, text);
    }

    @Override // com.applovin.shadow.okhttp3.internal.ws.WebSocketReader.FrameCallback
    public synchronized void onReadPing(@NotNull ByteString payload) {
        try {
            Intrinsics.checkNotNullParameter(payload, "payload");
            if (!this.failed && (!this.enqueuedClose || !this.messageAndCloseQueue.isEmpty())) {
                this.pongQueue.add(payload);
                runWriter();
                this.receivedPingCount++;
            }
        } finally {
        }
    }

    @Override // com.applovin.shadow.okhttp3.internal.ws.WebSocketReader.FrameCallback
    public synchronized void onReadPong(@NotNull ByteString payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        this.receivedPongCount++;
        this.awaitingPong = false;
    }

    public final synchronized boolean pong(@NotNull ByteString payload) {
        try {
            Intrinsics.checkNotNullParameter(payload, "payload");
            if (!this.failed && (!this.enqueuedClose || !this.messageAndCloseQueue.isEmpty())) {
                this.pongQueue.add(payload);
                runWriter();
                return true;
            }
            return false;
        } finally {
        }
    }

    public final boolean processNextFrame() throws IOException {
        try {
            WebSocketReader webSocketReader = this.reader;
            Intrinsics.checkNotNull(webSocketReader);
            webSocketReader.processNextFrame();
            if (this.receivedCloseCode != -1) {
                return false;
            }
            return true;
        } catch (Exception e10) {
            failWebSocket(e10, null);
            return false;
        }
    }

    @Override // com.applovin.shadow.okhttp3.WebSocket
    public synchronized long queueSize() {
        return this.queueSize;
    }

    public final synchronized int receivedPingCount() {
        return this.receivedPingCount;
    }

    public final synchronized int receivedPongCount() {
        return this.receivedPongCount;
    }

    @Override // com.applovin.shadow.okhttp3.WebSocket
    @NotNull
    public Request request() {
        return this.originalRequest;
    }

    @Override // com.applovin.shadow.okhttp3.WebSocket
    public boolean send(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return send(ByteString.Companion.encodeUtf8(text), 1);
    }

    public final synchronized int sentPingCount() {
        return this.sentPingCount;
    }

    public final void tearDown() throws InterruptedException {
        this.taskQueue.shutdown();
        this.taskQueue.idleLatch().await(10L, TimeUnit.SECONDS);
    }

    public final boolean writeOneFrame$okhttp() throws IOException {
        String str;
        WebSocketReader webSocketReader;
        WebSocketWriter webSocketWriter;
        int i10;
        Streams streams;
        synchronized (this) {
            try {
                if (this.failed) {
                    return false;
                }
                WebSocketWriter webSocketWriter2 = this.writer;
                ByteString poll = this.pongQueue.poll();
                Message message = null;
                if (poll == null) {
                    Object poll2 = this.messageAndCloseQueue.poll();
                    if (poll2 instanceof Close) {
                        i10 = this.receivedCloseCode;
                        str = this.receivedCloseReason;
                        if (i10 != -1) {
                            streams = this.streams;
                            this.streams = null;
                            webSocketReader = this.reader;
                            this.reader = null;
                            webSocketWriter = this.writer;
                            this.writer = null;
                            this.taskQueue.shutdown();
                        } else {
                            long cancelAfterCloseMillis = ((Close) poll2).getCancelAfterCloseMillis();
                            final String str2 = this.name + " cancel";
                            this.taskQueue.schedule(new Task(str2, true) { // from class: com.applovin.shadow.okhttp3.internal.ws.RealWebSocket$writeOneFrame$lambda$8$$inlined$execute$default$1
                                @Override // com.applovin.shadow.okhttp3.internal.concurrent.Task
                                public long runOnce() {
                                    this.cancel();
                                    return -1L;
                                }
                            }, TimeUnit.MILLISECONDS.toNanos(cancelAfterCloseMillis));
                            streams = null;
                            webSocketReader = null;
                            webSocketWriter = null;
                        }
                    } else if (poll2 == null) {
                        return false;
                    } else {
                        str = null;
                        webSocketReader = null;
                        webSocketWriter = null;
                        i10 = -1;
                        streams = null;
                    }
                    message = poll2;
                } else {
                    str = null;
                    webSocketReader = null;
                    webSocketWriter = null;
                    i10 = -1;
                    streams = null;
                }
                Unit unit = Unit.f60915a;
                try {
                    if (poll != null) {
                        Intrinsics.checkNotNull(webSocketWriter2);
                        webSocketWriter2.writePong(poll);
                    } else if (message instanceof Message) {
                        Message message2 = message;
                        Intrinsics.checkNotNull(webSocketWriter2);
                        webSocketWriter2.writeMessageFrame(message2.getFormatOpcode(), message2.getData());
                        synchronized (this) {
                            this.queueSize -= message2.getData().size();
                        }
                    } else if (message instanceof Close) {
                        Close close = (Close) message;
                        Intrinsics.checkNotNull(webSocketWriter2);
                        webSocketWriter2.writeClose(close.getCode(), close.getReason());
                        if (streams != null) {
                            WebSocketListener webSocketListener = this.listener;
                            Intrinsics.checkNotNull(str);
                            webSocketListener.onClosed(this, i10, str);
                        }
                    } else {
                        throw new AssertionError();
                    }
                    return true;
                } finally {
                    if (streams != null) {
                        Util.closeQuietly(streams);
                    }
                    if (webSocketReader != null) {
                        Util.closeQuietly(webSocketReader);
                    }
                    if (webSocketWriter != null) {
                        Util.closeQuietly(webSocketWriter);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void writePingFrame$okhttp() {
        int i10;
        synchronized (this) {
            try {
                if (this.failed) {
                    return;
                }
                WebSocketWriter webSocketWriter = this.writer;
                if (webSocketWriter == null) {
                    return;
                }
                if (this.awaitingPong) {
                    i10 = this.sentPingCount;
                } else {
                    i10 = -1;
                }
                this.sentPingCount++;
                this.awaitingPong = true;
                Unit unit = Unit.f60915a;
                if (i10 != -1) {
                    failWebSocket(new SocketTimeoutException("sent ping but didn't receive pong within " + this.pingIntervalMillis + "ms (after " + (i10 - 1) + " successful ping/pongs)"), null);
                    return;
                }
                try {
                    webSocketWriter.writePing(ByteString.EMPTY);
                } catch (IOException e10) {
                    failWebSocket(e10, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final synchronized boolean close(int i10, @Nullable String str, long j10) {
        ByteString byteString;
        try {
            WebSocketProtocol.INSTANCE.validateCloseCode(i10);
            if (str != null) {
                byteString = ByteString.Companion.encodeUtf8(str);
                if (byteString.size() > 123) {
                    throw new IllegalArgumentException(("reason.size() > 123: " + str).toString());
                }
            } else {
                byteString = null;
            }
            if (!this.failed && !this.enqueuedClose) {
                this.enqueuedClose = true;
                this.messageAndCloseQueue.add(new Close(i10, byteString, j10));
                runWriter();
                return true;
            }
            return false;
        } finally {
        }
    }

    @Override // com.applovin.shadow.okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadMessage(@NotNull ByteString bytes) throws IOException {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        this.listener.onMessage(this, bytes);
    }

    @Override // com.applovin.shadow.okhttp3.WebSocket
    public boolean send(@NotNull ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return send(bytes, 2);
    }

    private final synchronized boolean send(ByteString byteString, int i10) {
        if (!this.failed && !this.enqueuedClose) {
            if (this.queueSize + byteString.size() > MAX_QUEUE_SIZE) {
                close(1001, null);
                return false;
            }
            this.queueSize += byteString.size();
            this.messageAndCloseQueue.add(new Message(i10, byteString));
            runWriter();
            return true;
        }
        return false;
    }
}
