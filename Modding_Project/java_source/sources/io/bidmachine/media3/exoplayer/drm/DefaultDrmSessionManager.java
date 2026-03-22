package io.bidmachine.media3.exoplayer.drm;

import android.annotation.SuppressLint;
import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.work.PeriodicWorkRequest;
import cn.m0;
import cn.r;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.v;
import com.google.common.collect.y;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import hn.b2;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.exoplayer.drm.DefaultDrmSession;
import io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager;
import io.bidmachine.media3.exoplayer.drm.DrmSession;
import io.bidmachine.media3.exoplayer.drm.h;
import io.bidmachine.media3.exoplayer.drm.i;
import io.bidmachine.media3.exoplayer.drm.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import zm.u;
/* loaded from: classes8.dex */
public class DefaultDrmSessionManager implements i {

    /* renamed from: b  reason: collision with root package name */
    private final UUID f55803b;

    /* renamed from: c  reason: collision with root package name */
    private final m.c f55804c;

    /* renamed from: d  reason: collision with root package name */
    private final p f55805d;

    /* renamed from: e  reason: collision with root package name */
    private final HashMap<String, String> f55806e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f55807f;

    /* renamed from: g  reason: collision with root package name */
    private final int[] f55808g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f55809h;

    /* renamed from: i  reason: collision with root package name */
    private final f f55810i;

    /* renamed from: j  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.upstream.b f55811j;

    /* renamed from: k  reason: collision with root package name */
    private final g f55812k;

    /* renamed from: l  reason: collision with root package name */
    private final long f55813l;

    /* renamed from: m  reason: collision with root package name */
    private final List<DefaultDrmSession> f55814m;

    /* renamed from: n  reason: collision with root package name */
    private final Set<e> f55815n;

    /* renamed from: o  reason: collision with root package name */
    private final Set<DefaultDrmSession> f55816o;

    /* renamed from: p  reason: collision with root package name */
    private int f55817p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private m f55818q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private DefaultDrmSession f55819r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private DefaultDrmSession f55820s;

    /* renamed from: t  reason: collision with root package name */
    private Looper f55821t;

    /* renamed from: u  reason: collision with root package name */
    private Handler f55822u;

    /* renamed from: v  reason: collision with root package name */
    private int f55823v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private byte[] f55824w;

    /* renamed from: x  reason: collision with root package name */
    private b2 f55825x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    volatile d f55826y;

    /* loaded from: classes8.dex */
    public static final class MissingSchemeDataException extends Exception {
        private MissingSchemeDataException(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: d  reason: collision with root package name */
        private boolean f55830d;

        /* renamed from: a  reason: collision with root package name */
        private final HashMap<String, String> f55827a = new HashMap<>();

        /* renamed from: b  reason: collision with root package name */
        private UUID f55828b = zm.f.f71931d;

        /* renamed from: c  reason: collision with root package name */
        private m.c f55829c = n.f55876d;

        /* renamed from: e  reason: collision with root package name */
        private int[] f55831e = new int[0];

        /* renamed from: f  reason: collision with root package name */
        private boolean f55832f = true;

        /* renamed from: g  reason: collision with root package name */
        private io.bidmachine.media3.exoplayer.upstream.b f55833g = new io.bidmachine.media3.exoplayer.upstream.a();

        /* renamed from: h  reason: collision with root package name */
        private long f55834h = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;

        public DefaultDrmSessionManager a(p pVar) {
            return new DefaultDrmSessionManager(this.f55828b, this.f55829c, pVar, this.f55827a, this.f55830d, this.f55831e, this.f55832f, this.f55833g, this.f55834h);
        }

        public b b(io.bidmachine.media3.exoplayer.upstream.b bVar) {
            this.f55833g = (io.bidmachine.media3.exoplayer.upstream.b) cn.a.e(bVar);
            return this;
        }

        public b c(boolean z10) {
            this.f55830d = z10;
            return this;
        }

        public b d(boolean z10) {
            this.f55832f = z10;
            return this;
        }

        public b e(int... iArr) {
            for (int i10 : iArr) {
                boolean z10 = true;
                if (i10 != 2 && i10 != 1) {
                    z10 = false;
                }
                cn.a.a(z10);
            }
            this.f55831e = (int[]) iArr.clone();
            return this;
        }

        public b f(UUID uuid, m.c cVar) {
            this.f55828b = (UUID) cn.a.e(uuid);
            this.f55829c = (m.c) cn.a.e(cVar);
            return this;
        }
    }

    /* loaded from: classes8.dex */
    private class c implements m.b {
        private c() {
        }

        @Override // io.bidmachine.media3.exoplayer.drm.m.b
        public void a(m mVar, @Nullable byte[] bArr, int i10, int i11, @Nullable byte[] bArr2) {
            ((d) cn.a.e(DefaultDrmSessionManager.this.f55826y)).obtainMessage(i10, bArr).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes8.dex */
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
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.f55814m) {
                if (defaultDrmSession.s(bArr)) {
                    defaultDrmSession.A(message.what);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public class e implements i.b {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final h.a f55837b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private DrmSession f55838c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f55839d;

        public e(@Nullable h.a aVar) {
            this.f55837b = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(io.bidmachine.media3.common.a aVar) {
            if (DefaultDrmSessionManager.this.f55817p != 0 && !this.f55839d) {
                DefaultDrmSessionManager defaultDrmSessionManager = DefaultDrmSessionManager.this;
                this.f55838c = defaultDrmSessionManager.s((Looper) cn.a.e(defaultDrmSessionManager.f55821t), this.f55837b, aVar, false);
                DefaultDrmSessionManager.this.f55815n.add(this);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g() {
            if (this.f55839d) {
                return;
            }
            DrmSession drmSession = this.f55838c;
            if (drmSession != null) {
                drmSession.f(this.f55837b);
            }
            DefaultDrmSessionManager.this.f55815n.remove(this);
            this.f55839d = true;
        }

        public void e(final io.bidmachine.media3.common.a aVar) {
            ((Handler) cn.a.e(DefaultDrmSessionManager.this.f55822u)).post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.drm.e
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultDrmSessionManager.e.this.f(aVar);
                }
            });
        }

        @Override // io.bidmachine.media3.exoplayer.drm.i.b
        public void release() {
            m0.c1((Handler) cn.a.e(DefaultDrmSessionManager.this.f55822u), new Runnable() { // from class: io.bidmachine.media3.exoplayer.drm.d
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultDrmSessionManager.e.this.g();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public class f implements DefaultDrmSession.a {

        /* renamed from: a  reason: collision with root package name */
        private final Set<DefaultDrmSession> f55841a = new HashSet();
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private DefaultDrmSession f55842b;

        public f() {
        }

        @Override // io.bidmachine.media3.exoplayer.drm.DefaultDrmSession.a
        public void a(Exception exc, boolean z10) {
            this.f55842b = null;
            ImmutableList u10 = ImmutableList.u(this.f55841a);
            this.f55841a.clear();
            y it = u10.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).C(exc, z10);
            }
        }

        @Override // io.bidmachine.media3.exoplayer.drm.DefaultDrmSession.a
        public void b(DefaultDrmSession defaultDrmSession) {
            this.f55841a.add(defaultDrmSession);
            if (this.f55842b != null) {
                return;
            }
            this.f55842b = defaultDrmSession;
            defaultDrmSession.G();
        }

        public void c(DefaultDrmSession defaultDrmSession) {
            this.f55841a.remove(defaultDrmSession);
            if (this.f55842b == defaultDrmSession) {
                this.f55842b = null;
                if (!this.f55841a.isEmpty()) {
                    DefaultDrmSession next = this.f55841a.iterator().next();
                    this.f55842b = next;
                    next.G();
                }
            }
        }

        @Override // io.bidmachine.media3.exoplayer.drm.DefaultDrmSession.a
        public void onProvisionCompleted() {
            this.f55842b = null;
            ImmutableList u10 = ImmutableList.u(this.f55841a);
            this.f55841a.clear();
            y it = u10.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).B();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public class g implements DefaultDrmSession.b {
        private g() {
        }

        @Override // io.bidmachine.media3.exoplayer.drm.DefaultDrmSession.b
        public void a(DefaultDrmSession defaultDrmSession, int i10) {
            if (DefaultDrmSessionManager.this.f55813l != -9223372036854775807L) {
                DefaultDrmSessionManager.this.f55816o.remove(defaultDrmSession);
                ((Handler) cn.a.e(DefaultDrmSessionManager.this.f55822u)).removeCallbacksAndMessages(defaultDrmSession);
            }
        }

        @Override // io.bidmachine.media3.exoplayer.drm.DefaultDrmSession.b
        public void b(final DefaultDrmSession defaultDrmSession, int i10) {
            if (i10 == 1 && DefaultDrmSessionManager.this.f55817p > 0 && DefaultDrmSessionManager.this.f55813l != -9223372036854775807L) {
                DefaultDrmSessionManager.this.f55816o.add(defaultDrmSession);
                ((Handler) cn.a.e(DefaultDrmSessionManager.this.f55822u)).postAtTime(new Runnable() { // from class: io.bidmachine.media3.exoplayer.drm.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultDrmSession.this.f(null);
                    }
                }, defaultDrmSession, SystemClock.uptimeMillis() + DefaultDrmSessionManager.this.f55813l);
            } else if (i10 == 0) {
                DefaultDrmSessionManager.this.f55814m.remove(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f55819r == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f55819r = null;
                }
                if (DefaultDrmSessionManager.this.f55820s == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f55820s = null;
                }
                DefaultDrmSessionManager.this.f55810i.c(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f55813l != -9223372036854775807L) {
                    ((Handler) cn.a.e(DefaultDrmSessionManager.this.f55822u)).removeCallbacksAndMessages(defaultDrmSession);
                    DefaultDrmSessionManager.this.f55816o.remove(defaultDrmSession);
                }
            }
            DefaultDrmSessionManager.this.B();
        }
    }

    private void A(Looper looper) {
        if (this.f55826y == null) {
            this.f55826y = new d(looper);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        if (this.f55818q != null && this.f55817p == 0 && this.f55814m.isEmpty() && this.f55815n.isEmpty()) {
            ((m) cn.a.e(this.f55818q)).release();
            this.f55818q = null;
        }
    }

    private void C() {
        y it = ImmutableSet.t(this.f55816o).iterator();
        while (it.hasNext()) {
            ((DrmSession) it.next()).f(null);
        }
    }

    private void D() {
        y it = ImmutableSet.t(this.f55815n).iterator();
        while (it.hasNext()) {
            ((e) it.next()).release();
        }
    }

    private void F(DrmSession drmSession, @Nullable h.a aVar) {
        drmSession.f(aVar);
        if (this.f55813l != -9223372036854775807L) {
            drmSession.f(null);
        }
    }

    private void G(boolean z10) {
        if (z10 && this.f55821t == null) {
            r.i("DefaultDrmSessionMgr", "DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread.", new IllegalStateException());
        } else if (Thread.currentThread() != ((Looper) cn.a.e(this.f55821t)).getThread()) {
            r.i("DefaultDrmSessionMgr", "DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + this.f55821t.getThread().getName(), new IllegalStateException());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public DrmSession s(Looper looper, @Nullable h.a aVar, io.bidmachine.media3.common.a aVar2, boolean z10) {
        List<DrmInitData.SchemeData> list;
        A(looper);
        DrmInitData drmInitData = aVar2.f55178s;
        if (drmInitData == null) {
            return z(u.k(aVar2.f55174o), z10);
        }
        DefaultDrmSession defaultDrmSession = null;
        if (this.f55824w == null) {
            list = x((DrmInitData) cn.a.e(drmInitData), this.f55803b, false);
            if (list.isEmpty()) {
                MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.f55803b);
                r.d("DefaultDrmSessionMgr", "DRM error", missingSchemeDataException);
                if (aVar != null) {
                    aVar.l(missingSchemeDataException);
                }
                return new l(new DrmSession.DrmSessionException(missingSchemeDataException, 6003));
            }
        } else {
            list = null;
        }
        if (!this.f55807f) {
            defaultDrmSession = this.f55820s;
        } else {
            Iterator<DefaultDrmSession> it = this.f55814m.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                DefaultDrmSession next = it.next();
                if (Objects.equals(next.f55770a, list)) {
                    defaultDrmSession = next;
                    break;
                }
            }
        }
        if (defaultDrmSession == null) {
            defaultDrmSession = w(list, false, aVar, z10);
            if (!this.f55807f) {
                this.f55820s = defaultDrmSession;
            }
            this.f55814m.add(defaultDrmSession);
        } else {
            defaultDrmSession.g(aVar);
        }
        return defaultDrmSession;
    }

    private static boolean t(DrmSession drmSession) {
        if (drmSession.getState() != 1) {
            return false;
        }
        Throwable cause = ((DrmSession.DrmSessionException) cn.a.e(drmSession.getError())).getCause();
        if (!(cause instanceof ResourceBusyException) && !j.e(cause)) {
            return false;
        }
        return true;
    }

    private boolean u(DrmInitData drmInitData) {
        if (this.f55824w != null) {
            return true;
        }
        if (x(drmInitData, this.f55803b, true).isEmpty()) {
            if (drmInitData.f55105d != 1 || !drmInitData.e(0).d(zm.f.f71929b)) {
                return false;
            }
            r.h("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.f55803b);
        }
        String str = drmInitData.f55104c;
        if (str == null || C.CENC_TYPE_cenc.equals(str)) {
            return true;
        }
        if (C.CENC_TYPE_cbcs.equals(str)) {
            if (m0.f3614a >= 25) {
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
        cn.a.e(this.f55818q);
        DefaultDrmSession defaultDrmSession = new DefaultDrmSession(this.f55803b, this.f55818q, this.f55810i, this.f55812k, list, this.f55823v, this.f55809h | z10, z10, this.f55824w, this.f55806e, this.f55805d, (Looper) cn.a.e(this.f55821t), this.f55811j, (b2) cn.a.e(this.f55825x));
        defaultDrmSession.g(aVar);
        if (this.f55813l != -9223372036854775807L) {
            defaultDrmSession.g(null);
        }
        return defaultDrmSession;
    }

    private DefaultDrmSession w(@Nullable List<DrmInitData.SchemeData> list, boolean z10, @Nullable h.a aVar, boolean z11) {
        DefaultDrmSession v10 = v(list, z10, aVar);
        if (t(v10) && !this.f55816o.isEmpty()) {
            C();
            F(v10, aVar);
            v10 = v(list, z10, aVar);
        }
        if (t(v10) && z11 && !this.f55815n.isEmpty()) {
            D();
            if (!this.f55816o.isEmpty()) {
                C();
            }
            F(v10, aVar);
            return v(list, z10, aVar);
        }
        return v10;
    }

    private static List<DrmInitData.SchemeData> x(DrmInitData drmInitData, UUID uuid, boolean z10) {
        ArrayList arrayList = new ArrayList(drmInitData.f55105d);
        for (int i10 = 0; i10 < drmInitData.f55105d; i10++) {
            DrmInitData.SchemeData e10 = drmInitData.e(i10);
            if ((e10.d(uuid) || (zm.f.f71930c.equals(uuid) && e10.d(zm.f.f71929b))) && (e10.f55110e != null || z10)) {
                arrayList.add(e10);
            }
        }
        return arrayList;
    }

    private synchronized void y(Looper looper) {
        boolean z10;
        try {
            Looper looper2 = this.f55821t;
            if (looper2 == null) {
                this.f55821t = looper;
                this.f55822u = new Handler(looper);
            } else {
                if (looper2 == looper) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                cn.a.g(z10);
                cn.a.e(this.f55822u);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Nullable
    private DrmSession z(int i10, boolean z10) {
        m mVar = (m) cn.a.e(this.f55818q);
        if ((mVar.a() == 2 && ln.l.f62283d) || m0.O0(this.f55808g, i10) == -1 || mVar.a() == 1) {
            return null;
        }
        DefaultDrmSession defaultDrmSession = this.f55819r;
        if (defaultDrmSession == null) {
            DefaultDrmSession w10 = w(ImmutableList.A(), true, null, z10);
            this.f55814m.add(w10);
            this.f55819r = w10;
        } else {
            defaultDrmSession.g(null);
        }
        return this.f55819r;
    }

    public void E(int i10, @Nullable byte[] bArr) {
        cn.a.g(this.f55814m.isEmpty());
        if (i10 == 1 || i10 == 3) {
            cn.a.e(bArr);
        }
        this.f55823v = i10;
        this.f55824w = bArr;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.i
    public int a(io.bidmachine.media3.common.a aVar) {
        G(false);
        int a10 = ((m) cn.a.e(this.f55818q)).a();
        DrmInitData drmInitData = aVar.f55178s;
        if (drmInitData == null) {
            if (m0.O0(this.f55808g, u.k(aVar.f55174o)) == -1) {
                return 0;
            }
            return a10;
        } else if (!u(drmInitData)) {
            return 1;
        } else {
            return a10;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.drm.i
    @Nullable
    public DrmSession b(@Nullable h.a aVar, io.bidmachine.media3.common.a aVar2) {
        boolean z10 = false;
        G(false);
        if (this.f55817p > 0) {
            z10 = true;
        }
        cn.a.g(z10);
        cn.a.i(this.f55821t);
        return s(this.f55821t, aVar, aVar2, true);
    }

    @Override // io.bidmachine.media3.exoplayer.drm.i
    public void c(Looper looper, b2 b2Var) {
        y(looper);
        this.f55825x = b2Var;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.i
    public i.b d(@Nullable h.a aVar, io.bidmachine.media3.common.a aVar2) {
        boolean z10;
        if (this.f55817p > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        cn.a.i(this.f55821t);
        e eVar = new e(aVar);
        eVar.e(aVar2);
        return eVar;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.i
    public final void prepare() {
        G(true);
        int i10 = this.f55817p;
        this.f55817p = i10 + 1;
        if (i10 != 0) {
            return;
        }
        if (this.f55818q == null) {
            m a10 = this.f55804c.a(this.f55803b);
            this.f55818q = a10;
            a10.f(new c());
        } else if (this.f55813l != -9223372036854775807L) {
            for (int i11 = 0; i11 < this.f55814m.size(); i11++) {
                this.f55814m.get(i11).g(null);
            }
        }
    }

    @Override // io.bidmachine.media3.exoplayer.drm.i
    public final void release() {
        G(true);
        int i10 = this.f55817p - 1;
        this.f55817p = i10;
        if (i10 != 0) {
            return;
        }
        if (this.f55813l != -9223372036854775807L) {
            ArrayList arrayList = new ArrayList(this.f55814m);
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                ((DefaultDrmSession) arrayList.get(i11)).f(null);
            }
        }
        D();
        B();
    }

    private DefaultDrmSessionManager(UUID uuid, m.c cVar, p pVar, HashMap<String, String> hashMap, boolean z10, int[] iArr, boolean z11, io.bidmachine.media3.exoplayer.upstream.b bVar, long j10) {
        cn.a.e(uuid);
        cn.a.b(!zm.f.f71929b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f55803b = uuid;
        this.f55804c = cVar;
        this.f55805d = pVar;
        this.f55806e = hashMap;
        this.f55807f = z10;
        this.f55808g = iArr;
        this.f55809h = z11;
        this.f55811j = bVar;
        this.f55810i = new f();
        this.f55812k = new g();
        this.f55823v = 0;
        this.f55814m = new ArrayList();
        this.f55815n = v.h();
        this.f55816o = v.h();
        this.f55813l = j10;
    }
}
