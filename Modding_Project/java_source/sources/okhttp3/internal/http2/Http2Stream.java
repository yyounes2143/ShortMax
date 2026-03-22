package okhttp3.internal.http2;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Headers;
import okhttp3.internal.Util;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Http2Stream.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttp2Stream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokhttp3/internal/Util\n*L\n1#1,688:1\n1#2:689\n615#3,4:690\n615#3,4:694\n563#3:698\n615#3,4:699\n615#3,4:703\n563#3:707\n563#3:708\n615#3,4:709\n563#3:713\n557#3:714\n*S KotlinDebug\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream\n*L\n176#1:690,4\n255#1:694,4\n263#1:698\n274#1:699,4\n281#1:703,4\n295#1:707\n305#1:708\n491#1:709,4\n637#1:713\n657#1:714\n*E\n"})
/* loaded from: classes8.dex */
public final class Http2Stream {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final Companion f64045o = new Companion(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f64046a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Http2Connection f64047b;

    /* renamed from: c  reason: collision with root package name */
    private long f64048c;

    /* renamed from: d  reason: collision with root package name */
    private long f64049d;

    /* renamed from: e  reason: collision with root package name */
    private long f64050e;

    /* renamed from: f  reason: collision with root package name */
    private long f64051f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final ArrayDeque<Headers> f64052g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f64053h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final FramingSource f64054i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final FramingSink f64055j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final StreamTimeout f64056k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final StreamTimeout f64057l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private ErrorCode f64058m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private IOException f64059n;

    /* compiled from: Http2Stream.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: Http2Stream.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHttp2Stream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSink\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,688:1\n615#2,4:689\n615#2,4:693\n615#2,4:697\n*S KotlinDebug\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSink\n*L\n528#1:689,4\n573#1:693,4\n589#1:697,4\n*E\n"})
    /* loaded from: classes8.dex */
    public final class FramingSink implements Sink {

        /* renamed from: a  reason: collision with root package name */
        private boolean f64060a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Buffer f64061b = new Buffer();
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Headers f64062c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f64063d;

        public FramingSink(boolean z10) {
            this.f64060a = z10;
        }

        private final void a(boolean z10) throws IOException {
            long min;
            boolean z11;
            boolean z12;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                try {
                    http2Stream.s().enter();
                    while (http2Stream.r() >= http2Stream.q() && !this.f64060a && !this.f64063d && http2Stream.h() == null) {
                        http2Stream.D();
                    }
                    http2Stream.s().a();
                    http2Stream.c();
                    min = Math.min(http2Stream.q() - http2Stream.r(), this.f64061b.size());
                    http2Stream.B(http2Stream.r() + min);
                    if (z10 && min == this.f64061b.size()) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    z12 = z11;
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            Http2Stream.this.s().enter();
            try {
                Http2Stream.this.g().D0(Http2Stream.this.j(), z12, this.f64061b, min);
            } finally {
                Http2Stream.this.s().a();
            }
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            boolean z10;
            boolean z11;
            Http2Stream http2Stream = Http2Stream.this;
            if (Util.f63634h && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + http2Stream);
            }
            Http2Stream http2Stream2 = Http2Stream.this;
            synchronized (http2Stream2) {
                if (this.f64063d) {
                    return;
                }
                if (http2Stream2.h() == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                Unit unit = Unit.f60915a;
                if (!Http2Stream.this.o().f64060a) {
                    if (this.f64061b.size() > 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (this.f64062c != null) {
                        while (this.f64061b.size() > 0) {
                            a(false);
                        }
                        Http2Connection g10 = Http2Stream.this.g();
                        int j10 = Http2Stream.this.j();
                        Headers headers = this.f64062c;
                        Intrinsics.checkNotNull(headers);
                        g10.E0(j10, z10, Util.P(headers));
                    } else if (z11) {
                        while (this.f64061b.size() > 0) {
                            a(true);
                        }
                    } else if (z10) {
                        Http2Stream.this.g().D0(Http2Stream.this.j(), true, null, 0L);
                    }
                }
                synchronized (Http2Stream.this) {
                    this.f64063d = true;
                    Unit unit2 = Unit.f60915a;
                }
                Http2Stream.this.g().flush();
                Http2Stream.this.b();
            }
        }

        public final boolean d() {
            return this.f64063d;
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            Http2Stream http2Stream = Http2Stream.this;
            if (Util.f63634h && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + http2Stream);
            }
            Http2Stream http2Stream2 = Http2Stream.this;
            synchronized (http2Stream2) {
                http2Stream2.c();
                Unit unit = Unit.f60915a;
            }
            while (this.f64061b.size() > 0) {
                a(false);
                Http2Stream.this.g().flush();
            }
        }

        public final boolean k() {
            return this.f64060a;
        }

        @Override // okio.Sink
        @NotNull
        public Timeout timeout() {
            return Http2Stream.this.s();
        }

        @Override // okio.Sink
        public void write(@NotNull Buffer source, long j10) throws IOException {
            Intrinsics.checkNotNullParameter(source, "source");
            Http2Stream http2Stream = Http2Stream.this;
            if (Util.f63634h && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + http2Stream);
            }
            this.f64061b.write(source, j10);
            while (this.f64061b.size() >= com.applovin.shadow.okhttp3.internal.http2.Http2Stream.EMIT_BUFFER_SIZE) {
                a(false);
            }
        }
    }

    /* compiled from: Http2Stream.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHttp2Stream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokhttp3/internal/Util\n*L\n1#1,688:1\n1#2:689\n615#3,4:690\n615#3,4:694\n563#3:698\n563#3:699\n*S KotlinDebug\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSource\n*L\n407#1:690,4\n418#1:694,4\n458#1:698\n480#1:699\n*E\n"})
    /* loaded from: classes8.dex */
    public final class FramingSource implements Source {

        /* renamed from: a  reason: collision with root package name */
        private final long f64065a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f64066b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final Buffer f64067c = new Buffer();
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final Buffer f64068d = new Buffer();
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private Headers f64069e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f64070f;

        public FramingSource(long j10, boolean z10) {
            this.f64065a = j10;
            this.f64066b = z10;
        }

        private final void p(long j10) {
            Http2Stream http2Stream = Http2Stream.this;
            if (Util.f63634h && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + http2Stream);
            }
            Http2Stream.this.g().C0(j10);
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            long size;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                this.f64070f = true;
                size = this.f64068d.size();
                this.f64068d.clear();
                Intrinsics.checkNotNull(http2Stream, "null cannot be cast to non-null type java.lang.Object");
                http2Stream.notifyAll();
                Unit unit = Unit.f60915a;
            }
            if (size > 0) {
                p(size);
            }
            Http2Stream.this.b();
        }

        public final boolean d() {
            return this.f64070f;
        }

        public final boolean k() {
            return this.f64066b;
        }

        public final void l(@NotNull BufferedSource source, long j10) throws IOException {
            boolean z10;
            boolean z11;
            boolean z12;
            Intrinsics.checkNotNullParameter(source, "source");
            Http2Stream http2Stream = Http2Stream.this;
            if (Util.f63634h && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + http2Stream);
            }
            long j11 = j10;
            while (j11 > 0) {
                synchronized (Http2Stream.this) {
                    z10 = this.f64066b;
                    z11 = false;
                    if (this.f64068d.size() + j11 > this.f64065a) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    Unit unit = Unit.f60915a;
                }
                if (z12) {
                    source.skip(j11);
                    Http2Stream.this.f(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                } else if (z10) {
                    source.skip(j11);
                    return;
                } else {
                    long read = source.read(this.f64067c, j11);
                    if (read != -1) {
                        j11 -= read;
                        Http2Stream http2Stream2 = Http2Stream.this;
                        synchronized (http2Stream2) {
                            try {
                                if (this.f64070f) {
                                    this.f64067c.clear();
                                } else {
                                    if (this.f64068d.size() == 0) {
                                        z11 = true;
                                    }
                                    this.f64068d.writeAll(this.f64067c);
                                    if (z11) {
                                        Intrinsics.checkNotNull(http2Stream2, "null cannot be cast to non-null type java.lang.Object");
                                        http2Stream2.notifyAll();
                                    }
                                }
                            } finally {
                            }
                        }
                    } else {
                        throw new EOFException();
                    }
                }
            }
            p(j10);
        }

        public final void m(boolean z10) {
            this.f64066b = z10;
        }

        public final void o(@Nullable Headers headers) {
            this.f64069e = headers;
        }

        /* JADX WARN: Code restructure failed: missing block: B:45:0x00c2, code lost:
            throw new java.io.IOException("stream closed");
         */
        @Override // okio.Source
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long read(@org.jetbrains.annotations.NotNull okio.Buffer r19, long r20) throws java.io.IOException {
            /*
                r18 = this;
                r1 = r18
                r0 = r19
                r2 = r20
                java.lang.String r4 = "sink"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r4)
                r4 = 0
                int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r6 < 0) goto Lcd
            L11:
                okhttp3.internal.http2.Http2Stream r6 = okhttp3.internal.http2.Http2Stream.this
                monitor-enter(r6)
                okhttp3.internal.http2.Http2Stream$StreamTimeout r7 = r6.m()     // Catch: java.lang.Throwable -> Lb9
                r7.enter()     // Catch: java.lang.Throwable -> Lb9
                okhttp3.internal.http2.ErrorCode r7 = r6.h()     // Catch: java.lang.Throwable -> L38
                if (r7 == 0) goto L3b
                boolean r7 = r1.f64066b     // Catch: java.lang.Throwable -> L38
                if (r7 != 0) goto L3b
                java.io.IOException r7 = r6.i()     // Catch: java.lang.Throwable -> L38
                if (r7 != 0) goto L3c
                okhttp3.internal.http2.StreamResetException r7 = new okhttp3.internal.http2.StreamResetException     // Catch: java.lang.Throwable -> L38
                okhttp3.internal.http2.ErrorCode r8 = r6.h()     // Catch: java.lang.Throwable -> L38
                kotlin.jvm.internal.Intrinsics.checkNotNull(r8)     // Catch: java.lang.Throwable -> L38
                r7.<init>(r8)     // Catch: java.lang.Throwable -> L38
                goto L3c
            L38:
                r0 = move-exception
                goto Lc3
            L3b:
                r7 = 0
            L3c:
                boolean r8 = r1.f64070f     // Catch: java.lang.Throwable -> L38
                if (r8 != 0) goto Lbb
                okio.Buffer r8 = r1.f64068d     // Catch: java.lang.Throwable -> L38
                long r8 = r8.size()     // Catch: java.lang.Throwable -> L38
                int r8 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
                r9 = -1
                r11 = 0
                if (r8 <= 0) goto L95
                okio.Buffer r8 = r1.f64068d     // Catch: java.lang.Throwable -> L38
                long r12 = r8.size()     // Catch: java.lang.Throwable -> L38
                long r12 = java.lang.Math.min(r2, r12)     // Catch: java.lang.Throwable -> L38
                long r12 = r8.read(r0, r12)     // Catch: java.lang.Throwable -> L38
                long r14 = r6.l()     // Catch: java.lang.Throwable -> L38
                long r14 = r14 + r12
                r6.A(r14)     // Catch: java.lang.Throwable -> L38
                long r14 = r6.l()     // Catch: java.lang.Throwable -> L38
                long r16 = r6.k()     // Catch: java.lang.Throwable -> L38
                long r14 = r14 - r16
                if (r7 != 0) goto La0
                okhttp3.internal.http2.Http2Connection r8 = r6.g()     // Catch: java.lang.Throwable -> L38
                okhttp3.internal.http2.Settings r8 = r8.Z()     // Catch: java.lang.Throwable -> L38
                int r8 = r8.c()     // Catch: java.lang.Throwable -> L38
                int r8 = r8 / 2
                long r4 = (long) r8     // Catch: java.lang.Throwable -> L38
                int r4 = (r14 > r4 ? 1 : (r14 == r4 ? 0 : -1))
                if (r4 < 0) goto La0
                okhttp3.internal.http2.Http2Connection r4 = r6.g()     // Catch: java.lang.Throwable -> L38
                int r5 = r6.j()     // Catch: java.lang.Throwable -> L38
                r4.I0(r5, r14)     // Catch: java.lang.Throwable -> L38
                long r4 = r6.l()     // Catch: java.lang.Throwable -> L38
                r6.z(r4)     // Catch: java.lang.Throwable -> L38
                goto La0
            L95:
                boolean r4 = r1.f64066b     // Catch: java.lang.Throwable -> L38
                if (r4 != 0) goto L9f
                if (r7 != 0) goto L9f
                r6.D()     // Catch: java.lang.Throwable -> L38
                r11 = 1
            L9f:
                r12 = r9
            La0:
                okhttp3.internal.http2.Http2Stream$StreamTimeout r4 = r6.m()     // Catch: java.lang.Throwable -> Lb9
                r4.a()     // Catch: java.lang.Throwable -> Lb9
                kotlin.Unit r4 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> Lb9
                monitor-exit(r6)
                if (r11 == 0) goto Lb0
                r4 = 0
                goto L11
            Lb0:
                int r0 = (r12 > r9 ? 1 : (r12 == r9 ? 0 : -1))
                if (r0 == 0) goto Lb5
                return r12
            Lb5:
                if (r7 != 0) goto Lb8
                return r9
            Lb8:
                throw r7
            Lb9:
                r0 = move-exception
                goto Lcb
            Lbb:
                java.io.IOException r0 = new java.io.IOException     // Catch: java.lang.Throwable -> L38
                java.lang.String r2 = "stream closed"
                r0.<init>(r2)     // Catch: java.lang.Throwable -> L38
                throw r0     // Catch: java.lang.Throwable -> L38
            Lc3:
                okhttp3.internal.http2.Http2Stream$StreamTimeout r2 = r6.m()     // Catch: java.lang.Throwable -> Lb9
                r2.a()     // Catch: java.lang.Throwable -> Lb9
                throw r0     // Catch: java.lang.Throwable -> Lb9
            Lcb:
                monitor-exit(r6)
                throw r0
            Lcd:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r4 = "byteCount < 0: "
                r0.append(r4)
                r0.append(r2)
                java.lang.String r0 = r0.toString()
                java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
                java.lang.String r0 = r0.toString()
                r2.<init>(r0)
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.FramingSource.read(okio.Buffer, long):long");
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return Http2Stream.this.m();
        }
    }

    /* compiled from: Http2Stream.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public final class StreamTimeout extends AsyncTimeout {
        public StreamTimeout() {
        }

        public final void a() throws IOException {
            if (!exit()) {
                return;
            }
            throw newTimeoutException(null);
        }

        @Override // okio.AsyncTimeout
        @NotNull
        protected IOException newTimeoutException(@Nullable IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // okio.AsyncTimeout
        protected void timedOut() {
            Http2Stream.this.f(ErrorCode.CANCEL);
            Http2Stream.this.g().s0();
        }
    }

    public Http2Stream(int i10, @NotNull Http2Connection connection, boolean z10, boolean z11, @Nullable Headers headers) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        this.f64046a = i10;
        this.f64047b = connection;
        this.f64051f = connection.a0().c();
        ArrayDeque<Headers> arrayDeque = new ArrayDeque<>();
        this.f64052g = arrayDeque;
        this.f64054i = new FramingSource(connection.Z().c(), z11);
        this.f64055j = new FramingSink(z10);
        this.f64056k = new StreamTimeout();
        this.f64057l = new StreamTimeout();
        if (headers != null) {
            if (!t()) {
                arrayDeque.add(headers);
                return;
            }
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
        } else if (t()) {
        } else {
            throw new IllegalStateException("remotely-initiated streams should have headers");
        }
    }

    private final boolean e(ErrorCode errorCode, IOException iOException) {
        if (Util.f63634h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            if (this.f64058m != null) {
                return false;
            }
            this.f64058m = errorCode;
            this.f64059n = iOException;
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
            if (this.f64054i.k() && this.f64055j.k()) {
                return false;
            }
            Unit unit = Unit.f60915a;
            this.f64047b.o0(this.f64046a);
            return true;
        }
    }

    public final void A(long j10) {
        this.f64048c = j10;
    }

    public final void B(long j10) {
        this.f64050e = j10;
    }

    @NotNull
    public final synchronized Headers C() throws IOException {
        Headers removeFirst;
        this.f64056k.enter();
        while (this.f64052g.isEmpty() && this.f64058m == null) {
            D();
        }
        this.f64056k.a();
        if (!this.f64052g.isEmpty()) {
            removeFirst = this.f64052g.removeFirst();
            Intrinsics.checkNotNullExpressionValue(removeFirst, "headersQueue.removeFirst()");
        } else {
            IOException iOException = this.f64059n;
            if (iOException == null) {
                ErrorCode errorCode = this.f64058m;
                Intrinsics.checkNotNull(errorCode);
                throw new StreamResetException(errorCode);
            }
            throw iOException;
        }
        return removeFirst;
    }

    public final void D() throws InterruptedIOException {
        try {
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    @NotNull
    public final Timeout E() {
        return this.f64057l;
    }

    public final void a(long j10) {
        this.f64051f += j10;
        if (j10 > 0) {
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    public final void b() throws IOException {
        boolean z10;
        boolean u10;
        if (Util.f63634h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            try {
                if (this.f64054i.k() || !this.f64054i.d() || (!this.f64055j.k() && !this.f64055j.d())) {
                    z10 = false;
                    u10 = u();
                    Unit unit = Unit.f60915a;
                }
                z10 = true;
                u10 = u();
                Unit unit2 = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            d(ErrorCode.CANCEL, null);
        } else if (!u10) {
            this.f64047b.o0(this.f64046a);
        }
    }

    public final void c() throws IOException {
        if (!this.f64055j.d()) {
            if (!this.f64055j.k()) {
                if (this.f64058m != null) {
                    IOException iOException = this.f64059n;
                    if (iOException == null) {
                        ErrorCode errorCode = this.f64058m;
                        Intrinsics.checkNotNull(errorCode);
                        throw new StreamResetException(errorCode);
                    }
                    throw iOException;
                }
                return;
            }
            throw new IOException("stream finished");
        }
        throw new IOException("stream closed");
    }

    public final void d(@NotNull ErrorCode rstStatusCode, @Nullable IOException iOException) throws IOException {
        Intrinsics.checkNotNullParameter(rstStatusCode, "rstStatusCode");
        if (!e(rstStatusCode, iOException)) {
            return;
        }
        this.f64047b.G0(this.f64046a, rstStatusCode);
    }

    public final void f(@NotNull ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        if (!e(errorCode, null)) {
            return;
        }
        this.f64047b.H0(this.f64046a, errorCode);
    }

    @NotNull
    public final Http2Connection g() {
        return this.f64047b;
    }

    @Nullable
    public final synchronized ErrorCode h() {
        return this.f64058m;
    }

    @Nullable
    public final IOException i() {
        return this.f64059n;
    }

    public final int j() {
        return this.f64046a;
    }

    public final long k() {
        return this.f64049d;
    }

    public final long l() {
        return this.f64048c;
    }

    @NotNull
    public final StreamTimeout m() {
        return this.f64056k;
    }

    @NotNull
    public final Sink n() {
        synchronized (this) {
            try {
                if (!this.f64053h && !t()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.f64055j;
    }

    @NotNull
    public final FramingSink o() {
        return this.f64055j;
    }

    @NotNull
    public final FramingSource p() {
        return this.f64054i;
    }

    public final long q() {
        return this.f64051f;
    }

    public final long r() {
        return this.f64050e;
    }

    @NotNull
    public final StreamTimeout s() {
        return this.f64057l;
    }

    public final boolean t() {
        boolean z10;
        if ((this.f64046a & 1) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f64047b.P() == z10) {
            return true;
        }
        return false;
    }

    public final synchronized boolean u() {
        try {
            if (this.f64058m != null) {
                return false;
            }
            if (!this.f64054i.k()) {
                if (this.f64054i.d()) {
                }
                return true;
            }
            if (this.f64055j.k() || this.f64055j.d()) {
                if (this.f64053h) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @NotNull
    public final Timeout v() {
        return this.f64056k;
    }

    public final void w(@NotNull BufferedSource source, int i10) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        if (Util.f63634h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        this.f64054i.l(source, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0051 A[Catch: all -> 0x0046, TryCatch #0 {all -> 0x0046, blocks: (B:10:0x0038, B:14:0x0040, B:19:0x0051, B:20:0x0056, B:17:0x0048), top: B:27:0x0038 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x(@org.jetbrains.annotations.NotNull okhttp3.Headers r3, boolean r4) {
        /*
            r2 = this;
            java.lang.String r0 = "headers"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            boolean r0 = okhttp3.internal.Util.f63634h
            if (r0 == 0) goto L37
            boolean r0 = java.lang.Thread.holdsLock(r2)
            if (r0 != 0) goto L10
            goto L37
        L10:
            java.lang.AssertionError r3 = new java.lang.AssertionError
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r0 = "Thread "
            r4.append(r0)
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.String r0 = r0.getName()
            r4.append(r0)
            java.lang.String r0 = " MUST NOT hold lock on "
            r4.append(r0)
            r4.append(r2)
            java.lang.String r4 = r4.toString()
            r3.<init>(r4)
            throw r3
        L37:
            monitor-enter(r2)
            boolean r0 = r2.f64053h     // Catch: java.lang.Throwable -> L46
            r1 = 1
            if (r0 == 0) goto L48
            if (r4 != 0) goto L40
            goto L48
        L40:
            okhttp3.internal.http2.Http2Stream$FramingSource r0 = r2.f64054i     // Catch: java.lang.Throwable -> L46
            r0.o(r3)     // Catch: java.lang.Throwable -> L46
            goto L4f
        L46:
            r3 = move-exception
            goto L6f
        L48:
            r2.f64053h = r1     // Catch: java.lang.Throwable -> L46
            java.util.ArrayDeque<okhttp3.Headers> r0 = r2.f64052g     // Catch: java.lang.Throwable -> L46
            r0.add(r3)     // Catch: java.lang.Throwable -> L46
        L4f:
            if (r4 == 0) goto L56
            okhttp3.internal.http2.Http2Stream$FramingSource r3 = r2.f64054i     // Catch: java.lang.Throwable -> L46
            r3.m(r1)     // Catch: java.lang.Throwable -> L46
        L56:
            boolean r3 = r2.u()     // Catch: java.lang.Throwable -> L46
            java.lang.String r4 = "null cannot be cast to non-null type java.lang.Object"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2, r4)     // Catch: java.lang.Throwable -> L46
            r2.notifyAll()     // Catch: java.lang.Throwable -> L46
            kotlin.Unit r4 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L46
            monitor-exit(r2)
            if (r3 != 0) goto L6e
            okhttp3.internal.http2.Http2Connection r3 = r2.f64047b
            int r4 = r2.f64046a
            r3.o0(r4)
        L6e:
            return
        L6f:
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.x(okhttp3.Headers, boolean):void");
    }

    public final synchronized void y(@NotNull ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        if (this.f64058m == null) {
            this.f64058m = errorCode;
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    public final void z(long j10) {
        this.f64049d = j10;
    }
}
