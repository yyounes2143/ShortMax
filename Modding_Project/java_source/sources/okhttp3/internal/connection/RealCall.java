package okhttp3.internal.connection;

import androidx.core.app.NotificationCompat;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.d;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.CertificatePinner;
import okhttp3.Dispatcher;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.platform.Platform;
import okio.AsyncTimeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealCall.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRealCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokhttp3/internal/Util\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,551:1\n1#2:552\n608#3,4:553\n615#3,4:557\n615#3,4:561\n608#3,4:565\n350#4,7:569\n*S KotlinDebug\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall\n*L\n269#1:553,4\n344#1:557,4\n348#1:561,4\n375#1:565,4\n378#1:569,7\n*E\n"})
/* loaded from: classes8.dex */
public final class RealCall implements Call {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final OkHttpClient f63792a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Request f63793b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f63794c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final RealConnectionPool f63795d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final EventListener f63796e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final RealCall$timeout$1 f63797f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final AtomicBoolean f63798g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Object f63799h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private ExchangeFinder f63800i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private RealConnection f63801j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f63802k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private Exchange f63803l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f63804m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f63805n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f63806o;

    /* renamed from: p  reason: collision with root package name */
    private volatile boolean f63807p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private volatile Exchange f63808q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private volatile RealConnection f63809r;

    /* compiled from: RealCall.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRealCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall$AsyncCall\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,551:1\n615#2,4:552\n409#2,9:556\n*S KotlinDebug\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall$AsyncCall\n*L\n494#1:552,4\n513#1:556,9\n*E\n"})
    /* loaded from: classes8.dex */
    public final class AsyncCall implements Runnable {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Callback f63810a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private volatile AtomicInteger f63811b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ RealCall f63812c;

        public AsyncCall(@NotNull RealCall realCall, Callback responseCallback) {
            Intrinsics.checkNotNullParameter(responseCallback, "responseCallback");
            this.f63812c = realCall;
            this.f63810a = responseCallback;
            this.f63811b = new AtomicInteger(0);
        }

        public final void a(@NotNull ExecutorService executorService) {
            Intrinsics.checkNotNullParameter(executorService, "executorService");
            Dispatcher p10 = this.f63812c.k().p();
            if (Util.f63634h && Thread.holdsLock(p10)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + p10);
            }
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e10) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e10);
                    this.f63812c.t(interruptedIOException);
                    this.f63810a.onFailure(this.f63812c, interruptedIOException);
                    this.f63812c.k().p().g(this);
                }
            } catch (Throwable th2) {
                this.f63812c.k().p().g(this);
                throw th2;
            }
        }

        @NotNull
        public final RealCall c() {
            return this.f63812c;
        }

        @NotNull
        public final AtomicInteger d() {
            return this.f63811b;
        }

        @NotNull
        public final String e() {
            return this.f63812c.p().l().i();
        }

        public final void f(@NotNull AsyncCall other) {
            Intrinsics.checkNotNullParameter(other, "other");
            this.f63811b = other.f63811b;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10;
            Throwable th2;
            IOException e10;
            Dispatcher p10;
            RealCall realCall = this.f63812c;
            Thread currentThread = Thread.currentThread();
            String name = currentThread.getName();
            currentThread.setName("OkHttp " + this.f63812c.u());
            try {
                realCall.f63797f.enter();
                try {
                    z10 = true;
                    try {
                        this.f63810a.onResponse(realCall, realCall.q());
                        p10 = realCall.k().p();
                    } catch (IOException e11) {
                        e10 = e11;
                        if (z10) {
                            Platform.f64128a.g().k("Callback failure for " + realCall.A(), 4, e10);
                        } else {
                            this.f63810a.onFailure(realCall, e10);
                        }
                        p10 = realCall.k().p();
                        p10.g(this);
                    } catch (Throwable th3) {
                        th2 = th3;
                        realCall.cancel();
                        if (!z10) {
                            IOException iOException = new IOException("canceled due to " + th2);
                            d.a(iOException, th2);
                            this.f63810a.onFailure(realCall, iOException);
                        }
                        throw th2;
                    }
                } catch (IOException e12) {
                    z10 = false;
                    e10 = e12;
                } catch (Throwable th4) {
                    z10 = false;
                    th2 = th4;
                }
                p10.g(this);
            } finally {
                currentThread.setName(name);
            }
        }
    }

    /* compiled from: RealCall.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class CallReference extends WeakReference<RealCall> {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Object f63813a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CallReference(@NotNull RealCall referent, @Nullable Object obj) {
            super(referent);
            Intrinsics.checkNotNullParameter(referent, "referent");
            this.f63813a = obj;
        }

        @Nullable
        public final Object a() {
            return this.f63813a;
        }
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [okio.Timeout, okhttp3.internal.connection.RealCall$timeout$1] */
    public RealCall(@NotNull OkHttpClient client, @NotNull Request originalRequest, boolean z10) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(originalRequest, "originalRequest");
        this.f63792a = client;
        this.f63793b = originalRequest;
        this.f63794c = z10;
        this.f63795d = client.m().a();
        this.f63796e = client.r().a(this);
        ?? r42 = new AsyncTimeout() { // from class: okhttp3.internal.connection.RealCall$timeout$1
            @Override // okio.AsyncTimeout
            protected void timedOut() {
                RealCall.this.cancel();
            }
        };
        r42.timeout(client.i(), TimeUnit.MILLISECONDS);
        this.f63797f = r42;
        this.f63798g = new AtomicBoolean();
        this.f63806o = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String A() {
        String str;
        String str2;
        StringBuilder sb2 = new StringBuilder();
        if (isCanceled()) {
            str = "canceled ";
        } else {
            str = "";
        }
        sb2.append(str);
        if (this.f63794c) {
            str2 = "web socket";
        } else {
            str2 = NotificationCompat.CATEGORY_CALL;
        }
        sb2.append(str2);
        sb2.append(" to ");
        sb2.append(u());
        return sb2.toString();
    }

    private final <E extends IOException> E e(E e10) {
        Socket v10;
        boolean z10 = Util.f63634h;
        if (z10 && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        RealConnection realConnection = this.f63801j;
        if (realConnection != null) {
            if (z10 && Thread.holdsLock(realConnection)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + realConnection);
            }
            synchronized (realConnection) {
                v10 = v();
            }
            if (this.f63801j == null) {
                if (v10 != null) {
                    Util.n(v10);
                }
                this.f63796e.l(this, realConnection);
            } else if (v10 != null) {
                throw new IllegalStateException("Check failed.");
            }
        }
        E e11 = (E) z(e10);
        if (e10 != null) {
            EventListener eventListener = this.f63796e;
            Intrinsics.checkNotNull(e11);
            eventListener.e(this, e11);
        } else {
            this.f63796e.d(this);
        }
        return e11;
    }

    private final void f() {
        this.f63799h = Platform.f64128a.g().i("response.body().close()");
        this.f63796e.f(this);
    }

    private final Address h(HttpUrl httpUrl) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        CertificatePinner certificatePinner;
        if (httpUrl.j()) {
            sSLSocketFactory = this.f63792a.I();
            hostnameVerifier = this.f63792a.v();
            certificatePinner = this.f63792a.k();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            certificatePinner = null;
        }
        return new Address(httpUrl.i(), httpUrl.o(), this.f63792a.q(), this.f63792a.H(), sSLSocketFactory, hostnameVerifier, certificatePinner, this.f63792a.D(), this.f63792a.C(), this.f63792a.B(), this.f63792a.n(), this.f63792a.E());
    }

    private final <E extends IOException> E z(E e10) {
        if (this.f63802k) {
            return e10;
        }
        if (!exit()) {
            return e10;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (e10 != null) {
            interruptedIOException.initCause(e10);
        }
        return interruptedIOException;
    }

    public final void c(@NotNull RealConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (Util.f63634h && !Thread.holdsLock(connection)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + connection);
        } else if (this.f63801j == null) {
            this.f63801j = connection;
            connection.n().add(new CallReference(this, this.f63799h));
        } else {
            throw new IllegalStateException("Check failed.");
        }
    }

    @Override // okhttp3.Call
    public void cancel() {
        if (this.f63807p) {
            return;
        }
        this.f63807p = true;
        Exchange exchange = this.f63808q;
        if (exchange != null) {
            exchange.b();
        }
        RealConnection realConnection = this.f63809r;
        if (realConnection != null) {
            realConnection.d();
        }
        this.f63796e.g(this);
    }

    @Override // okhttp3.Call
    @NotNull
    public Response execute() {
        if (this.f63798g.compareAndSet(false, true)) {
            enter();
            f();
            try {
                this.f63792a.p().c(this);
                return q();
            } finally {
                this.f63792a.p().h(this);
            }
        }
        throw new IllegalStateException("Already Executed");
    }

    @NotNull
    /* renamed from: g */
    public RealCall clone() {
        return new RealCall(this.f63792a, this.f63793b, this.f63794c);
    }

    public final void i(@NotNull Request request, boolean z10) {
        Intrinsics.checkNotNullParameter(request, "request");
        if (this.f63803l == null) {
            synchronized (this) {
                if (!this.f63805n) {
                    if (!this.f63804m) {
                        Unit unit = Unit.f60915a;
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } else {
                    throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()");
                }
            }
            if (z10) {
                this.f63800i = new ExchangeFinder(this.f63795d, h(request.l()), this, this.f63796e);
                return;
            }
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    @Override // okhttp3.Call
    public boolean isCanceled() {
        return this.f63807p;
    }

    public final void j(boolean z10) {
        Exchange exchange;
        synchronized (this) {
            if (this.f63806o) {
                Unit unit = Unit.f60915a;
            } else {
                throw new IllegalStateException("released");
            }
        }
        if (z10 && (exchange = this.f63808q) != null) {
            exchange.d();
        }
        this.f63803l = null;
    }

    @NotNull
    public final OkHttpClient k() {
        return this.f63792a;
    }

    @Nullable
    public final RealConnection l() {
        return this.f63801j;
    }

    @NotNull
    public final EventListener m() {
        return this.f63796e;
    }

    public final boolean n() {
        return this.f63794c;
    }

    @Nullable
    public final Exchange o() {
        return this.f63803l;
    }

    @Override // okhttp3.Call
    public void o0(@NotNull Callback responseCallback) {
        Intrinsics.checkNotNullParameter(responseCallback, "responseCallback");
        if (this.f63798g.compareAndSet(false, true)) {
            f();
            this.f63792a.p().b(new AsyncCall(this, responseCallback));
            return;
        }
        throw new IllegalStateException("Already Executed");
    }

    @NotNull
    public final Request p() {
        return this.f63793b;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a2  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.Response q() throws java.io.IOException {
        /*
            r11 = this;
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            okhttp3.OkHttpClient r0 = r11.f63792a
            java.util.List r0 = r0.w()
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            kotlin.collections.CollectionsKt.E(r2, r0)
            okhttp3.internal.http.RetryAndFollowUpInterceptor r0 = new okhttp3.internal.http.RetryAndFollowUpInterceptor
            okhttp3.OkHttpClient r1 = r11.f63792a
            r0.<init>(r1)
            r2.add(r0)
            okhttp3.internal.http.BridgeInterceptor r0 = new okhttp3.internal.http.BridgeInterceptor
            okhttp3.OkHttpClient r1 = r11.f63792a
            okhttp3.CookieJar r1 = r1.o()
            r0.<init>(r1)
            r2.add(r0)
            okhttp3.internal.cache.CacheInterceptor r0 = new okhttp3.internal.cache.CacheInterceptor
            okhttp3.OkHttpClient r1 = r11.f63792a
            okhttp3.Cache r1 = r1.g()
            r0.<init>(r1)
            r2.add(r0)
            okhttp3.internal.connection.ConnectInterceptor r0 = okhttp3.internal.connection.ConnectInterceptor.f63759a
            r2.add(r0)
            boolean r0 = r11.f63794c
            if (r0 != 0) goto L4a
            okhttp3.OkHttpClient r0 = r11.f63792a
            java.util.List r0 = r0.y()
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            kotlin.collections.CollectionsKt.E(r2, r0)
        L4a:
            okhttp3.internal.http.CallServerInterceptor r0 = new okhttp3.internal.http.CallServerInterceptor
            boolean r1 = r11.f63794c
            r0.<init>(r1)
            r2.add(r0)
            okhttp3.internal.http.RealInterceptorChain r9 = new okhttp3.internal.http.RealInterceptorChain
            okhttp3.Request r5 = r11.f63793b
            okhttp3.OkHttpClient r0 = r11.f63792a
            int r6 = r0.l()
            okhttp3.OkHttpClient r0 = r11.f63792a
            int r7 = r0.F()
            okhttp3.OkHttpClient r0 = r11.f63792a
            int r8 = r0.K()
            r3 = 0
            r4 = 0
            r0 = r9
            r1 = r11
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r0 = 0
            r1 = 0
            okhttp3.Request r2 = r11.f63793b     // Catch: java.lang.Throwable -> L8e java.io.IOException -> L90
            okhttp3.Response r2 = r9.a(r2)     // Catch: java.lang.Throwable -> L8e java.io.IOException -> L90
            boolean r3 = r11.isCanceled()     // Catch: java.lang.Throwable -> L8e java.io.IOException -> L90
            if (r3 != 0) goto L83
            r11.t(r0)
            return r2
        L83:
            okhttp3.internal.Util.m(r2)     // Catch: java.lang.Throwable -> L8e java.io.IOException -> L90
            java.io.IOException r2 = new java.io.IOException     // Catch: java.lang.Throwable -> L8e java.io.IOException -> L90
            java.lang.String r3 = "Canceled"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L8e java.io.IOException -> L90
            throw r2     // Catch: java.lang.Throwable -> L8e java.io.IOException -> L90
        L8e:
            r2 = move-exception
            goto La0
        L90:
            r1 = move-exception
            r2 = 1
            java.io.IOException r1 = r11.t(r1)     // Catch: java.lang.Throwable -> L9c
            java.lang.String r3 = "null cannot be cast to non-null type kotlin.Throwable"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r3)     // Catch: java.lang.Throwable -> L9c
            throw r1     // Catch: java.lang.Throwable -> L9c
        L9c:
            r1 = move-exception
            r10 = r2
            r2 = r1
            r1 = r10
        La0:
            if (r1 != 0) goto La5
            r11.t(r0)
        La5:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealCall.q():okhttp3.Response");
    }

    @NotNull
    public final Exchange r(@NotNull RealInterceptorChain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        synchronized (this) {
            if (this.f63806o) {
                if (!this.f63805n) {
                    if (!this.f63804m) {
                        Unit unit = Unit.f60915a;
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } else {
                    throw new IllegalStateException("Check failed.");
                }
            } else {
                throw new IllegalStateException("released");
            }
        }
        ExchangeFinder exchangeFinder = this.f63800i;
        Intrinsics.checkNotNull(exchangeFinder);
        Exchange exchange = new Exchange(this, this.f63796e, exchangeFinder, exchangeFinder.a(this.f63792a, chain));
        this.f63803l = exchange;
        this.f63808q = exchange;
        synchronized (this) {
            this.f63804m = true;
            this.f63805n = true;
        }
        if (!this.f63807p) {
            return exchange;
        }
        throw new IOException("Canceled");
    }

    @Override // okhttp3.Call
    @NotNull
    public Request request() {
        return this.f63793b;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0021 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:8:0x0012, B:17:0x0021, B:19:0x0025, B:20:0x0027, B:22:0x002c, B:27:0x0035, B:29:0x0039, B:34:0x0042, B:14:0x001b), top: B:46:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0025 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:8:0x0012, B:17:0x0021, B:19:0x0025, B:20:0x0027, B:22:0x002c, B:27:0x0035, B:29:0x0039, B:34:0x0042, B:14:0x001b), top: B:46:0x0012 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <E extends java.io.IOException> E s(@org.jetbrains.annotations.NotNull okhttp3.internal.connection.Exchange r2, boolean r3, boolean r4, E r5) {
        /*
            r1 = this;
            java.lang.String r0 = "exchange"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            okhttp3.internal.connection.Exchange r0 = r1.f63808q
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r0)
            if (r2 != 0) goto Le
            return r5
        Le:
            monitor-enter(r1)
            r2 = 0
            if (r3 == 0) goto L19
            boolean r0 = r1.f63804m     // Catch: java.lang.Throwable -> L17
            if (r0 != 0) goto L1f
            goto L19
        L17:
            r2 = move-exception
            goto L59
        L19:
            if (r4 == 0) goto L41
            boolean r0 = r1.f63805n     // Catch: java.lang.Throwable -> L17
            if (r0 == 0) goto L41
        L1f:
            if (r3 == 0) goto L23
            r1.f63804m = r2     // Catch: java.lang.Throwable -> L17
        L23:
            if (r4 == 0) goto L27
            r1.f63805n = r2     // Catch: java.lang.Throwable -> L17
        L27:
            boolean r3 = r1.f63804m     // Catch: java.lang.Throwable -> L17
            r4 = 1
            if (r3 != 0) goto L32
            boolean r0 = r1.f63805n     // Catch: java.lang.Throwable -> L17
            if (r0 != 0) goto L32
            r0 = r4
            goto L33
        L32:
            r0 = r2
        L33:
            if (r3 != 0) goto L3e
            boolean r3 = r1.f63805n     // Catch: java.lang.Throwable -> L17
            if (r3 != 0) goto L3e
            boolean r3 = r1.f63806o     // Catch: java.lang.Throwable -> L17
            if (r3 != 0) goto L3e
            r2 = r4
        L3e:
            r3 = r2
            r2 = r0
            goto L42
        L41:
            r3 = r2
        L42:
            kotlin.Unit r4 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L17
            monitor-exit(r1)
            if (r2 == 0) goto L51
            r2 = 0
            r1.f63808q = r2
            okhttp3.internal.connection.RealConnection r2 = r1.f63801j
            if (r2 == 0) goto L51
            r2.s()
        L51:
            if (r3 == 0) goto L58
            java.io.IOException r2 = r1.e(r5)
            return r2
        L58:
            return r5
        L59:
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealCall.s(okhttp3.internal.connection.Exchange, boolean, boolean, java.io.IOException):java.io.IOException");
    }

    @Nullable
    public final IOException t(@Nullable IOException iOException) {
        boolean z10;
        synchronized (this) {
            try {
                z10 = false;
                if (this.f63806o) {
                    this.f63806o = false;
                    if (!this.f63804m && !this.f63805n) {
                        z10 = true;
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            return e(iOException);
        }
        return iOException;
    }

    @NotNull
    public final String u() {
        return this.f63793b.l().r();
    }

    @Nullable
    public final Socket v() {
        RealConnection realConnection = this.f63801j;
        Intrinsics.checkNotNull(realConnection);
        if (Util.f63634h && !Thread.holdsLock(realConnection)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + realConnection);
        }
        List<Reference<RealCall>> n10 = realConnection.n();
        Iterator<Reference<RealCall>> it = n10.iterator();
        int i10 = 0;
        while (true) {
            if (it.hasNext()) {
                if (Intrinsics.areEqual(it.next().get(), this)) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        if (i10 != -1) {
            n10.remove(i10);
            this.f63801j = null;
            if (n10.isEmpty()) {
                realConnection.C(System.nanoTime());
                if (this.f63795d.c(realConnection)) {
                    return realConnection.E();
                }
            }
            return null;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final boolean w() {
        ExchangeFinder exchangeFinder = this.f63800i;
        Intrinsics.checkNotNull(exchangeFinder);
        return exchangeFinder.e();
    }

    public final void x(@Nullable RealConnection realConnection) {
        this.f63809r = realConnection;
    }

    public final void y() {
        if (!this.f63802k) {
            this.f63802k = true;
            exit();
            return;
        }
        throw new IllegalStateException("Check failed.");
    }
}
