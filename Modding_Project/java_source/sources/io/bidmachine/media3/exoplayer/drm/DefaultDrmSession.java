package io.bidmachine.media3.exoplayer.drm;

import android.annotation.SuppressLint;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import cn.m0;
import cn.r;
import hn.b2;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.exoplayer.drm.DrmSession;
import io.bidmachine.media3.exoplayer.drm.h;
import io.bidmachine.media3.exoplayer.drm.m;
import io.bidmachine.media3.exoplayer.upstream.b;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import ln.q;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes8.dex */
public class DefaultDrmSession implements DrmSession {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final List<DrmInitData.SchemeData> f55770a;

    /* renamed from: b  reason: collision with root package name */
    private final m f55771b;

    /* renamed from: c  reason: collision with root package name */
    private final a f55772c;

    /* renamed from: d  reason: collision with root package name */
    private final b f55773d;

    /* renamed from: e  reason: collision with root package name */
    private final int f55774e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f55775f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f55776g;

    /* renamed from: h  reason: collision with root package name */
    private final HashMap<String, String> f55777h;

    /* renamed from: i  reason: collision with root package name */
    private final cn.m<h.a> f55778i;

    /* renamed from: j  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.upstream.b f55779j;

    /* renamed from: k  reason: collision with root package name */
    private final b2 f55780k;

    /* renamed from: l  reason: collision with root package name */
    private final p f55781l;

    /* renamed from: m  reason: collision with root package name */
    private final UUID f55782m;

    /* renamed from: n  reason: collision with root package name */
    private final Looper f55783n;

    /* renamed from: o  reason: collision with root package name */
    private final e f55784o;

    /* renamed from: p  reason: collision with root package name */
    private int f55785p;

    /* renamed from: q  reason: collision with root package name */
    private int f55786q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private HandlerThread f55787r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private c f55788s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private fn.b f55789t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private DrmSession.DrmSessionException f55790u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private byte[] f55791v;

    /* renamed from: w  reason: collision with root package name */
    private byte[] f55792w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private m.a f55793x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private m.d f55794y;

    /* loaded from: classes8.dex */
    public static final class UnexpectedDrmSessionException extends IOException {
        public UnexpectedDrmSessionException(@Nullable Throwable th2) {
            super(th2);
        }
    }

    /* loaded from: classes8.dex */
    public interface a {
        void a(Exception exc, boolean z10);

        void b(DefaultDrmSession defaultDrmSession);

        void onProvisionCompleted();
    }

    /* loaded from: classes8.dex */
    public interface b {
        void a(DefaultDrmSession defaultDrmSession, int i10);

        void b(DefaultDrmSession defaultDrmSession, int i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes8.dex */
    public class c extends Handler {
        @GuardedBy("this")

        /* renamed from: a  reason: collision with root package name */
        private boolean f55795a;

        public c(Looper looper) {
            super(looper);
        }

        private boolean a(Message message, MediaDrmCallbackException mediaDrmCallbackException) {
            IOException unexpectedDrmSessionException;
            d dVar = (d) message.obj;
            if (!dVar.f55798b) {
                return false;
            }
            int i10 = dVar.f55801e + 1;
            dVar.f55801e = i10;
            if (i10 > DefaultDrmSession.this.f55779j.b(3)) {
                return false;
            }
            sn.i iVar = new sn.i(dVar.f55797a, mediaDrmCallbackException.f55846a, mediaDrmCallbackException.f55847b, mediaDrmCallbackException.f55848c, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - dVar.f55799c, mediaDrmCallbackException.f55849d);
            sn.j jVar = new sn.j(3);
            if (mediaDrmCallbackException.getCause() instanceof IOException) {
                unexpectedDrmSessionException = (IOException) mediaDrmCallbackException.getCause();
            } else {
                unexpectedDrmSessionException = new UnexpectedDrmSessionException(mediaDrmCallbackException.getCause());
            }
            long d10 = DefaultDrmSession.this.f55779j.d(new b.c(iVar, jVar, unexpectedDrmSessionException, dVar.f55801e));
            if (d10 == -9223372036854775807L) {
                return false;
            }
            synchronized (this) {
                try {
                    if (this.f55795a) {
                        return false;
                    }
                    sendMessageDelayed(Message.obtain(message), d10);
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        void b(int i10, Object obj, boolean z10) {
            obtainMessage(i10, new d(sn.i.a(), z10, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        public synchronized void c() {
            removeCallbacksAndMessages(null);
            this.f55795a = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Throwable, java.lang.Exception] */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr;
            d dVar = (d) message.obj;
            try {
                int i10 = message.what;
                if (i10 != 1) {
                    if (i10 == 2) {
                        bArr = DefaultDrmSession.this.f55781l.b(DefaultDrmSession.this.f55782m, (m.a) dVar.f55800d);
                    } else {
                        throw new RuntimeException();
                    }
                } else {
                    bArr = DefaultDrmSession.this.f55781l.a(DefaultDrmSession.this.f55782m, (m.d) dVar.f55800d);
                }
            } catch (MediaDrmCallbackException e10) {
                boolean a10 = a(message, e10);
                bArr = e10;
                if (a10) {
                    return;
                }
            } catch (Exception e11) {
                r.i("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e11);
                bArr = e11;
            }
            DefaultDrmSession.this.f55779j.a(dVar.f55797a);
            synchronized (this) {
                try {
                    if (!this.f55795a) {
                        DefaultDrmSession.this.f55784o.obtainMessage(message.what, Pair.create(dVar.f55800d, bArr)).sendToTarget();
                    }
                } finally {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final long f55797a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f55798b;

        /* renamed from: c  reason: collision with root package name */
        public final long f55799c;

        /* renamed from: d  reason: collision with root package name */
        public final Object f55800d;

        /* renamed from: e  reason: collision with root package name */
        public int f55801e;

        public d(long j10, boolean z10, long j11, Object obj) {
            this.f55797a = j10;
            this.f55798b = z10;
            this.f55799c = j11;
            this.f55800d = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes8.dex */
    public class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i10 = message.what;
            if (i10 == 1) {
                DefaultDrmSession.this.D(obj, obj2);
            } else if (i10 == 2) {
                DefaultDrmSession.this.x(obj, obj2);
            }
        }
    }

    public DefaultDrmSession(UUID uuid, m mVar, a aVar, b bVar, @Nullable List<DrmInitData.SchemeData> list, int i10, boolean z10, boolean z11, @Nullable byte[] bArr, HashMap<String, String> hashMap, p pVar, Looper looper, io.bidmachine.media3.exoplayer.upstream.b bVar2, b2 b2Var) {
        if (i10 == 1 || i10 == 3) {
            cn.a.e(bArr);
        }
        this.f55782m = uuid;
        this.f55772c = aVar;
        this.f55773d = bVar;
        this.f55771b = mVar;
        this.f55774e = i10;
        this.f55775f = z10;
        this.f55776g = z11;
        if (bArr != null) {
            this.f55792w = bArr;
            this.f55770a = null;
        } else {
            this.f55770a = Collections.unmodifiableList((List) cn.a.e(list));
        }
        this.f55777h = hashMap;
        this.f55781l = pVar;
        this.f55778i = new cn.m<>();
        this.f55779j = bVar2;
        this.f55780k = b2Var;
        this.f55785p = 2;
        this.f55783n = looper;
        this.f55784o = new e(looper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(Object obj, Object obj2) {
        if (obj == this.f55794y) {
            if (this.f55785p == 2 || t()) {
                this.f55794y = null;
                if (obj2 instanceof Exception) {
                    this.f55772c.a((Exception) obj2, false);
                    return;
                }
                try {
                    this.f55771b.provideProvisionResponse((byte[]) obj2);
                    this.f55772c.onProvisionCompleted();
                } catch (Exception e10) {
                    this.f55772c.a(e10, true);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean E() {
        /*
            r4 = this;
            boolean r0 = r4.t()
            r1 = 1
            if (r0 == 0) goto L8
            return r1
        L8:
            io.bidmachine.media3.exoplayer.drm.m r0 = r4.f55771b     // Catch: java.lang.NoSuchMethodError -> L32 java.lang.Exception -> L34 android.media.NotProvisionedException -> L45
            byte[] r0 = r0.openSession()     // Catch: java.lang.NoSuchMethodError -> L32 java.lang.Exception -> L34 android.media.NotProvisionedException -> L45
            r4.f55791v = r0     // Catch: java.lang.NoSuchMethodError -> L32 java.lang.Exception -> L34 android.media.NotProvisionedException -> L45
            io.bidmachine.media3.exoplayer.drm.m r2 = r4.f55771b     // Catch: java.lang.NoSuchMethodError -> L32 java.lang.Exception -> L34 android.media.NotProvisionedException -> L45
            hn.b2 r3 = r4.f55780k     // Catch: java.lang.NoSuchMethodError -> L32 java.lang.Exception -> L34 android.media.NotProvisionedException -> L45
            r2.e(r0, r3)     // Catch: java.lang.NoSuchMethodError -> L32 java.lang.Exception -> L34 android.media.NotProvisionedException -> L45
            io.bidmachine.media3.exoplayer.drm.m r0 = r4.f55771b     // Catch: java.lang.NoSuchMethodError -> L32 java.lang.Exception -> L34 android.media.NotProvisionedException -> L45
            byte[] r2 = r4.f55791v     // Catch: java.lang.NoSuchMethodError -> L32 java.lang.Exception -> L34 android.media.NotProvisionedException -> L45
            fn.b r0 = r0.b(r2)     // Catch: java.lang.NoSuchMethodError -> L32 java.lang.Exception -> L34 android.media.NotProvisionedException -> L45
            r4.f55789t = r0     // Catch: java.lang.NoSuchMethodError -> L32 java.lang.Exception -> L34 android.media.NotProvisionedException -> L45
            r0 = 3
            r4.f55785p = r0     // Catch: java.lang.NoSuchMethodError -> L32 java.lang.Exception -> L34 android.media.NotProvisionedException -> L45
            io.bidmachine.media3.exoplayer.drm.b r2 = new io.bidmachine.media3.exoplayer.drm.b     // Catch: java.lang.NoSuchMethodError -> L32 java.lang.Exception -> L34 android.media.NotProvisionedException -> L45
            r2.<init>()     // Catch: java.lang.NoSuchMethodError -> L32 java.lang.Exception -> L34 android.media.NotProvisionedException -> L45
            r4.p(r2)     // Catch: java.lang.NoSuchMethodError -> L32 java.lang.Exception -> L34 android.media.NotProvisionedException -> L45
            byte[] r0 = r4.f55791v     // Catch: java.lang.NoSuchMethodError -> L32 java.lang.Exception -> L34 android.media.NotProvisionedException -> L45
            cn.a.e(r0)     // Catch: java.lang.NoSuchMethodError -> L32 java.lang.Exception -> L34 android.media.NotProvisionedException -> L45
            return r1
        L32:
            r0 = move-exception
            goto L35
        L34:
            r0 = move-exception
        L35:
            boolean r2 = io.bidmachine.media3.exoplayer.drm.j.d(r0)
            if (r2 == 0) goto L41
            io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$a r0 = r4.f55772c
            r0.b(r4)
            goto L4a
        L41:
            r4.w(r0, r1)
            goto L4a
        L45:
            io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$a r0 = r4.f55772c
            r0.b(r4)
        L4a:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.drm.DefaultDrmSession.E():boolean");
    }

    private void F(byte[] bArr, int i10, boolean z10) {
        try {
            this.f55793x = this.f55771b.d(bArr, this.f55770a, i10, this.f55777h);
            ((c) m0.i(this.f55788s)).b(2, cn.a.e(this.f55793x), z10);
        } catch (Exception | NoSuchMethodError e10) {
            y(e10, true);
        }
    }

    private boolean H() {
        try {
            this.f55771b.restoreKeys(this.f55791v, this.f55792w);
            return true;
        } catch (Exception | NoSuchMethodError e10) {
            w(e10, 1);
            return false;
        }
    }

    private void I() {
        if (Thread.currentThread() != this.f55783n.getThread()) {
            r.i("DefaultDrmSession", "DefaultDrmSession accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + this.f55783n.getThread().getName(), new IllegalStateException());
        }
    }

    private void p(cn.l<h.a> lVar) {
        for (h.a aVar : this.f55778i.k()) {
            lVar.accept(aVar);
        }
    }

    private void q(boolean z10) {
        if (this.f55776g) {
            return;
        }
        byte[] bArr = (byte[]) m0.i(this.f55791v);
        int i10 = this.f55774e;
        if (i10 != 0 && i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    cn.a.e(this.f55792w);
                    cn.a.e(this.f55791v);
                    F(this.f55792w, 3, z10);
                }
            } else if (this.f55792w == null || H()) {
                F(bArr, 2, z10);
            }
        } else if (this.f55792w == null) {
            F(bArr, 1, z10);
        } else if (this.f55785p == 4 || H()) {
            long r10 = r();
            if (this.f55774e == 0 && r10 <= 60) {
                r.b("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + r10);
                F(bArr, 2, z10);
            } else if (r10 <= 0) {
                w(new KeysExpiredException(), 2);
            } else {
                this.f55785p = 4;
                p(new cn.l() { // from class: ln.a
                    @Override // cn.l
                    public final void accept(Object obj) {
                        ((h.a) obj).j();
                    }
                });
            }
        }
    }

    private long r() {
        if (!zm.f.f71931d.equals(this.f55782m)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) cn.a.e(q.b(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    private boolean t() {
        int i10 = this.f55785p;
        if (i10 != 3 && i10 != 4) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void u(Throwable th2, h.a aVar) {
        aVar.l((Exception) th2);
    }

    private void w(final Throwable th2, int i10) {
        this.f55790u = new DrmSession.DrmSessionException(th2, j.b(th2, i10));
        r.d("DefaultDrmSession", "DRM session error", th2);
        if (th2 instanceof Exception) {
            p(new cn.l() { // from class: io.bidmachine.media3.exoplayer.drm.c
                @Override // cn.l
                public final void accept(Object obj) {
                    DefaultDrmSession.u(th2, (h.a) obj);
                }
            });
        } else if (th2 instanceof Error) {
            if (!j.e(th2) && !j.d(th2)) {
                throw ((Error) th2);
            }
        } else {
            throw new IllegalStateException("Unexpected Throwable subclass", th2);
        }
        if (this.f55785p != 4) {
            this.f55785p = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(Object obj, Object obj2) {
        if (obj == this.f55793x && t()) {
            this.f55793x = null;
            if (!(obj2 instanceof Exception) && !(obj2 instanceof NoSuchMethodError)) {
                try {
                    byte[] bArr = (byte[]) obj2;
                    if (this.f55774e == 3) {
                        this.f55771b.provideKeyResponse((byte[]) m0.i(this.f55792w), bArr);
                        p(new cn.l() { // from class: ln.b
                            @Override // cn.l
                            public final void accept(Object obj3) {
                                ((h.a) obj3).i();
                            }
                        });
                        return;
                    }
                    byte[] provideKeyResponse = this.f55771b.provideKeyResponse(this.f55791v, bArr);
                    int i10 = this.f55774e;
                    if ((i10 == 2 || (i10 == 0 && this.f55792w != null)) && provideKeyResponse != null && provideKeyResponse.length != 0) {
                        this.f55792w = provideKeyResponse;
                    }
                    this.f55785p = 4;
                    p(new cn.l() { // from class: ln.c
                        @Override // cn.l
                        public final void accept(Object obj3) {
                            ((h.a) obj3).h();
                        }
                    });
                    return;
                } catch (Exception e10) {
                    e = e10;
                    y(e, true);
                    return;
                } catch (NoSuchMethodError e11) {
                    e = e11;
                    y(e, true);
                    return;
                }
            }
            y((Throwable) obj2, false);
        }
    }

    private void y(Throwable th2, boolean z10) {
        int i10;
        if (!(th2 instanceof NotProvisionedException) && !j.d(th2)) {
            if (z10) {
                i10 = 1;
            } else {
                i10 = 2;
            }
            w(th2, i10);
            return;
        }
        this.f55772c.b(this);
    }

    private void z() {
        if (this.f55774e == 0 && this.f55785p == 4) {
            m0.i(this.f55791v);
            q(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void A(int i10) {
        if (i10 == 2) {
            z();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void B() {
        if (E()) {
            q(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void C(Exception exc, boolean z10) {
        int i10;
        if (z10) {
            i10 = 1;
        } else {
            i10 = 3;
        }
        w(exc, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void G() {
        this.f55794y = this.f55771b.getProvisionRequest();
        ((c) m0.i(this.f55788s)).b(1, cn.a.e(this.f55794y), true);
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    public boolean a() {
        I();
        return this.f55775f;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    @Nullable
    public final fn.b b() {
        I();
        return this.f55789t;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    public final UUID c() {
        I();
        return this.f55782m;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    public boolean d(String str) {
        I();
        return this.f55771b.c((byte[]) cn.a.i(this.f55791v), str);
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    public void f(@Nullable h.a aVar) {
        I();
        int i10 = this.f55786q;
        if (i10 <= 0) {
            r.c("DefaultDrmSession", "release() called on a session that's already fully released.");
            return;
        }
        int i11 = i10 - 1;
        this.f55786q = i11;
        if (i11 == 0) {
            this.f55785p = 0;
            ((e) m0.i(this.f55784o)).removeCallbacksAndMessages(null);
            ((c) m0.i(this.f55788s)).c();
            this.f55788s = null;
            ((HandlerThread) m0.i(this.f55787r)).quit();
            this.f55787r = null;
            this.f55789t = null;
            this.f55790u = null;
            this.f55793x = null;
            this.f55794y = null;
            byte[] bArr = this.f55791v;
            if (bArr != null) {
                this.f55771b.closeSession(bArr);
                this.f55791v = null;
            }
        }
        if (aVar != null) {
            this.f55778i.d(aVar);
            if (this.f55778i.c(aVar) == 0) {
                aVar.m();
            }
        }
        this.f55773d.b(this, this.f55786q);
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    public void g(@Nullable h.a aVar) {
        I();
        boolean z10 = false;
        if (this.f55786q < 0) {
            r.c("DefaultDrmSession", "Session reference count less than zero: " + this.f55786q);
            this.f55786q = 0;
        }
        if (aVar != null) {
            this.f55778i.a(aVar);
        }
        int i10 = this.f55786q + 1;
        this.f55786q = i10;
        if (i10 == 1) {
            if (this.f55785p == 2) {
                z10 = true;
            }
            cn.a.g(z10);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.f55787r = handlerThread;
            handlerThread.start();
            this.f55788s = new c(this.f55787r.getLooper());
            if (E()) {
                q(true);
            }
        } else if (aVar != null && t() && this.f55778i.c(aVar) == 1) {
            aVar.k(this.f55785p);
        }
        this.f55773d.a(this, this.f55786q);
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    @Nullable
    public final DrmSession.DrmSessionException getError() {
        I();
        if (this.f55785p == 1) {
            return this.f55790u;
        }
        return null;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    public final int getState() {
        I();
        return this.f55785p;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    @Nullable
    public Map<String, String> queryKeyStatus() {
        I();
        byte[] bArr = this.f55791v;
        if (bArr == null) {
            return null;
        }
        return this.f55771b.queryKeyStatus(bArr);
    }

    public boolean s(byte[] bArr) {
        I();
        return Arrays.equals(this.f55791v, bArr);
    }
}
