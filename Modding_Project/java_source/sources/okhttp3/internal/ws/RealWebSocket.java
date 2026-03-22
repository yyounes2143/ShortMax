package okhttp3.internal.ws;

import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
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
import okhttp3.Call;
import okhttp3.Protocol;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.ws.WebSocketReader;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealWebSocket.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRealWebSocket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealWebSocket.kt\nokhttp3/internal/ws/RealWebSocket\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n+ 4 Util.kt\nokhttp3/internal/Util\n*L\n1#1,654:1\n1#2:655\n84#3,4:656\n90#3,13:664\n608#4,4:660\n*S KotlinDebug\n*F\n+ 1 RealWebSocket.kt\nokhttp3/internal/ws/RealWebSocket\n*L\n269#1:656,4\n512#1:664,13\n457#1:660,4\n*E\n"})
/* loaded from: classes8.dex */
public final class RealWebSocket implements WebSocket, WebSocketReader.FrameCallback {
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    public static final Companion f64183y = new Companion(null);
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    private static final List<Protocol> f64184z = CollectionsKt.e(Protocol.HTTP_1_1);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final WebSocketListener f64185a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Random f64186b;

    /* renamed from: c  reason: collision with root package name */
    private final long f64187c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private WebSocketExtensions f64188d;

    /* renamed from: e  reason: collision with root package name */
    private long f64189e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final String f64190f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Call f64191g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Task f64192h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private WebSocketReader f64193i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private WebSocketWriter f64194j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private TaskQueue f64195k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f64196l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private Streams f64197m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final ArrayDeque<ByteString> f64198n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final ArrayDeque<Object> f64199o;

    /* renamed from: p  reason: collision with root package name */
    private long f64200p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f64201q;

    /* renamed from: r  reason: collision with root package name */
    private int f64202r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private String f64203s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f64204t;

    /* renamed from: u  reason: collision with root package name */
    private int f64205u;

    /* renamed from: v  reason: collision with root package name */
    private int f64206v;

    /* renamed from: w  reason: collision with root package name */
    private int f64207w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f64208x;

    /* compiled from: RealWebSocket.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Close {

        /* renamed from: a  reason: collision with root package name */
        private final int f64212a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final ByteString f64213b;

        /* renamed from: c  reason: collision with root package name */
        private final long f64214c;

        public Close(int i10, @Nullable ByteString byteString, long j10) {
            this.f64212a = i10;
            this.f64213b = byteString;
            this.f64214c = j10;
        }

        public final long a() {
            return this.f64214c;
        }

        public final int b() {
            return this.f64212a;
        }

        @Nullable
        public final ByteString c() {
            return this.f64213b;
        }
    }

    /* compiled from: RealWebSocket.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: RealWebSocket.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Message {

        /* renamed from: a  reason: collision with root package name */
        private final int f64215a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final ByteString f64216b;

        @NotNull
        public final ByteString a() {
            return this.f64216b;
        }

        public final int b() {
            return this.f64215a;
        }
    }

    /* compiled from: RealWebSocket.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static abstract class Streams implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f64217a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final BufferedSource f64218b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final BufferedSink f64219c;

        public Streams(boolean z10, @NotNull BufferedSource source, @NotNull BufferedSink sink) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(sink, "sink");
            this.f64217a = z10;
            this.f64218b = source;
            this.f64219c = sink;
        }

        public final boolean d() {
            return this.f64217a;
        }

        @NotNull
        public final BufferedSink k() {
            return this.f64219c;
        }

        @NotNull
        public final BufferedSource l() {
            return this.f64218b;
        }
    }

    /* compiled from: RealWebSocket.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private final class WriterTask extends Task {
        public WriterTask() {
            super(RealWebSocket.this.f64196l + " writer", false, 2, null);
        }

        @Override // okhttp3.internal.concurrent.Task
        public long f() {
            try {
                if (RealWebSocket.this.r()) {
                    return 0L;
                }
                return -1L;
            } catch (IOException e10) {
                RealWebSocket.this.l(e10, null);
                return -1L;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean o(WebSocketExtensions webSocketExtensions) {
        if (webSocketExtensions.f64229f || webSocketExtensions.f64225b != null) {
            return false;
        }
        if (webSocketExtensions.f64227d != null && !new IntRange(8, 15).i(webSocketExtensions.f64227d.intValue())) {
            return false;
        }
        return true;
    }

    private final void q() {
        if (Util.f63634h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        Task task = this.f64192h;
        if (task != null) {
            TaskQueue.j(this.f64195k, task, 0L, 2, null);
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public synchronized void a(@NotNull ByteString payload) {
        try {
            Intrinsics.checkNotNullParameter(payload, "payload");
            if (!this.f64204t && (!this.f64201q || !this.f64199o.isEmpty())) {
                this.f64198n.add(payload);
                q();
                this.f64206v++;
            }
        } finally {
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public synchronized void b(@NotNull ByteString payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        this.f64207w++;
        this.f64208x = false;
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void c(@NotNull ByteString bytes) throws IOException {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        this.f64185a.e(this, bytes);
    }

    public void h() {
        Call call = this.f64191g;
        Intrinsics.checkNotNull(call);
        call.cancel();
    }

    public final void i(@NotNull Response response, @Nullable Exchange exchange) throws IOException {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.o() == 101) {
            String t10 = Response.t(response, "Connection", null, 2, null);
            if (StringsKt.G("Upgrade", t10, true)) {
                String t11 = Response.t(response, "Upgrade", null, 2, null);
                if (StringsKt.G("websocket", t11, true)) {
                    String t12 = Response.t(response, "Sec-WebSocket-Accept", null, 2, null);
                    ByteString.Companion companion = ByteString.Companion;
                    String base64 = companion.encodeUtf8(this.f64190f + com.applovin.shadow.okhttp3.internal.ws.WebSocketProtocol.ACCEPT_MAGIC).sha1().base64();
                    if (Intrinsics.areEqual(base64, t12)) {
                        if (exchange != null) {
                            return;
                        }
                        throw new ProtocolException("Web Socket exchange missing: bad interceptor?");
                    }
                    throw new ProtocolException("Expected 'Sec-WebSocket-Accept' header value '" + base64 + "' but was '" + t12 + '\'');
                }
                throw new ProtocolException("Expected 'Upgrade' header value 'websocket' but was '" + t11 + '\'');
            }
            throw new ProtocolException("Expected 'Connection' header value 'Upgrade' but was '" + t10 + '\'');
        }
        throw new ProtocolException("Expected HTTP 101 response but was '" + response.o() + ' ' + response.w() + '\'');
    }

    public boolean j(int i10, @Nullable String str) {
        return k(i10, str, ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
    }

    public final synchronized boolean k(int i10, @Nullable String str, long j10) {
        ByteString byteString;
        try {
            WebSocketProtocol.f64230a.c(i10);
            if (str != null) {
                byteString = ByteString.Companion.encodeUtf8(str);
                if (byteString.size() > 123) {
                    throw new IllegalArgumentException(("reason.size() > 123: " + str).toString());
                }
            } else {
                byteString = null;
            }
            if (!this.f64204t && !this.f64201q) {
                this.f64201q = true;
                this.f64199o.add(new Close(i10, byteString, j10));
                q();
                return true;
            }
            return false;
        } finally {
        }
    }

    public final void l(@NotNull Exception e10, @Nullable Response response) {
        Intrinsics.checkNotNullParameter(e10, "e");
        synchronized (this) {
            if (this.f64204t) {
                return;
            }
            this.f64204t = true;
            Streams streams = this.f64197m;
            this.f64197m = null;
            WebSocketReader webSocketReader = this.f64193i;
            this.f64193i = null;
            WebSocketWriter webSocketWriter = this.f64194j;
            this.f64194j = null;
            this.f64195k.n();
            Unit unit = Unit.f60915a;
            try {
                this.f64185a.c(this, e10, response);
            } finally {
                if (streams != null) {
                    Util.m(streams);
                }
                if (webSocketReader != null) {
                    Util.m(webSocketReader);
                }
                if (webSocketWriter != null) {
                    Util.m(webSocketWriter);
                }
            }
        }
    }

    @NotNull
    public final WebSocketListener m() {
        return this.f64185a;
    }

    public final void n(@NotNull String name, @NotNull Streams streams) throws IOException {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(streams, "streams");
        WebSocketExtensions webSocketExtensions = this.f64188d;
        Intrinsics.checkNotNull(webSocketExtensions);
        synchronized (this) {
            try {
                this.f64196l = name;
                this.f64197m = streams;
                this.f64194j = new WebSocketWriter(streams.d(), streams.k(), this.f64186b, webSocketExtensions.f64224a, webSocketExtensions.a(streams.d()), this.f64189e);
                this.f64192h = new WriterTask();
                long j10 = this.f64187c;
                if (j10 != 0) {
                    final long nanos = TimeUnit.MILLISECONDS.toNanos(j10);
                    final String str = name + " ping";
                    this.f64195k.i(new Task(str) { // from class: okhttp3.internal.ws.RealWebSocket$initReaderAndWriter$lambda$3$$inlined$schedule$1
                        @Override // okhttp3.internal.concurrent.Task
                        public long f() {
                            this.s();
                            return nanos;
                        }
                    }, nanos);
                }
                if (!this.f64199o.isEmpty()) {
                    q();
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f64193i = new WebSocketReader(streams.d(), streams.l(), this, webSocketExtensions.f64224a, webSocketExtensions.a(!streams.d()));
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadClose(int i10, @NotNull String reason) {
        Streams streams;
        WebSocketReader webSocketReader;
        WebSocketWriter webSocketWriter;
        Intrinsics.checkNotNullParameter(reason, "reason");
        if (i10 != -1) {
            synchronized (this) {
                try {
                    if (this.f64202r == -1) {
                        this.f64202r = i10;
                        this.f64203s = reason;
                        streams = null;
                        if (this.f64201q && this.f64199o.isEmpty()) {
                            Streams streams2 = this.f64197m;
                            this.f64197m = null;
                            webSocketReader = this.f64193i;
                            this.f64193i = null;
                            webSocketWriter = this.f64194j;
                            this.f64194j = null;
                            this.f64195k.n();
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
                this.f64185a.b(this, i10, reason);
                if (streams != null) {
                    this.f64185a.a(this, i10, reason);
                }
                if (webSocketWriter != null) {
                    return;
                }
                return;
            } finally {
                if (streams != null) {
                    Util.m(streams);
                }
                if (webSocketReader != null) {
                    Util.m(webSocketReader);
                }
                if (webSocketWriter != null) {
                    Util.m(webSocketWriter);
                }
            }
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadMessage(@NotNull String text) throws IOException {
        Intrinsics.checkNotNullParameter(text, "text");
        this.f64185a.d(this, text);
    }

    public final void p() throws IOException {
        while (this.f64202r == -1) {
            WebSocketReader webSocketReader = this.f64193i;
            Intrinsics.checkNotNull(webSocketReader);
            webSocketReader.d();
        }
    }

    public final boolean r() throws IOException {
        String str;
        WebSocketReader webSocketReader;
        WebSocketWriter webSocketWriter;
        int i10;
        Streams streams;
        synchronized (this) {
            try {
                if (this.f64204t) {
                    return false;
                }
                WebSocketWriter webSocketWriter2 = this.f64194j;
                ByteString poll = this.f64198n.poll();
                Message message = null;
                if (poll == null) {
                    Object poll2 = this.f64199o.poll();
                    if (poll2 instanceof Close) {
                        i10 = this.f64202r;
                        str = this.f64203s;
                        if (i10 != -1) {
                            streams = this.f64197m;
                            this.f64197m = null;
                            webSocketReader = this.f64193i;
                            this.f64193i = null;
                            webSocketWriter = this.f64194j;
                            this.f64194j = null;
                            this.f64195k.n();
                        } else {
                            long a10 = ((Close) poll2).a();
                            final String str2 = this.f64196l + " cancel";
                            this.f64195k.i(new Task(str2, true) { // from class: okhttp3.internal.ws.RealWebSocket$writeOneFrame$lambda$8$$inlined$execute$default$1
                                @Override // okhttp3.internal.concurrent.Task
                                public long f() {
                                    this.h();
                                    return -1L;
                                }
                            }, TimeUnit.MILLISECONDS.toNanos(a10));
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
                        webSocketWriter2.g(poll);
                    } else if (message instanceof Message) {
                        Message message2 = message;
                        Intrinsics.checkNotNull(webSocketWriter2);
                        webSocketWriter2.c(message2.b(), message2.a());
                        synchronized (this) {
                            this.f64200p -= message2.a().size();
                        }
                    } else if (message instanceof Close) {
                        Close close = (Close) message;
                        Intrinsics.checkNotNull(webSocketWriter2);
                        webSocketWriter2.a(close.b(), close.c());
                        if (streams != null) {
                            WebSocketListener webSocketListener = this.f64185a;
                            Intrinsics.checkNotNull(str);
                            webSocketListener.a(this, i10, str);
                        }
                    } else {
                        throw new AssertionError();
                    }
                    return true;
                } finally {
                    if (streams != null) {
                        Util.m(streams);
                    }
                    if (webSocketReader != null) {
                        Util.m(webSocketReader);
                    }
                    if (webSocketWriter != null) {
                        Util.m(webSocketWriter);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void s() {
        int i10;
        synchronized (this) {
            try {
                if (this.f64204t) {
                    return;
                }
                WebSocketWriter webSocketWriter = this.f64194j;
                if (webSocketWriter == null) {
                    return;
                }
                if (this.f64208x) {
                    i10 = this.f64205u;
                } else {
                    i10 = -1;
                }
                this.f64205u++;
                this.f64208x = true;
                Unit unit = Unit.f60915a;
                if (i10 != -1) {
                    l(new SocketTimeoutException("sent ping but didn't receive pong within " + this.f64187c + "ms (after " + (i10 - 1) + " successful ping/pongs)"), null);
                    return;
                }
                try {
                    webSocketWriter.d(ByteString.EMPTY);
                } catch (IOException e10) {
                    l(e10, null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
