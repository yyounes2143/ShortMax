package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.Http2Reader;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Http2Connection.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n+ 2 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n+ 3 Util.kt\nokhttp3/internal/Util\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1006:1\n84#2,4:1007\n90#2,13:1014\n90#2,13:1027\n90#2,13:1069\n90#2,13:1082\n90#2,13:1095\n90#2,13:1108\n90#2,13:1121\n90#2,13:1134\n563#3:1011\n557#3:1013\n557#3:1040\n615#3,4:1041\n402#3,5:1045\n402#3,5:1053\n402#3,5:1059\n402#3,5:1064\n1#4:1012\n37#5,2:1050\n13309#6:1052\n13310#6:1058\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n*L\n152#1:1007,4\n340#1:1014,13\n361#1:1027,13\n506#1:1069,13\n554#1:1082,13\n893#1:1095,13\n911#1:1108,13\n938#1:1121,13\n952#1:1134,13\n183#1:1011\n319#1:1013\n402#1:1040\n446#1:1041,4\n448#1:1045,5\n461#1:1053,5\n467#1:1059,5\n472#1:1064,5\n455#1:1050,2\n460#1:1052\n460#1:1058\n*E\n"})
/* loaded from: classes8.dex */
public final class Http2Connection implements Closeable {
    @NotNull
    public static final Companion C = new Companion(null);
    @NotNull
    private static final Settings D;
    @NotNull
    private final ReaderRunnable A;
    @NotNull
    private final Set<Integer> B;

    /* renamed from: a */
    private final boolean f63951a;
    @NotNull

    /* renamed from: b */
    private final Listener f63952b;
    @NotNull

    /* renamed from: c */
    private final Map<Integer, Http2Stream> f63953c;
    @NotNull

    /* renamed from: d */
    private final String f63954d;

    /* renamed from: e */
    private int f63955e;

    /* renamed from: f */
    private int f63956f;

    /* renamed from: g */
    private boolean f63957g;
    @NotNull

    /* renamed from: h */
    private final TaskRunner f63958h;
    @NotNull

    /* renamed from: i */
    private final TaskQueue f63959i;
    @NotNull

    /* renamed from: j */
    private final TaskQueue f63960j;
    @NotNull

    /* renamed from: k */
    private final TaskQueue f63961k;
    @NotNull

    /* renamed from: l */
    private final PushObserver f63962l;

    /* renamed from: m */
    private long f63963m;

    /* renamed from: n */
    private long f63964n;

    /* renamed from: o */
    private long f63965o;

    /* renamed from: p */
    private long f63966p;

    /* renamed from: q */
    private long f63967q;

    /* renamed from: r */
    private long f63968r;
    @NotNull

    /* renamed from: s */
    private final Settings f63969s;
    @NotNull

    /* renamed from: t */
    private Settings f63970t;

    /* renamed from: u */
    private long f63971u;

    /* renamed from: v */
    private long f63972v;

    /* renamed from: w */
    private long f63973w;

    /* renamed from: x */
    private long f63974x;
    @NotNull

    /* renamed from: y */
    private final Socket f63975y;
    @NotNull

    /* renamed from: z */
    private final Http2Writer f63976z;

    /* compiled from: Http2Connection.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Builder {

        /* renamed from: a */
        private boolean f64011a;
        @NotNull

        /* renamed from: b */
        private final TaskRunner f64012b;

        /* renamed from: c */
        public Socket f64013c;

        /* renamed from: d */
        public String f64014d;

        /* renamed from: e */
        public BufferedSource f64015e;

        /* renamed from: f */
        public BufferedSink f64016f;
        @NotNull

        /* renamed from: g */
        private Listener f64017g;
        @NotNull

        /* renamed from: h */
        private PushObserver f64018h;

        /* renamed from: i */
        private int f64019i;

        public Builder(boolean z10, @NotNull TaskRunner taskRunner) {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            this.f64011a = z10;
            this.f64012b = taskRunner;
            this.f64017g = Listener.f64021b;
            this.f64018h = PushObserver.f64089b;
        }

        @NotNull
        public final Http2Connection a() {
            return new Http2Connection(this);
        }

        public final boolean b() {
            return this.f64011a;
        }

        @NotNull
        public final String c() {
            String str = this.f64014d;
            if (str != null) {
                return str;
            }
            Intrinsics.throwUninitializedPropertyAccessException("connectionName");
            return null;
        }

        @NotNull
        public final Listener d() {
            return this.f64017g;
        }

        public final int e() {
            return this.f64019i;
        }

        @NotNull
        public final PushObserver f() {
            return this.f64018h;
        }

        @NotNull
        public final BufferedSink g() {
            BufferedSink bufferedSink = this.f64016f;
            if (bufferedSink != null) {
                return bufferedSink;
            }
            Intrinsics.throwUninitializedPropertyAccessException("sink");
            return null;
        }

        @NotNull
        public final Socket h() {
            Socket socket = this.f64013c;
            if (socket != null) {
                return socket;
            }
            Intrinsics.throwUninitializedPropertyAccessException("socket");
            return null;
        }

        @NotNull
        public final BufferedSource i() {
            BufferedSource bufferedSource = this.f64015e;
            if (bufferedSource != null) {
                return bufferedSource;
            }
            Intrinsics.throwUninitializedPropertyAccessException("source");
            return null;
        }

        @NotNull
        public final TaskRunner j() {
            return this.f64012b;
        }

        @NotNull
        public final Builder k(@NotNull Listener listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.f64017g = listener;
            return this;
        }

        @NotNull
        public final Builder l(int i10) {
            this.f64019i = i10;
            return this;
        }

        public final void m(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.f64014d = str;
        }

        public final void n(@NotNull BufferedSink bufferedSink) {
            Intrinsics.checkNotNullParameter(bufferedSink, "<set-?>");
            this.f64016f = bufferedSink;
        }

        public final void o(@NotNull Socket socket) {
            Intrinsics.checkNotNullParameter(socket, "<set-?>");
            this.f64013c = socket;
        }

        public final void p(@NotNull BufferedSource bufferedSource) {
            Intrinsics.checkNotNullParameter(bufferedSource, "<set-?>");
            this.f64015e = bufferedSource;
        }

        @NotNull
        public final Builder q(@NotNull Socket socket, @NotNull String peerName, @NotNull BufferedSource source, @NotNull BufferedSink sink) throws IOException {
            String str;
            Intrinsics.checkNotNullParameter(socket, "socket");
            Intrinsics.checkNotNullParameter(peerName, "peerName");
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(sink, "sink");
            o(socket);
            if (this.f64011a) {
                str = Util.f63635i + ' ' + peerName;
            } else {
                str = "MockWebServer " + peerName;
            }
            m(str);
            p(source);
            n(sink);
            return this;
        }
    }

    /* compiled from: Http2Connection.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Settings a() {
            return Http2Connection.D;
        }

        private Companion() {
        }
    }

    /* compiled from: Http2Connection.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static abstract class Listener {
        @NotNull

        /* renamed from: a */
        public static final Companion f64020a = new Companion(null);
        @NotNull

        /* renamed from: b */
        public static final Listener f64021b = new Listener() { // from class: okhttp3.internal.http2.Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1
            @Override // okhttp3.internal.http2.Http2Connection.Listener
            public void b(@NotNull Http2Stream stream) throws IOException {
                Intrinsics.checkNotNullParameter(stream, "stream");
                stream.d(ErrorCode.REFUSED_STREAM, null);
            }
        };

        /* compiled from: Http2Connection.kt */
        @Metadata
        /* loaded from: classes8.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        public void a(@NotNull Http2Connection connection, @NotNull Settings settings) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            Intrinsics.checkNotNullParameter(settings, "settings");
        }

        public abstract void b(@NotNull Http2Stream http2Stream) throws IOException;
    }

    static {
        Settings settings = new Settings();
        settings.h(7, 65535);
        settings.h(5, 16384);
        D = settings;
    }

    public Http2Connection(@NotNull Builder builder) {
        int i10;
        Intrinsics.checkNotNullParameter(builder, "builder");
        boolean b10 = builder.b();
        this.f63951a = b10;
        this.f63952b = builder.d();
        this.f63953c = new LinkedHashMap();
        String c10 = builder.c();
        this.f63954d = c10;
        if (builder.b()) {
            i10 = 3;
        } else {
            i10 = 2;
        }
        this.f63956f = i10;
        TaskRunner j10 = builder.j();
        this.f63958h = j10;
        TaskQueue i11 = j10.i();
        this.f63959i = i11;
        this.f63960j = j10.i();
        this.f63961k = j10.i();
        this.f63962l = builder.f();
        Settings settings = new Settings();
        if (builder.b()) {
            settings.h(7, 16777216);
        }
        this.f63969s = settings;
        Settings settings2 = D;
        this.f63970t = settings2;
        this.f63974x = settings2.c();
        this.f63975y = builder.h();
        this.f63976z = new Http2Writer(builder.g(), b10);
        this.A = new ReaderRunnable(this, new Http2Reader(builder.i(), b10));
        this.B = new LinkedHashSet();
        if (builder.e() != 0) {
            final long nanos = TimeUnit.MILLISECONDS.toNanos(builder.e());
            i11.i(new Task(c10 + " ping") { // from class: okhttp3.internal.http2.Http2Connection$special$$inlined$schedule$1
                @Override // okhttp3.internal.concurrent.Task
                public long f() {
                    long j11;
                    long j12;
                    boolean z10;
                    synchronized (this) {
                        long j13 = this.f63964n;
                        j11 = this.f63963m;
                        if (j13 >= j11) {
                            j12 = this.f63963m;
                            this.f63963m = j12 + 1;
                            z10 = false;
                        } else {
                            z10 = true;
                        }
                    }
                    if (z10) {
                        this.F(null);
                        return -1L;
                    }
                    this.F0(false, 1, 0);
                    return nanos;
                }
            }, nanos);
        }
    }

    public static /* synthetic */ void A0(Http2Connection http2Connection, boolean z10, TaskRunner taskRunner, int i10, Object obj) throws IOException {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        if ((i10 & 2) != 0) {
            taskRunner = TaskRunner.f63748i;
        }
        http2Connection.z0(z10, taskRunner);
    }

    public final void F(IOException iOException) {
        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
        x(errorCode, errorCode, iOException);
    }

    private final Http2Stream g0(int i10, List<Header> list, boolean z10) throws IOException {
        int i11;
        Http2Stream http2Stream;
        boolean z11 = true;
        boolean z12 = !z10;
        synchronized (this.f63976z) {
            try {
                synchronized (this) {
                    if (this.f63956f > 1073741823) {
                        y0(ErrorCode.REFUSED_STREAM);
                    }
                    if (!this.f63957g) {
                        i11 = this.f63956f;
                        this.f63956f = i11 + 2;
                        http2Stream = new Http2Stream(i11, this, z12, false, null);
                        if (z10 && this.f63973w < this.f63974x && http2Stream.r() < http2Stream.q()) {
                            z11 = false;
                        }
                        if (http2Stream.u()) {
                            this.f63953c.put(Integer.valueOf(i11), http2Stream);
                        }
                        Unit unit = Unit.f60915a;
                    } else {
                        throw new ConnectionShutdownException();
                    }
                }
                if (i10 == 0) {
                    this.f63976z.m(z12, i11, list);
                } else if (!this.f63951a) {
                    this.f63976z.q(i10, i11, list);
                } else {
                    throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z11) {
            this.f63976z.flush();
        }
        return http2Stream;
    }

    public final synchronized void C0(long j10) {
        long j11 = this.f63971u + j10;
        this.f63971u = j11;
        long j12 = j11 - this.f63972v;
        if (j12 >= this.f63969s.c() / 2) {
            I0(0, j12);
            this.f63972v += j12;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0038, code lost:
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x003a, code lost:
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r6 - r4), r8.f63976z.o());
        r6 = r2;
        r8.f63973w += r6;
        r4 = kotlin.Unit.f60915a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void D0(int r9, boolean r10, @org.jetbrains.annotations.Nullable okio.Buffer r11, long r12) throws java.io.IOException {
        /*
            r8 = this;
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto Ld
            okhttp3.internal.http2.Http2Writer r12 = r8.f63976z
            r12.g(r10, r9, r11, r3)
            return
        Ld:
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 <= 0) goto L71
            monitor-enter(r8)
        L12:
            long r4 = r8.f63973w     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            long r6 = r8.f63974x     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 < 0) goto L39
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r2 = r8.f63953c     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            boolean r2 = r2.containsKey(r4)     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            if (r2 == 0) goto L31
            java.lang.String r2 = "null cannot be cast to non-null type java.lang.Object"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8, r2)     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            r8.wait()     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            goto L12
        L2f:
            r9 = move-exception
            goto L6f
        L31:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
            throw r9     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L62
        L39:
            long r6 = r6 - r4
            long r4 = java.lang.Math.min(r12, r6)     // Catch: java.lang.Throwable -> L2f
            int r2 = (int) r4     // Catch: java.lang.Throwable -> L2f
            okhttp3.internal.http2.Http2Writer r4 = r8.f63976z     // Catch: java.lang.Throwable -> L2f
            int r4 = r4.o()     // Catch: java.lang.Throwable -> L2f
            int r2 = java.lang.Math.min(r2, r4)     // Catch: java.lang.Throwable -> L2f
            long r4 = r8.f63973w     // Catch: java.lang.Throwable -> L2f
            long r6 = (long) r2     // Catch: java.lang.Throwable -> L2f
            long r4 = r4 + r6
            r8.f63973w = r4     // Catch: java.lang.Throwable -> L2f
            kotlin.Unit r4 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L2f
            monitor-exit(r8)
            long r12 = r12 - r6
            okhttp3.internal.http2.Http2Writer r4 = r8.f63976z
            if (r10 == 0) goto L5d
            int r5 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r5 != 0) goto L5d
            r5 = 1
            goto L5e
        L5d:
            r5 = r3
        L5e:
            r4.g(r5, r9, r11, r2)
            goto Ld
        L62:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L2f
            r9.interrupt()     // Catch: java.lang.Throwable -> L2f
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L2f
            r9.<init>()     // Catch: java.lang.Throwable -> L2f
            throw r9     // Catch: java.lang.Throwable -> L2f
        L6f:
            monitor-exit(r8)
            throw r9
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.D0(int, boolean, okio.Buffer, long):void");
    }

    public final void E0(int i10, boolean z10, @NotNull List<Header> alternating) throws IOException {
        Intrinsics.checkNotNullParameter(alternating, "alternating");
        this.f63976z.m(z10, i10, alternating);
    }

    public final void F0(boolean z10, int i10, int i11) {
        try {
            this.f63976z.p(z10, i10, i11);
        } catch (IOException e10) {
            F(e10);
        }
    }

    public final void G0(int i10, @NotNull ErrorCode statusCode) throws IOException {
        Intrinsics.checkNotNullParameter(statusCode, "statusCode");
        this.f63976z.r(i10, statusCode);
    }

    public final void H0(final int i10, @NotNull final ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        TaskQueue taskQueue = this.f63959i;
        taskQueue.i(new Task(this.f63954d + '[' + i10 + "] writeSynReset", true) { // from class: okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$default$1
            @Override // okhttp3.internal.concurrent.Task
            public long f() {
                try {
                    this.G0(i10, errorCode);
                    return -1L;
                } catch (IOException e10) {
                    this.F(e10);
                    return -1L;
                }
            }
        }, 0L);
    }

    public final void I0(final int i10, final long j10) {
        TaskQueue taskQueue = this.f63959i;
        taskQueue.i(new Task(this.f63954d + '[' + i10 + "] windowUpdate", true) { // from class: okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1
            @Override // okhttp3.internal.concurrent.Task
            public long f() {
                try {
                    this.e0().t(i10, j10);
                    return -1L;
                } catch (IOException e10) {
                    this.F(e10);
                    return -1L;
                }
            }
        }, 0L);
    }

    public final boolean P() {
        return this.f63951a;
    }

    @NotNull
    public final String R() {
        return this.f63954d;
    }

    public final int T() {
        return this.f63955e;
    }

    @NotNull
    public final Listener W() {
        return this.f63952b;
    }

    public final int Y() {
        return this.f63956f;
    }

    @NotNull
    public final Settings Z() {
        return this.f63969s;
    }

    @NotNull
    public final Settings a0() {
        return this.f63970t;
    }

    @Nullable
    public final synchronized Http2Stream b0(int i10) {
        return this.f63953c.get(Integer.valueOf(i10));
    }

    @NotNull
    public final Map<Integer, Http2Stream> c0() {
        return this.f63953c;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        x(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    public final long d0() {
        return this.f63974x;
    }

    @NotNull
    public final Http2Writer e0() {
        return this.f63976z;
    }

    public final synchronized boolean f0(long j10) {
        if (this.f63957g) {
            return false;
        }
        if (this.f63966p < this.f63965o) {
            if (j10 >= this.f63968r) {
                return false;
            }
        }
        return true;
    }

    public final void flush() throws IOException {
        this.f63976z.flush();
    }

    @NotNull
    public final Http2Stream h0(@NotNull List<Header> requestHeaders, boolean z10) throws IOException {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        return g0(0, requestHeaders, z10);
    }

    public final void i0(final int i10, @NotNull BufferedSource source, final int i11, final boolean z10) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        final Buffer buffer = new Buffer();
        long j10 = i11;
        source.require(j10);
        source.read(buffer, j10);
        this.f63960j.i(new Task(this.f63954d + '[' + i10 + "] onData", true) { // from class: okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$default$1
            @Override // okhttp3.internal.concurrent.Task
            public long f() {
                PushObserver pushObserver;
                Set set;
                try {
                    pushObserver = this.f63962l;
                    boolean a10 = pushObserver.a(i10, buffer, i11, z10);
                    if (a10) {
                        this.e0().r(i10, ErrorCode.CANCEL);
                    }
                    if (a10 || z10) {
                        synchronized (this) {
                            set = this.B;
                            set.remove(Integer.valueOf(i10));
                        }
                        return -1L;
                    }
                    return -1L;
                } catch (IOException unused) {
                    return -1L;
                }
            }
        }, 0L);
    }

    public final void j0(final int i10, @NotNull final List<Header> requestHeaders, final boolean z10) {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        TaskQueue taskQueue = this.f63960j;
        taskQueue.i(new Task(this.f63954d + '[' + i10 + "] onHeaders", true) { // from class: okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$default$1
            @Override // okhttp3.internal.concurrent.Task
            public long f() {
                PushObserver pushObserver;
                Set set;
                pushObserver = this.f63962l;
                boolean onHeaders = pushObserver.onHeaders(i10, requestHeaders, z10);
                if (onHeaders) {
                    try {
                        this.e0().r(i10, ErrorCode.CANCEL);
                    } catch (IOException unused) {
                        return -1L;
                    }
                }
                if (onHeaders || z10) {
                    synchronized (this) {
                        set = this.B;
                        set.remove(Integer.valueOf(i10));
                    }
                    return -1L;
                }
                return -1L;
            }
        }, 0L);
    }

    public final void l0(final int i10, @NotNull final List<Header> requestHeaders) {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        synchronized (this) {
            if (this.B.contains(Integer.valueOf(i10))) {
                H0(i10, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.B.add(Integer.valueOf(i10));
            TaskQueue taskQueue = this.f63960j;
            taskQueue.i(new Task(this.f63954d + '[' + i10 + "] onRequest", true) { // from class: okhttp3.internal.http2.Http2Connection$pushRequestLater$$inlined$execute$default$1
                @Override // okhttp3.internal.concurrent.Task
                public long f() {
                    PushObserver pushObserver;
                    Set set;
                    pushObserver = this.f63962l;
                    if (pushObserver.onRequest(i10, requestHeaders)) {
                        try {
                            this.e0().r(i10, ErrorCode.CANCEL);
                            synchronized (this) {
                                set = this.B;
                                set.remove(Integer.valueOf(i10));
                            }
                            return -1L;
                        } catch (IOException unused) {
                            return -1L;
                        }
                    }
                    return -1L;
                }
            }, 0L);
        }
    }

    public final void m0(final int i10, @NotNull final ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        TaskQueue taskQueue = this.f63960j;
        taskQueue.i(new Task(this.f63954d + '[' + i10 + "] onReset", true) { // from class: okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$default$1
            @Override // okhttp3.internal.concurrent.Task
            public long f() {
                PushObserver pushObserver;
                Set set;
                pushObserver = this.f63962l;
                pushObserver.b(i10, errorCode);
                synchronized (this) {
                    set = this.B;
                    set.remove(Integer.valueOf(i10));
                    Unit unit = Unit.f60915a;
                }
                return -1L;
            }
        }, 0L);
    }

    public final boolean n0(int i10) {
        if (i10 != 0 && (i10 & 1) == 0) {
            return true;
        }
        return false;
    }

    @Nullable
    public final synchronized Http2Stream o0(int i10) {
        Http2Stream remove;
        remove = this.f63953c.remove(Integer.valueOf(i10));
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
        return remove;
    }

    public final void s0() {
        synchronized (this) {
            long j10 = this.f63966p;
            long j11 = this.f63965o;
            if (j10 < j11) {
                return;
            }
            this.f63965o = j11 + 1;
            this.f63968r = System.nanoTime() + ((long) com.applovin.shadow.okhttp3.internal.http2.Http2Connection.DEGRADED_PONG_TIMEOUT_NS);
            Unit unit = Unit.f60915a;
            TaskQueue taskQueue = this.f63959i;
            taskQueue.i(new Task(this.f63954d + " ping", true) { // from class: okhttp3.internal.http2.Http2Connection$sendDegradedPingLater$$inlined$execute$default$1
                @Override // okhttp3.internal.concurrent.Task
                public long f() {
                    this.F0(false, 2, 0);
                    return -1L;
                }
            }, 0L);
        }
    }

    public final void t0(int i10) {
        this.f63955e = i10;
    }

    public final void w0(@NotNull Settings settings) {
        Intrinsics.checkNotNullParameter(settings, "<set-?>");
        this.f63970t = settings;
    }

    public final void x(@NotNull ErrorCode connectionCode, @NotNull ErrorCode streamCode, @Nullable IOException iOException) {
        int i10;
        Object[] objArr;
        Intrinsics.checkNotNullParameter(connectionCode, "connectionCode");
        Intrinsics.checkNotNullParameter(streamCode, "streamCode");
        if (Util.f63634h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        try {
            y0(connectionCode);
        } catch (IOException unused) {
        }
        synchronized (this) {
            try {
                if (!this.f63953c.isEmpty()) {
                    objArr = this.f63953c.values().toArray(new Http2Stream[0]);
                    this.f63953c.clear();
                } else {
                    objArr = null;
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Http2Stream[] http2StreamArr = (Http2Stream[]) objArr;
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.d(streamCode, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.f63976z.close();
        } catch (IOException unused3) {
        }
        try {
            this.f63975y.close();
        } catch (IOException unused4) {
        }
        this.f63959i.n();
        this.f63960j.n();
        this.f63961k.n();
    }

    public final void y0(@NotNull ErrorCode statusCode) throws IOException {
        Intrinsics.checkNotNullParameter(statusCode, "statusCode");
        synchronized (this.f63976z) {
            Ref.IntRef intRef = new Ref.IntRef();
            synchronized (this) {
                if (this.f63957g) {
                    return;
                }
                this.f63957g = true;
                int i10 = this.f63955e;
                intRef.element = i10;
                Unit unit = Unit.f60915a;
                this.f63976z.l(i10, statusCode, Util.f63627a);
            }
        }
    }

    public final void z0(boolean z10, @NotNull TaskRunner taskRunner) throws IOException {
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        if (z10) {
            this.f63976z.d();
            this.f63976z.s(this.f63969s);
            int c10 = this.f63969s.c();
            if (c10 != 65535) {
                this.f63976z.t(0, c10 - 65535);
            }
        }
        TaskQueue i10 = taskRunner.i();
        String str = this.f63954d;
        final ReaderRunnable readerRunnable = this.A;
        i10.i(new Task(str, true) { // from class: okhttp3.internal.concurrent.TaskQueue$execute$1
            @Override // okhttp3.internal.concurrent.Task
            public long f() {
                readerRunnable.invoke();
                return -1L;
            }
        }, 0L);
    }

    /* compiled from: Http2Connection.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n+ 2 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Util.kt\nokhttp3/internal/Util\n*L\n1#1,1006:1\n90#2,13:1007\n90#2,13:1020\n90#2,13:1035\n90#2,13:1049\n37#3,2:1033\n37#3,2:1062\n563#4:1048\n563#4:1064\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n*L\n687#1:1007,13\n715#1:1020,13\n758#1:1035,13\n806#1:1049,13\n753#1:1033,2\n824#1:1062,2\n797#1:1048\n841#1:1064\n*E\n"})
    /* loaded from: classes8.dex */
    public final class ReaderRunnable implements Http2Reader.Handler, Function0<Unit> {
        @NotNull

        /* renamed from: a */
        private final Http2Reader f64022a;

        /* renamed from: b */
        final /* synthetic */ Http2Connection f64023b;

        public ReaderRunnable(@NotNull Http2Connection http2Connection, Http2Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.f64023b = http2Connection;
            this.f64022a = reader;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void a(int i10, @NotNull ErrorCode errorCode) {
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            if (this.f64023b.n0(i10)) {
                this.f64023b.m0(i10, errorCode);
                return;
            }
            Http2Stream o02 = this.f64023b.o0(i10);
            if (o02 != null) {
                o02.y(errorCode);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void b(int i10, @NotNull ErrorCode errorCode, @NotNull ByteString debugData) {
            int i11;
            Object[] array;
            Http2Stream[] http2StreamArr;
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            Intrinsics.checkNotNullParameter(debugData, "debugData");
            debugData.size();
            Http2Connection http2Connection = this.f64023b;
            synchronized (http2Connection) {
                array = http2Connection.c0().values().toArray(new Http2Stream[0]);
                http2Connection.f63957g = true;
                Unit unit = Unit.f60915a;
            }
            for (Http2Stream http2Stream : (Http2Stream[]) array) {
                if (http2Stream.j() > i10 && http2Stream.t()) {
                    http2Stream.y(ErrorCode.REFUSED_STREAM);
                    this.f64023b.o0(http2Stream.j());
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void c(final boolean z10, @NotNull final Settings settings) {
            Intrinsics.checkNotNullParameter(settings, "settings");
            TaskQueue taskQueue = this.f64023b.f63959i;
            taskQueue.i(new Task(this.f64023b.R() + " applyAndAckSettings", true) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1
                @Override // okhttp3.internal.concurrent.Task
                public long f() {
                    this.e(z10, settings);
                    return -1L;
                }
            }, 0L);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void d(boolean z10, int i10, @NotNull BufferedSource source, int i11) throws IOException {
            Intrinsics.checkNotNullParameter(source, "source");
            if (this.f64023b.n0(i10)) {
                this.f64023b.i0(i10, source, i11, z10);
                return;
            }
            Http2Stream b02 = this.f64023b.b0(i10);
            if (b02 == null) {
                this.f64023b.H0(i10, ErrorCode.PROTOCOL_ERROR);
                long j10 = i11;
                this.f64023b.C0(j10);
                source.skip(j10);
                return;
            }
            b02.w(source, i11);
            if (z10) {
                b02.x(Util.f63628b, true);
            }
        }

        /* JADX WARN: Type inference failed for: r13v1 */
        /* JADX WARN: Type inference failed for: r13v2, types: [T, okhttp3.internal.http2.Settings] */
        /* JADX WARN: Type inference failed for: r13v3 */
        public final void e(boolean z10, @NotNull Settings settings) {
            ?? r13;
            long c10;
            int i10;
            Http2Stream[] http2StreamArr;
            Intrinsics.checkNotNullParameter(settings, "settings");
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            Http2Writer e02 = this.f64023b.e0();
            final Http2Connection http2Connection = this.f64023b;
            synchronized (e02) {
                synchronized (http2Connection) {
                    Settings a02 = http2Connection.a0();
                    if (z10) {
                        r13 = settings;
                    } else {
                        Settings settings2 = new Settings();
                        settings2.g(a02);
                        settings2.g(settings);
                        r13 = settings2;
                    }
                    objectRef.element = r13;
                    c10 = r13.c() - a02.c();
                    if (c10 != 0 && !http2Connection.c0().isEmpty()) {
                        http2StreamArr = (Http2Stream[]) http2Connection.c0().values().toArray(new Http2Stream[0]);
                        http2Connection.w0((Settings) objectRef.element);
                        http2Connection.f63961k.i(new Task(http2Connection.R() + " onSettings", true) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$applyAndAckSettings$lambda$7$lambda$6$$inlined$execute$default$1
                            @Override // okhttp3.internal.concurrent.Task
                            public long f() {
                                http2Connection.W().a(http2Connection, (Settings) objectRef.element);
                                return -1L;
                            }
                        }, 0L);
                        Unit unit = Unit.f60915a;
                    }
                    http2StreamArr = null;
                    http2Connection.w0((Settings) objectRef.element);
                    http2Connection.f63961k.i(new Task(http2Connection.R() + " onSettings", true) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$applyAndAckSettings$lambda$7$lambda$6$$inlined$execute$default$1
                        @Override // okhttp3.internal.concurrent.Task
                        public long f() {
                            http2Connection.W().a(http2Connection, (Settings) objectRef.element);
                            return -1L;
                        }
                    }, 0L);
                    Unit unit2 = Unit.f60915a;
                }
                try {
                    http2Connection.e0().a((Settings) objectRef.element);
                } catch (IOException e10) {
                    http2Connection.F(e10);
                }
                Unit unit3 = Unit.f60915a;
            }
            if (http2StreamArr != null) {
                for (Http2Stream http2Stream : http2StreamArr) {
                    synchronized (http2Stream) {
                        http2Stream.a(c10);
                        Unit unit4 = Unit.f60915a;
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [okhttp3.internal.http2.ErrorCode] */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v5, types: [java.io.Closeable, okhttp3.internal.http2.Http2Reader] */
        public void f() {
            ErrorCode errorCode;
            ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
            IOException e10 = null;
            try {
                try {
                    this.f64022a.i(this);
                    do {
                    } while (this.f64022a.g(false, this));
                    ErrorCode errorCode3 = ErrorCode.NO_ERROR;
                    try {
                        this.f64023b.x(errorCode3, ErrorCode.CANCEL, null);
                        errorCode = errorCode3;
                    } catch (IOException e11) {
                        e10 = e11;
                        ErrorCode errorCode4 = ErrorCode.PROTOCOL_ERROR;
                        Http2Connection http2Connection = this.f64023b;
                        http2Connection.x(errorCode4, errorCode4, e10);
                        errorCode = http2Connection;
                        errorCode2 = this.f64022a;
                        Util.m(errorCode2);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    this.f64023b.x(errorCode, errorCode2, e10);
                    Util.m(this.f64022a);
                    throw th;
                }
            } catch (IOException e12) {
                e10 = e12;
            } catch (Throwable th3) {
                th = th3;
                errorCode = errorCode2;
                this.f64023b.x(errorCode, errorCode2, e10);
                Util.m(this.f64022a);
                throw th;
            }
            errorCode2 = this.f64022a;
            Util.m(errorCode2);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void headers(boolean z10, int i10, int i11, @NotNull List<Header> headerBlock) {
            Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
            if (this.f64023b.n0(i10)) {
                this.f64023b.j0(i10, headerBlock, z10);
                return;
            }
            final Http2Connection http2Connection = this.f64023b;
            synchronized (http2Connection) {
                Http2Stream b02 = http2Connection.b0(i10);
                if (b02 == null) {
                    if (http2Connection.f63957g) {
                        return;
                    }
                    if (i10 <= http2Connection.T()) {
                        return;
                    }
                    if (i10 % 2 == http2Connection.Y() % 2) {
                        return;
                    }
                    final Http2Stream http2Stream = new Http2Stream(i10, http2Connection, false, z10, Util.Q(headerBlock));
                    http2Connection.t0(i10);
                    http2Connection.c0().put(Integer.valueOf(i10), http2Stream);
                    TaskQueue i12 = http2Connection.f63958h.i();
                    i12.i(new Task(http2Connection.R() + '[' + i10 + "] onStream", true) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1
                        @Override // okhttp3.internal.concurrent.Task
                        public long f() {
                            try {
                                http2Connection.W().b(http2Stream);
                                return -1L;
                            } catch (IOException e10) {
                                Platform g10 = Platform.f64128a.g();
                                g10.k("Http2Connection.Listener failure for " + http2Connection.R(), 4, e10);
                                try {
                                    http2Stream.d(ErrorCode.PROTOCOL_ERROR, e10);
                                    return -1L;
                                } catch (IOException unused) {
                                    return -1L;
                                }
                            }
                        }
                    }, 0L);
                    return;
                }
                Unit unit = Unit.f60915a;
                b02.x(Util.Q(headerBlock), z10);
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            f();
            return Unit.f60915a;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ping(boolean z10, final int i10, final int i11) {
            if (!z10) {
                final Http2Connection http2Connection = this.f64023b;
                this.f64023b.f63959i.i(new Task(this.f64023b.R() + " ping", true) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1
                    @Override // okhttp3.internal.concurrent.Task
                    public long f() {
                        http2Connection.F0(true, i10, i11);
                        return -1L;
                    }
                }, 0L);
                return;
            }
            Http2Connection http2Connection2 = this.f64023b;
            synchronized (http2Connection2) {
                try {
                    if (i10 == 1) {
                        http2Connection2.f63964n++;
                    } else if (i10 == 2) {
                        http2Connection2.f63966p++;
                    } else {
                        if (i10 == 3) {
                            http2Connection2.f63967q++;
                            Intrinsics.checkNotNull(http2Connection2, "null cannot be cast to non-null type java.lang.Object");
                            http2Connection2.notifyAll();
                        }
                        Unit unit = Unit.f60915a;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void pushPromise(int i10, int i11, @NotNull List<Header> requestHeaders) {
            Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
            this.f64023b.l0(i11, requestHeaders);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void windowUpdate(int i10, long j10) {
            if (i10 == 0) {
                Http2Connection http2Connection = this.f64023b;
                synchronized (http2Connection) {
                    http2Connection.f63974x = http2Connection.d0() + j10;
                    Intrinsics.checkNotNull(http2Connection, "null cannot be cast to non-null type java.lang.Object");
                    http2Connection.notifyAll();
                    Unit unit = Unit.f60915a;
                }
                return;
            }
            Http2Stream b02 = this.f64023b.b0(i10);
            if (b02 != null) {
                synchronized (b02) {
                    b02.a(j10);
                    Unit unit2 = Unit.f60915a;
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ackSettings() {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void priority(int i10, int i11, int i12, boolean z10) {
        }
    }
}
