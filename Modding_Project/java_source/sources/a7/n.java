package a7;

import a7.d;
import android.content.Context;
import android.os.Handler;
import androidx.annotation.Nullable;
import b7.s0;
import b7.x;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.util.HashMap;
import java.util.Map;
/* compiled from: DefaultBandwidthMeter.java */
/* loaded from: classes4.dex */
public final class n implements d, y {

    /* renamed from: p  reason: collision with root package name */
    public static final ImmutableList<Long> f227p = ImmutableList.E(4800000L, 3100000L, 2100000L, 1500000L, 800000L);

    /* renamed from: q  reason: collision with root package name */
    public static final ImmutableList<Long> f228q = ImmutableList.E(1500000L, 1000000L, 730000L, 440000L, 170000L);

    /* renamed from: r  reason: collision with root package name */
    public static final ImmutableList<Long> f229r = ImmutableList.E(2200000L, 1400000L, 1100000L, 910000L, 620000L);

    /* renamed from: s  reason: collision with root package name */
    public static final ImmutableList<Long> f230s = ImmutableList.E(3000000L, 1900000L, 1400000L, 1000000L, 660000L);

    /* renamed from: t  reason: collision with root package name */
    public static final ImmutableList<Long> f231t = ImmutableList.E(6000000L, 4100000L, 3200000L, 1800000L, 1000000L);

    /* renamed from: u  reason: collision with root package name */
    public static final ImmutableList<Long> f232u = ImmutableList.E(2800000L, 2400000L, 1600000L, 1100000L, 950000L);
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private static n f233v;

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableMap<Integer, Long> f234a;

    /* renamed from: b  reason: collision with root package name */
    private final d.a.C0001a f235b;

    /* renamed from: c  reason: collision with root package name */
    private final w f236c;

    /* renamed from: d  reason: collision with root package name */
    private final b7.d f237d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f238e;

    /* renamed from: f  reason: collision with root package name */
    private int f239f;

    /* renamed from: g  reason: collision with root package name */
    private long f240g;

    /* renamed from: h  reason: collision with root package name */
    private long f241h;

    /* renamed from: i  reason: collision with root package name */
    private int f242i;

    /* renamed from: j  reason: collision with root package name */
    private long f243j;

    /* renamed from: k  reason: collision with root package name */
    private long f244k;

    /* renamed from: l  reason: collision with root package name */
    private long f245l;

    /* renamed from: m  reason: collision with root package name */
    private long f246m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f247n;

    /* renamed from: o  reason: collision with root package name */
    private int f248o;

    /* compiled from: DefaultBandwidthMeter.java */
    /* loaded from: classes4.dex */
    public static final class b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f249a;

        /* renamed from: b  reason: collision with root package name */
        private Map<Integer, Long> f250b;

        /* renamed from: c  reason: collision with root package name */
        private int f251c;

        /* renamed from: d  reason: collision with root package name */
        private b7.d f252d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f253e;

        public b(Context context) {
            Context applicationContext;
            if (context == null) {
                applicationContext = null;
            } else {
                applicationContext = context.getApplicationContext();
            }
            this.f249a = applicationContext;
            this.f250b = b(s0.H(context));
            this.f251c = 2000;
            this.f252d = b7.d.f2436a;
            this.f253e = true;
        }

        private static Map<Integer, Long> b(String str) {
            int[] j10 = n.j(str);
            HashMap hashMap = new HashMap(8);
            hashMap.put(0, 1000000L);
            ImmutableList<Long> immutableList = n.f227p;
            hashMap.put(2, immutableList.get(j10[0]));
            hashMap.put(3, n.f228q.get(j10[1]));
            hashMap.put(4, n.f229r.get(j10[2]));
            hashMap.put(5, n.f230s.get(j10[3]));
            hashMap.put(10, n.f231t.get(j10[4]));
            hashMap.put(9, n.f232u.get(j10[5]));
            hashMap.put(7, immutableList.get(j10[0]));
            return hashMap;
        }

        public n a() {
            return new n(this.f249a, this.f250b, this.f251c, this.f252d, this.f253e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:950:0x0ceb, code lost:
        if (r8.equals("AD") == false) goto L3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] j(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 8086
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a7.n.j(java.lang.String):int[]");
    }

    private long k(int i10) {
        Long l10 = this.f234a.get(Integer.valueOf(i10));
        if (l10 == null) {
            l10 = this.f234a.get(0);
        }
        if (l10 == null) {
            l10 = 1000000L;
        }
        return l10.longValue();
    }

    public static synchronized n l(Context context) {
        n nVar;
        synchronized (n.class) {
            try {
                if (f233v == null) {
                    f233v = new b(context).a();
                }
                nVar = f233v;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return nVar;
    }

    private static boolean m(k kVar, boolean z10) {
        if (z10 && !kVar.d(8)) {
            return true;
        }
        return false;
    }

    private void n(int i10, long j10, long j11) {
        if (i10 == 0 && j10 == 0 && j11 == this.f246m) {
            return;
        }
        this.f246m = j11;
        this.f235b.c(i10, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void o(int i10) {
        int i11;
        int i12 = this.f242i;
        if (i12 != 0 && !this.f238e) {
            return;
        }
        if (this.f247n) {
            i10 = this.f248o;
        }
        if (i12 == i10) {
            return;
        }
        this.f242i = i10;
        if (i10 != 1 && i10 != 0 && i10 != 8) {
            this.f245l = k(i10);
            long elapsedRealtime = this.f237d.elapsedRealtime();
            if (this.f239f > 0) {
                i11 = (int) (elapsedRealtime - this.f240g);
            } else {
                i11 = 0;
            }
            n(i11, this.f241h, this.f245l);
            this.f240g = elapsedRealtime;
            this.f241h = 0L;
            this.f244k = 0L;
            this.f243j = 0L;
            this.f236c.i();
        }
    }

    @Override // a7.d
    public void b(d.a aVar) {
        this.f235b.e(aVar);
    }

    @Override // a7.y
    public synchronized void c(h hVar, k kVar, boolean z10, int i10) {
        if (!m(kVar, z10)) {
            return;
        }
        this.f241h += i10;
    }

    @Override // a7.y
    public synchronized void d(h hVar, k kVar, boolean z10) {
        boolean z11;
        try {
            if (!m(kVar, z10)) {
                return;
            }
            if (this.f239f > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            b7.a.g(z11);
            long elapsedRealtime = this.f237d.elapsedRealtime();
            int i10 = (int) (elapsedRealtime - this.f240g);
            this.f243j += i10;
            long j10 = this.f244k;
            long j11 = this.f241h;
            this.f244k = j10 + j11;
            if (i10 > 0) {
                this.f236c.c((int) Math.sqrt(j11), (((float) j11) * 8000.0f) / i10);
                if (this.f243j < 2000) {
                    if (this.f244k >= 524288) {
                    }
                    n(i10, this.f241h, this.f245l);
                    this.f240g = elapsedRealtime;
                    this.f241h = 0L;
                }
                this.f245l = this.f236c.f(0.5f);
                n(i10, this.f241h, this.f245l);
                this.f240g = elapsedRealtime;
                this.f241h = 0L;
            }
            this.f239f--;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // a7.d
    public void f(Handler handler, d.a aVar) {
        b7.a.e(handler);
        b7.a.e(aVar);
        this.f235b.b(handler, aVar);
    }

    @Override // a7.y
    public synchronized void g(h hVar, k kVar, boolean z10) {
        try {
            if (!m(kVar, z10)) {
                return;
            }
            if (this.f239f == 0) {
                this.f240g = this.f237d.elapsedRealtime();
            }
            this.f239f++;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private n(@Nullable Context context, Map<Integer, Long> map, int i10, b7.d dVar, boolean z10) {
        this.f234a = ImmutableMap.e(map);
        this.f235b = new d.a.C0001a();
        this.f236c = new w(i10);
        this.f237d = dVar;
        this.f238e = z10;
        if (context != null) {
            b7.x d10 = b7.x.d(context);
            int f10 = d10.f();
            this.f242i = f10;
            this.f245l = k(f10);
            d10.i(new x.c() { // from class: a7.m
                @Override // b7.x.c
                public final void a(int i11) {
                    n.this.o(i11);
                }
            });
            return;
        }
        this.f242i = 0;
        this.f245l = k(0);
    }

    @Override // a7.d
    public y a() {
        return this;
    }

    @Override // a7.y
    public void e(h hVar, k kVar, boolean z10) {
    }
}
