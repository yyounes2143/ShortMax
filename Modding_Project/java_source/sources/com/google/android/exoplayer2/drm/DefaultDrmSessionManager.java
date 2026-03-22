package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.work.PeriodicWorkRequest;
import b7.q;
import b7.s0;
import b7.u;
import com.google.android.exoplayer2.drm.DefaultDrmSession;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.h;
import com.google.android.exoplayer2.drm.i;
import com.google.android.exoplayer2.drm.m;
import com.google.android.exoplayer2.v0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.v;
import com.google.common.collect.y;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import p5.t3;
@RequiresApi(18)
/* loaded from: classes4.dex */
public class DefaultDrmSessionManager implements i {

    /* renamed from: c  reason: collision with root package name */
    private final UUID f17513c;

    /* renamed from: d  reason: collision with root package name */
    private final m.c f17514d;

    /* renamed from: e  reason: collision with root package name */
    private final p f17515e;

    /* renamed from: f  reason: collision with root package name */
    private final HashMap<String, String> f17516f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f17517g;

    /* renamed from: h  reason: collision with root package name */
    private final int[] f17518h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f17519i;

    /* renamed from: j  reason: collision with root package name */
    private final f f17520j;

    /* renamed from: k  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f17521k;

    /* renamed from: l  reason: collision with root package name */
    private final g f17522l;

    /* renamed from: m  reason: collision with root package name */
    private final long f17523m;

    /* renamed from: n  reason: collision with root package name */
    private final List<DefaultDrmSession> f17524n;

    /* renamed from: o  reason: collision with root package name */
    private final Set<e> f17525o;

    /* renamed from: p  reason: collision with root package name */
    private final Set<DefaultDrmSession> f17526p;

    /* renamed from: q  reason: collision with root package name */
    private int f17527q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private m f17528r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private DefaultDrmSession f17529s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private DefaultDrmSession f17530t;

    /* renamed from: u  reason: collision with root package name */
    private Looper f17531u;

    /* renamed from: v  reason: collision with root package name */
    private Handler f17532v;

    /* renamed from: w  reason: collision with root package name */
    private int f17533w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private byte[] f17534x;

    /* renamed from: y  reason: collision with root package name */
    private t3 f17535y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    volatile d f17536z;

    /* loaded from: classes4.dex */
    public static final class MissingSchemeDataException extends Exception {
        private MissingSchemeDataException(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: d  reason: collision with root package name */
        private boolean f17540d;

        /* renamed from: f  reason: collision with root package name */
        private boolean f17542f;

        /* renamed from: a  reason: collision with root package name */
        private final HashMap<String, String> f17537a = new HashMap<>();

        /* renamed from: b  reason: collision with root package name */
        private UUID f17538b = o5.l.f63099d;

        /* renamed from: c  reason: collision with root package name */
        private m.c f17539c = n.f17594d;

        /* renamed from: g  reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.b f17543g = new com.google.android.exoplayer2.upstream.a();

        /* renamed from: e  reason: collision with root package name */
        private int[] f17541e = new int[0];

        /* renamed from: h  reason: collision with root package name */
        private long f17544h = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;

        public DefaultDrmSessionManager a(p pVar) {
            return new DefaultDrmSessionManager(this.f17538b, this.f17539c, pVar, this.f17537a, this.f17540d, this.f17541e, this.f17542f, this.f17543g, this.f17544h);
        }

        public b b(boolean z10) {
            this.f17540d = z10;
            return this;
        }

        public b c(boolean z10) {
            this.f17542f = z10;
            return this;
        }

        public b d(int... iArr) {
            for (int i10 : iArr) {
                boolean z10 = true;
                if (i10 != 2 && i10 != 1) {
                    z10 = false;
                }
                b7.a.a(z10);
            }
            this.f17541e = (int[]) iArr.clone();
            return this;
        }

        public b e(UUID uuid, m.c cVar) {
            this.f17538b = (UUID) b7.a.e(uuid);
            this.f17539c = (m.c) b7.a.e(cVar);
            return this;
        }
    }

    /* loaded from: classes4.dex */
    private class c implements m.b {
        private c() {
        }

        @Override // com.google.android.exoplayer2.drm.m.b
        public void a(m mVar, @Nullable byte[] bArr, int i10, int i11, @Nullable byte[] bArr2) {
            ((d) b7.a.e(DefaultDrmSessionManager.this.f17536z)).obtainMessage(i10, bArr).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes4.dex */
    public class d extends Handler {
        public d(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.f17524n) {
                if (defaultDrmSession.p(bArr)) {
                    defaultDrmSession.x(message.what);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class e implements i.b {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final h.a f17547b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private DrmSession f17548c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f17549d;

        public e(@Nullable h.a aVar) {
            this.f17547b = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(v0 v0Var) {
            if (DefaultDrmSessionManager.this.f17527q != 0 && !this.f17549d) {
                DefaultDrmSessionManager defaultDrmSessionManager = DefaultDrmSessionManager.this;
                this.f17548c = defaultDrmSessionManager.s((Looper) b7.a.e(defaultDrmSessionManager.f17531u), this.f17547b, v0Var, false);
                DefaultDrmSessionManager.this.f17525o.add(this);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g() {
            if (this.f17549d) {
                return;
            }
            DrmSession drmSession = this.f17548c;
            if (drmSession != null) {
                drmSession.e(this.f17547b);
            }
            DefaultDrmSessionManager.this.f17525o.remove(this);
            this.f17549d = true;
        }

        public void e(final v0 v0Var) {
            ((Handler) b7.a.e(DefaultDrmSessionManager.this.f17532v)).post(new Runnable() { // from class: com.google.android.exoplayer2.drm.d
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultDrmSessionManager.e.this.f(v0Var);
                }
            });
        }

        @Override // com.google.android.exoplayer2.drm.i.b
        public void release() {
            s0.C0((Handler) b7.a.e(DefaultDrmSessionManager.this.f17532v), new Runnable() { // from class: com.google.android.exoplayer2.drm.e
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultDrmSessionManager.e.this.g();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class f implements DefaultDrmSession.a {

        /* renamed from: a  reason: collision with root package name */
        private final Set<DefaultDrmSession> f17551a = new HashSet();
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private DefaultDrmSession f17552b;

        public f(DefaultDrmSessionManager defaultDrmSessionManager) {
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.a
        public void a(Exception exc, boolean z10) {
            this.f17552b = null;
            ImmutableList u10 = ImmutableList.u(this.f17551a);
            this.f17551a.clear();
            y it = u10.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).z(exc, z10);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.a
        public void b(DefaultDrmSession defaultDrmSession) {
            this.f17551a.add(defaultDrmSession);
            if (this.f17552b != null) {
                return;
            }
            this.f17552b = defaultDrmSession;
            defaultDrmSession.D();
        }

        public void c(DefaultDrmSession defaultDrmSession) {
            this.f17551a.remove(defaultDrmSession);
            if (this.f17552b == defaultDrmSession) {
                this.f17552b = null;
                if (!this.f17551a.isEmpty()) {
                    DefaultDrmSession next = this.f17551a.iterator().next();
                    this.f17552b = next;
                    next.D();
                }
            }
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.a
        public void onProvisionCompleted() {
            this.f17552b = null;
            ImmutableList u10 = ImmutableList.u(this.f17551a);
            this.f17551a.clear();
            y it = u10.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).y();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class g implements DefaultDrmSession.b {
        private g() {
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.b
        public void a(final DefaultDrmSession defaultDrmSession, int i10) {
            if (i10 == 1 && DefaultDrmSessionManager.this.f17527q > 0 && DefaultDrmSessionManager.this.f17523m != -9223372036854775807L) {
                DefaultDrmSessionManager.this.f17526p.add(defaultDrmSession);
                ((Handler) b7.a.e(DefaultDrmSessionManager.this.f17532v)).postAtTime(new Runnable() { // from class: com.google.android.exoplayer2.drm.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultDrmSession.this.e(null);
                    }
                }, defaultDrmSession, SystemClock.uptimeMillis() + DefaultDrmSessionManager.this.f17523m);
            } else if (i10 == 0) {
                DefaultDrmSessionManager.this.f17524n.remove(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f17529s == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f17529s = null;
                }
                if (DefaultDrmSessionManager.this.f17530t == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f17530t = null;
                }
                DefaultDrmSessionManager.this.f17520j.c(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f17523m != -9223372036854775807L) {
                    ((Handler) b7.a.e(DefaultDrmSessionManager.this.f17532v)).removeCallbacksAndMessages(defaultDrmSession);
                    DefaultDrmSessionManager.this.f17526p.remove(defaultDrmSession);
                }
            }
            DefaultDrmSessionManager.this.B();
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.b
        public void b(DefaultDrmSession defaultDrmSession, int i10) {
            if (DefaultDrmSessionManager.this.f17523m != -9223372036854775807L) {
                DefaultDrmSessionManager.this.f17526p.remove(defaultDrmSession);
                ((Handler) b7.a.e(DefaultDrmSessionManager.this.f17532v)).removeCallbacksAndMessages(defaultDrmSession);
            }
        }
    }

    private void A(Looper looper) {
        if (this.f17536z == null) {
            this.f17536z = new d(looper);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        if (this.f17528r != null && this.f17527q == 0 && this.f17524n.isEmpty() && this.f17525o.isEmpty()) {
            ((m) b7.a.e(this.f17528r)).release();
            this.f17528r = null;
        }
    }

    private void C() {
        y it = ImmutableSet.t(this.f17526p).iterator();
        while (it.hasNext()) {
            ((DrmSession) it.next()).e(null);
        }
    }

    private void D() {
        y it = ImmutableSet.t(this.f17525o).iterator();
        while (it.hasNext()) {
            ((e) it.next()).release();
        }
    }

    private void F(DrmSession drmSession, @Nullable h.a aVar) {
        drmSession.e(aVar);
        if (this.f17523m != -9223372036854775807L) {
            drmSession.e(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public DrmSession s(Looper looper, @Nullable h.a aVar, v0 v0Var, boolean z10) {
        List<DrmInitData.SchemeData> list;
        A(looper);
        DrmInitData drmInitData = v0Var.f19160o;
        if (drmInitData == null) {
            return z(u.i(v0Var.f19157l), z10);
        }
        DefaultDrmSession defaultDrmSession = null;
        if (this.f17534x == null) {
            list = x((DrmInitData) b7.a.e(drmInitData), this.f17513c, false);
            if (list.isEmpty()) {
                MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.f17513c);
                q.d("DefaultDrmSessionMgr", "DRM error", missingSchemeDataException);
                if (aVar != null) {
                    aVar.l(missingSchemeDataException);
                }
                return new l(new DrmSession.DrmSessionException(missingSchemeDataException, 6003));
            }
        } else {
            list = null;
        }
        if (!this.f17517g) {
            defaultDrmSession = this.f17530t;
        } else {
            Iterator<DefaultDrmSession> it = this.f17524n.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                DefaultDrmSession next = it.next();
                if (s0.c(next.f17481a, list)) {
                    defaultDrmSession = next;
                    break;
                }
            }
        }
        if (defaultDrmSession == null) {
            defaultDrmSession = w(list, false, aVar, z10);
            if (!this.f17517g) {
                this.f17530t = defaultDrmSession;
            }
            this.f17524n.add(defaultDrmSession);
        } else {
            defaultDrmSession.g(aVar);
        }
        return defaultDrmSession;
    }

    private static boolean t(DrmSession drmSession) {
        if (drmSession.getState() == 1 && (s0.f2506a < 19 || (((DrmSession.DrmSessionException) b7.a.e(drmSession.getError())).getCause() instanceof ResourceBusyException))) {
            return true;
        }
        return false;
    }

    private boolean u(DrmInitData drmInitData) {
        if (this.f17534x != null) {
            return true;
        }
        if (x(drmInitData, this.f17513c, true).isEmpty()) {
            if (drmInitData.f17557d != 1 || !drmInitData.c(0).b(o5.l.f63097b)) {
                return false;
            }
            q.i("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.f17513c);
        }
        String str = drmInitData.f17556c;
        if (str == null || C.CENC_TYPE_cenc.equals(str)) {
            return true;
        }
        if (C.CENC_TYPE_cbcs.equals(str)) {
            if (s0.f2506a >= 25) {
                return true;
            }
            return false;
        } else if (!C.CENC_TYPE_cbc1.equals(str) && !C.CENC_TYPE_cens.equals(str)) {
            return true;
        } else {
            return false;
        }
    }

    private DefaultDrmSession v(@Nullable List<DrmInitData.SchemeData> list, boolean z10, @Nullable h.a aVar) {
        b7.a.e(this.f17528r);
        DefaultDrmSession defaultDrmSession = new DefaultDrmSession(this.f17513c, this.f17528r, this.f17520j, this.f17522l, list, this.f17533w, this.f17519i | z10, z10, this.f17534x, this.f17516f, this.f17515e, (Looper) b7.a.e(this.f17531u), this.f17521k, (t3) b7.a.e(this.f17535y));
        defaultDrmSession.g(aVar);
        if (this.f17523m != -9223372036854775807L) {
            defaultDrmSession.g(null);
        }
        return defaultDrmSession;
    }

    private DefaultDrmSession w(@Nullable List<DrmInitData.SchemeData> list, boolean z10, @Nullable h.a aVar, boolean z11) {
        DefaultDrmSession v10 = v(list, z10, aVar);
        if (t(v10) && !this.f17526p.isEmpty()) {
            C();
            F(v10, aVar);
            v10 = v(list, z10, aVar);
        }
        if (t(v10) && z11 && !this.f17525o.isEmpty()) {
            D();
            if (!this.f17526p.isEmpty()) {
                C();
            }
            F(v10, aVar);
            return v(list, z10, aVar);
        }
        return v10;
    }

    private static List<DrmInitData.SchemeData> x(DrmInitData drmInitData, UUID uuid, boolean z10) {
        ArrayList arrayList = new ArrayList(drmInitData.f17557d);
        for (int i10 = 0; i10 < drmInitData.f17557d; i10++) {
            DrmInitData.SchemeData c10 = drmInitData.c(i10);
            if ((c10.b(uuid) || (o5.l.f63098c.equals(uuid) && c10.b(o5.l.f63097b))) && (c10.f17562e != null || z10)) {
                arrayList.add(c10);
            }
        }
        return arrayList;
    }

    private synchronized void y(Looper looper) {
        boolean z10;
        try {
            Looper looper2 = this.f17531u;
            if (looper2 == null) {
                this.f17531u = looper;
                this.f17532v = new Handler(looper);
            } else {
                if (looper2 == looper) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                b7.a.g(z10);
                b7.a.e(this.f17532v);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Nullable
    private DrmSession z(int i10, boolean z10) {
        m mVar = (m) b7.a.e(this.f17528r);
        if ((mVar.a() == 2 && s5.l.f66322d) || s0.t0(this.f17518h, i10) == -1 || mVar.a() == 1) {
            return null;
        }
        DefaultDrmSession defaultDrmSession = this.f17529s;
        if (defaultDrmSession == null) {
            DefaultDrmSession w10 = w(ImmutableList.A(), true, null, z10);
            this.f17524n.add(w10);
            this.f17529s = w10;
        } else {
            defaultDrmSession.g(null);
        }
        return this.f17529s;
    }

    public void E(int i10, @Nullable byte[] bArr) {
        b7.a.g(this.f17524n.isEmpty());
        if (i10 == 1 || i10 == 3) {
            b7.a.e(bArr);
        }
        this.f17533w = i10;
        this.f17534x = bArr;
    }

    @Override // com.google.android.exoplayer2.drm.i
    public void a(Looper looper, t3 t3Var) {
        y(looper);
        this.f17535y = t3Var;
    }

    @Override // com.google.android.exoplayer2.drm.i
    @Nullable
    public DrmSession b(@Nullable h.a aVar, v0 v0Var) {
        boolean z10;
        if (this.f17527q > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        b7.a.i(this.f17531u);
        return s(this.f17531u, aVar, v0Var, true);
    }

    @Override // com.google.android.exoplayer2.drm.i
    public i.b c(@Nullable h.a aVar, v0 v0Var) {
        boolean z10;
        if (this.f17527q > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        b7.a.i(this.f17531u);
        e eVar = new e(aVar);
        eVar.e(v0Var);
        return eVar;
    }

    @Override // com.google.android.exoplayer2.drm.i
    public int d(v0 v0Var) {
        int a10 = ((m) b7.a.e(this.f17528r)).a();
        DrmInitData drmInitData = v0Var.f19160o;
        if (drmInitData == null) {
            if (s0.t0(this.f17518h, u.i(v0Var.f19157l)) == -1) {
                return 0;
            }
            return a10;
        } else if (!u(drmInitData)) {
            return 1;
        } else {
            return a10;
        }
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final void prepare() {
        int i10 = this.f17527q;
        this.f17527q = i10 + 1;
        if (i10 != 0) {
            return;
        }
        if (this.f17528r == null) {
            m a10 = this.f17514d.a(this.f17513c);
            this.f17528r = a10;
            a10.e(new c());
        } else if (this.f17523m != -9223372036854775807L) {
            for (int i11 = 0; i11 < this.f17524n.size(); i11++) {
                this.f17524n.get(i11).g(null);
            }
        }
    }

    @Override // com.google.android.exoplayer2.drm.i
    public final void release() {
        int i10 = this.f17527q - 1;
        this.f17527q = i10;
        if (i10 != 0) {
            return;
        }
        if (this.f17523m != -9223372036854775807L) {
            ArrayList arrayList = new ArrayList(this.f17524n);
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                ((DefaultDrmSession) arrayList.get(i11)).e(null);
            }
        }
        D();
        B();
    }

    private DefaultDrmSessionManager(UUID uuid, m.c cVar, p pVar, HashMap<String, String> hashMap, boolean z10, int[] iArr, boolean z11, com.google.android.exoplayer2.upstream.b bVar, long j10) {
        b7.a.e(uuid);
        b7.a.b(!o5.l.f63097b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f17513c = uuid;
        this.f17514d = cVar;
        this.f17515e = pVar;
        this.f17516f = hashMap;
        this.f17517g = z10;
        this.f17518h = iArr;
        this.f17519i = z11;
        this.f17521k = bVar;
        this.f17520j = new f(this);
        this.f17522l = new g();
        this.f17533w = 0;
        this.f17524n = new ArrayList();
        this.f17525o = v.h();
        this.f17526p = v.h();
        this.f17523m = j10;
    }
}
