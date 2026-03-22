package com.google.android.exoplayer2.drm;

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
import androidx.annotation.RequiresApi;
import b7.q;
import b7.s0;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.h;
import com.google.android.exoplayer2.drm.m;
import com.google.android.exoplayer2.upstream.b;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import p5.t3;
import s5.s;
/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(18)
/* loaded from: classes4.dex */
public class DefaultDrmSession implements DrmSession {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final List<DrmInitData.SchemeData> f17481a;

    /* renamed from: b  reason: collision with root package name */
    private final m f17482b;

    /* renamed from: c  reason: collision with root package name */
    private final a f17483c;

    /* renamed from: d  reason: collision with root package name */
    private final b f17484d;

    /* renamed from: e  reason: collision with root package name */
    private final int f17485e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f17486f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f17487g;

    /* renamed from: h  reason: collision with root package name */
    private final HashMap<String, String> f17488h;

    /* renamed from: i  reason: collision with root package name */
    private final b7.i<h.a> f17489i;

    /* renamed from: j  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f17490j;

    /* renamed from: k  reason: collision with root package name */
    private final t3 f17491k;

    /* renamed from: l  reason: collision with root package name */
    final p f17492l;

    /* renamed from: m  reason: collision with root package name */
    final UUID f17493m;

    /* renamed from: n  reason: collision with root package name */
    final e f17494n;

    /* renamed from: o  reason: collision with root package name */
    private int f17495o;

    /* renamed from: p  reason: collision with root package name */
    private int f17496p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private HandlerThread f17497q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private c f17498r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private r5.b f17499s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private DrmSession.DrmSessionException f17500t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private byte[] f17501u;

    /* renamed from: v  reason: collision with root package name */
    private byte[] f17502v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private m.a f17503w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private m.d f17504x;

    /* loaded from: classes4.dex */
    public static final class UnexpectedDrmSessionException extends IOException {
        public UnexpectedDrmSessionException(@Nullable Throwable th2) {
            super(th2);
        }
    }

    /* loaded from: classes4.dex */
    public interface a {
        void a(Exception exc, boolean z10);

        void b(DefaultDrmSession defaultDrmSession);

        void onProvisionCompleted();
    }

    /* loaded from: classes4.dex */
    public interface b {
        void a(DefaultDrmSession defaultDrmSession, int i10);

        void b(DefaultDrmSession defaultDrmSession, int i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes4.dex */
    public class c extends Handler {
        @GuardedBy("this")

        /* renamed from: a  reason: collision with root package name */
        private boolean f17505a;

        public c(Looper looper) {
            super(looper);
        }

        private boolean a(Message message, MediaDrmCallbackException mediaDrmCallbackException) {
            IOException unexpectedDrmSessionException;
            d dVar = (d) message.obj;
            if (!dVar.f17508b) {
                return false;
            }
            int i10 = dVar.f17511e + 1;
            dVar.f17511e = i10;
            if (i10 > DefaultDrmSession.this.f17490j.b(3)) {
                return false;
            }
            n6.h hVar = new n6.h(dVar.f17507a, mediaDrmCallbackException.f17564a, mediaDrmCallbackException.f17565b, mediaDrmCallbackException.f17566c, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - dVar.f17509c, mediaDrmCallbackException.f17567d);
            n6.i iVar = new n6.i(3);
            if (mediaDrmCallbackException.getCause() instanceof IOException) {
                unexpectedDrmSessionException = (IOException) mediaDrmCallbackException.getCause();
            } else {
                unexpectedDrmSessionException = new UnexpectedDrmSessionException(mediaDrmCallbackException.getCause());
            }
            long c10 = DefaultDrmSession.this.f17490j.c(new b.a(hVar, iVar, unexpectedDrmSessionException, dVar.f17511e));
            if (c10 == -9223372036854775807L) {
                return false;
            }
            synchronized (this) {
                try {
                    if (this.f17505a) {
                        return false;
                    }
                    sendMessageDelayed(Message.obtain(message), c10);
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        void b(int i10, Object obj, boolean z10) {
            obtainMessage(i10, new d(n6.h.a(), z10, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        public synchronized void c() {
            removeCallbacksAndMessages(null);
            this.f17505a = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Throwable, java.lang.Exception] */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr;
            d dVar = (d) message.obj;
            try {
                int i10 = message.what;
                if (i10 != 0) {
                    if (i10 == 1) {
                        DefaultDrmSession defaultDrmSession = DefaultDrmSession.this;
                        bArr = defaultDrmSession.f17492l.a(defaultDrmSession.f17493m, (m.a) dVar.f17510d);
                    } else {
                        throw new RuntimeException();
                    }
                } else {
                    DefaultDrmSession defaultDrmSession2 = DefaultDrmSession.this;
                    bArr = defaultDrmSession2.f17492l.b(defaultDrmSession2.f17493m, (m.d) dVar.f17510d);
                }
            } catch (MediaDrmCallbackException e10) {
                boolean a10 = a(message, e10);
                bArr = e10;
                if (a10) {
                    return;
                }
            } catch (Exception e11) {
                q.j("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e11);
                bArr = e11;
            }
            DefaultDrmSession.this.f17490j.a(dVar.f17507a);
            synchronized (this) {
                try {
                    if (!this.f17505a) {
                        DefaultDrmSession.this.f17494n.obtainMessage(message.what, Pair.create(dVar.f17510d, bArr)).sendToTarget();
                    }
                } finally {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final long f17507a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f17508b;

        /* renamed from: c  reason: collision with root package name */
        public final long f17509c;

        /* renamed from: d  reason: collision with root package name */
        public final Object f17510d;

        /* renamed from: e  reason: collision with root package name */
        public int f17511e;

        public d(long j10, boolean z10, long j11, Object obj) {
            this.f17507a = j10;
            this.f17508b = z10;
            this.f17509c = j11;
            this.f17510d = obj;
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes4.dex */
    private class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i10 = message.what;
            if (i10 == 0) {
                DefaultDrmSession.this.A(obj, obj2);
            } else if (i10 == 1) {
                DefaultDrmSession.this.u(obj, obj2);
            }
        }
    }

    public DefaultDrmSession(UUID uuid, m mVar, a aVar, b bVar, @Nullable List<DrmInitData.SchemeData> list, int i10, boolean z10, boolean z11, @Nullable byte[] bArr, HashMap<String, String> hashMap, p pVar, Looper looper, com.google.android.exoplayer2.upstream.b bVar2, t3 t3Var) {
        if (i10 == 1 || i10 == 3) {
            b7.a.e(bArr);
        }
        this.f17493m = uuid;
        this.f17483c = aVar;
        this.f17484d = bVar;
        this.f17482b = mVar;
        this.f17485e = i10;
        this.f17486f = z10;
        this.f17487g = z11;
        if (bArr != null) {
            this.f17502v = bArr;
            this.f17481a = null;
        } else {
            this.f17481a = Collections.unmodifiableList((List) b7.a.e(list));
        }
        this.f17488h = hashMap;
        this.f17492l = pVar;
        this.f17489i = new b7.i<>();
        this.f17490j = bVar2;
        this.f17491k = t3Var;
        this.f17495o = 2;
        this.f17494n = new e(looper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(Object obj, Object obj2) {
        if (obj == this.f17504x) {
            if (this.f17495o == 2 || q()) {
                this.f17504x = null;
                if (obj2 instanceof Exception) {
                    this.f17483c.a((Exception) obj2, false);
                    return;
                }
                try {
                    this.f17482b.provideProvisionResponse((byte[]) obj2);
                    this.f17483c.onProvisionCompleted();
                } catch (Exception e10) {
                    this.f17483c.a(e10, true);
                }
            }
        }
    }

    private boolean B() {
        if (q()) {
            return true;
        }
        try {
            byte[] openSession = this.f17482b.openSession();
            this.f17501u = openSession;
            this.f17482b.f(openSession, this.f17491k);
            this.f17499s = this.f17482b.b(this.f17501u);
            this.f17495o = 3;
            m(new b7.h() { // from class: com.google.android.exoplayer2.drm.b
                @Override // b7.h
                public final void accept(Object obj) {
                    ((h.a) obj).k(r1);
                }
            });
            b7.a.e(this.f17501u);
            return true;
        } catch (NotProvisionedException unused) {
            this.f17483c.b(this);
            return false;
        } catch (Exception e10) {
            t(e10, 1);
            return false;
        }
    }

    private void C(byte[] bArr, int i10, boolean z10) {
        try {
            this.f17503w = this.f17482b.d(bArr, this.f17481a, i10, this.f17488h);
            ((c) s0.j(this.f17498r)).b(1, b7.a.e(this.f17503w), z10);
        } catch (Exception e10) {
            v(e10, true);
        }
    }

    private boolean E() {
        try {
            this.f17482b.restoreKeys(this.f17501u, this.f17502v);
            return true;
        } catch (Exception e10) {
            t(e10, 1);
            return false;
        }
    }

    private void m(b7.h<h.a> hVar) {
        for (h.a aVar : this.f17489i.k()) {
            hVar.accept(aVar);
        }
    }

    private void n(boolean z10) {
        if (this.f17487g) {
            return;
        }
        byte[] bArr = (byte[]) s0.j(this.f17501u);
        int i10 = this.f17485e;
        if (i10 != 0 && i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    b7.a.e(this.f17502v);
                    b7.a.e(this.f17501u);
                    C(this.f17502v, 3, z10);
                }
            } else if (this.f17502v == null || E()) {
                C(bArr, 2, z10);
            }
        } else if (this.f17502v == null) {
            C(bArr, 1, z10);
        } else if (this.f17495o == 4 || E()) {
            long o10 = o();
            if (this.f17485e == 0 && o10 <= 60) {
                q.b("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + o10);
                C(bArr, 2, z10);
            } else if (o10 <= 0) {
                t(new KeysExpiredException(), 2);
            } else {
                this.f17495o = 4;
                m(new b7.h() { // from class: s5.a
                    @Override // b7.h
                    public final void accept(Object obj) {
                        ((h.a) obj).j();
                    }
                });
            }
        }
    }

    private long o() {
        if (!o5.l.f63099d.equals(this.f17493m)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) b7.a.e(s.b(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    private boolean q() {
        int i10 = this.f17495o;
        if (i10 != 3 && i10 != 4) {
            return false;
        }
        return true;
    }

    private void t(final Exception exc, int i10) {
        this.f17500t = new DrmSession.DrmSessionException(exc, j.a(exc, i10));
        q.d("DefaultDrmSession", "DRM session error", exc);
        m(new b7.h() { // from class: com.google.android.exoplayer2.drm.c
            @Override // b7.h
            public final void accept(Object obj) {
                ((h.a) obj).l(exc);
            }
        });
        if (this.f17495o != 4) {
            this.f17495o = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(Object obj, Object obj2) {
        if (obj == this.f17503w && q()) {
            this.f17503w = null;
            if (obj2 instanceof Exception) {
                v((Exception) obj2, false);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.f17485e == 3) {
                    this.f17482b.provideKeyResponse((byte[]) s0.j(this.f17502v), bArr);
                    m(new b7.h() { // from class: s5.b
                        @Override // b7.h
                        public final void accept(Object obj3) {
                            ((h.a) obj3).i();
                        }
                    });
                    return;
                }
                byte[] provideKeyResponse = this.f17482b.provideKeyResponse(this.f17501u, bArr);
                int i10 = this.f17485e;
                if ((i10 == 2 || (i10 == 0 && this.f17502v != null)) && provideKeyResponse != null && provideKeyResponse.length != 0) {
                    this.f17502v = provideKeyResponse;
                }
                this.f17495o = 4;
                m(new b7.h() { // from class: s5.c
                    @Override // b7.h
                    public final void accept(Object obj3) {
                        ((h.a) obj3).h();
                    }
                });
            } catch (Exception e10) {
                v(e10, true);
            }
        }
    }

    private void v(Exception exc, boolean z10) {
        int i10;
        if (exc instanceof NotProvisionedException) {
            this.f17483c.b(this);
            return;
        }
        if (z10) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        t(exc, i10);
    }

    private void w() {
        if (this.f17485e == 0 && this.f17495o == 4) {
            s0.j(this.f17501u);
            n(false);
        }
    }

    public void D() {
        this.f17504x = this.f17482b.getProvisionRequest();
        ((c) s0.j(this.f17498r)).b(0, b7.a.e(this.f17504x), true);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean a() {
        return this.f17486f;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public final r5.b b() {
        return this.f17499s;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final UUID c() {
        return this.f17493m;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean d(String str) {
        return this.f17482b.c((byte[]) b7.a.i(this.f17501u), str);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void e(@Nullable h.a aVar) {
        int i10 = this.f17496p;
        if (i10 <= 0) {
            q.c("DefaultDrmSession", "release() called on a session that's already fully released.");
            return;
        }
        int i11 = i10 - 1;
        this.f17496p = i11;
        if (i11 == 0) {
            this.f17495o = 0;
            ((e) s0.j(this.f17494n)).removeCallbacksAndMessages(null);
            ((c) s0.j(this.f17498r)).c();
            this.f17498r = null;
            ((HandlerThread) s0.j(this.f17497q)).quit();
            this.f17497q = null;
            this.f17499s = null;
            this.f17500t = null;
            this.f17503w = null;
            this.f17504x = null;
            byte[] bArr = this.f17501u;
            if (bArr != null) {
                this.f17482b.closeSession(bArr);
                this.f17501u = null;
            }
        }
        if (aVar != null) {
            this.f17489i.d(aVar);
            if (this.f17489i.c(aVar) == 0) {
                aVar.m();
            }
        }
        this.f17484d.a(this, this.f17496p);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void g(@Nullable h.a aVar) {
        boolean z10 = false;
        if (this.f17496p < 0) {
            q.c("DefaultDrmSession", "Session reference count less than zero: " + this.f17496p);
            this.f17496p = 0;
        }
        if (aVar != null) {
            this.f17489i.a(aVar);
        }
        int i10 = this.f17496p + 1;
        this.f17496p = i10;
        if (i10 == 1) {
            if (this.f17495o == 2) {
                z10 = true;
            }
            b7.a.g(z10);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.f17497q = handlerThread;
            handlerThread.start();
            this.f17498r = new c(this.f17497q.getLooper());
            if (B()) {
                n(true);
            }
        } else if (aVar != null && q() && this.f17489i.c(aVar) == 1) {
            aVar.k(this.f17495o);
        }
        this.f17484d.b(this, this.f17496p);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public final DrmSession.DrmSessionException getError() {
        if (this.f17495o == 1) {
            return this.f17500t;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final int getState() {
        return this.f17495o;
    }

    public boolean p(byte[] bArr) {
        return Arrays.equals(this.f17501u, bArr);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public Map<String, String> queryKeyStatus() {
        byte[] bArr = this.f17501u;
        if (bArr == null) {
            return null;
        }
        return this.f17482b.queryKeyStatus(bArr);
    }

    public void x(int i10) {
        if (i10 == 2) {
            w();
        }
    }

    public void y() {
        if (B()) {
            n(true);
        }
    }

    public void z(Exception exc, boolean z10) {
        int i10;
        if (z10) {
            i10 = 1;
        } else {
            i10 = 3;
        }
        t(exc, i10);
    }
}
