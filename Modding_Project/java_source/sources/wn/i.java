package wn;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import cn.m0;
import cn.w;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import en.o;
import java.util.HashMap;
import java.util.Map;
import wn.d;
/* compiled from: DefaultBandwidthMeter.java */
/* loaded from: classes8.dex */
public final class i implements d, o {

    /* renamed from: r  reason: collision with root package name */
    public static final ImmutableList<Long> f69993r = ImmutableList.E(4300000L, 3200000L, 2400000L, 1700000L, 860000L);

    /* renamed from: s  reason: collision with root package name */
    public static final ImmutableList<Long> f69994s = ImmutableList.E(1500000L, 980000L, 750000L, 520000L, 290000L);

    /* renamed from: t  reason: collision with root package name */
    public static final ImmutableList<Long> f69995t = ImmutableList.E(2000000L, 1300000L, 1000000L, 860000L, 610000L);

    /* renamed from: u  reason: collision with root package name */
    public static final ImmutableList<Long> f69996u = ImmutableList.E(2500000L, 1700000L, 1200000L, 970000L, 680000L);

    /* renamed from: v  reason: collision with root package name */
    public static final ImmutableList<Long> f69997v = ImmutableList.E(4700000L, 2800000L, 2100000L, 1700000L, 980000L);

    /* renamed from: w  reason: collision with root package name */
    public static final ImmutableList<Long> f69998w = ImmutableList.E(2700000L, 2000000L, 1600000L, 1300000L, 1000000L);
    @Nullable
    @SuppressLint({"NonFinalStaticField", "StaticFieldLeak"})

    /* renamed from: x  reason: collision with root package name */
    private static i f69999x;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Context f70000a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableMap<Integer, Long> f70001b;

    /* renamed from: c  reason: collision with root package name */
    private final d.a.C0962a f70002c;

    /* renamed from: d  reason: collision with root package name */
    private final cn.h f70003d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f70004e;
    @GuardedBy("this")

    /* renamed from: f  reason: collision with root package name */
    private final n f70005f;
    @GuardedBy("this")

    /* renamed from: g  reason: collision with root package name */
    private int f70006g;
    @GuardedBy("this")

    /* renamed from: h  reason: collision with root package name */
    private long f70007h;
    @GuardedBy("this")

    /* renamed from: i  reason: collision with root package name */
    private long f70008i;
    @GuardedBy("this")

    /* renamed from: j  reason: collision with root package name */
    private long f70009j;
    @GuardedBy("this")

    /* renamed from: k  reason: collision with root package name */
    private long f70010k;
    @GuardedBy("this")

    /* renamed from: l  reason: collision with root package name */
    private long f70011l;
    @GuardedBy("this")

    /* renamed from: m  reason: collision with root package name */
    private long f70012m;

    /* renamed from: n  reason: collision with root package name */
    private int f70013n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f70014o;

    /* renamed from: p  reason: collision with root package name */
    private int f70015p;

    /* renamed from: q  reason: collision with root package name */
    private String f70016q;

    /* compiled from: DefaultBandwidthMeter.java */
    /* loaded from: classes8.dex */
    public static final class b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f70017a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<Integer, Long> f70018b;

        /* renamed from: c  reason: collision with root package name */
        private int f70019c;

        /* renamed from: d  reason: collision with root package name */
        private cn.h f70020d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f70021e;

        public b(Context context) {
            Context applicationContext;
            if (context == null) {
                applicationContext = null;
            } else {
                applicationContext = context.getApplicationContext();
            }
            this.f70017a = applicationContext;
            this.f70019c = 2000;
            this.f70020d = cn.h.f3594a;
            this.f70021e = true;
            HashMap hashMap = new HashMap(8);
            this.f70018b = hashMap;
            hashMap.put(0, 1000000L);
            hashMap.put(2, -9223372036854775807L);
            hashMap.put(3, -9223372036854775807L);
            hashMap.put(4, -9223372036854775807L);
            hashMap.put(5, -9223372036854775807L);
            hashMap.put(10, -9223372036854775807L);
            hashMap.put(9, -9223372036854775807L);
            hashMap.put(7, -9223372036854775807L);
        }

        public i a() {
            return new i(this.f70017a, this.f70018b, this.f70019c, this.f70020d, this.f70021e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:942:0x0cd7, code lost:
        if (r8.equals("AI") == false) goto L3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int[] j(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 8434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: wn.i.j(java.lang.String):int[]");
    }

    private long k(int i10) {
        Long l10 = this.f70001b.get(Integer.valueOf(i10));
        if (l10 == null) {
            l10 = this.f70001b.get(0);
        } else if (l10.longValue() == -9223372036854775807L) {
            l10 = Long.valueOf(l(this.f70016q, i10));
        }
        if (l10 == null) {
            l10 = 1000000L;
        }
        return l10.longValue();
    }

    private static long l(@Nullable String str, int i10) {
        int[] j10 = j(h7.m.c(str));
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 5) {
                        if (i10 != 7) {
                            if (i10 != 9) {
                                if (i10 != 10) {
                                    return 1000000L;
                                }
                                return f69997v.get(j10[4]).longValue();
                            }
                            return f69998w.get(j10[5]).longValue();
                        }
                    } else {
                        return f69996u.get(j10[3]).longValue();
                    }
                } else {
                    return f69995t.get(j10[2]).longValue();
                }
            } else {
                return f69994s.get(j10[1]).longValue();
            }
        }
        return f69993r.get(j10[0]).longValue();
    }

    public static synchronized i m(Context context) {
        i iVar;
        synchronized (i.class) {
            try {
                if (f69999x == null) {
                    f69999x = new b(context).a();
                }
                iVar = f69999x;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVar;
    }

    private static boolean n(en.g gVar, boolean z10) {
        if (z10 && !gVar.d(8)) {
            return true;
        }
        return false;
    }

    @GuardedBy("this")
    private void o(int i10, long j10, long j11) {
        if (i10 == 0 && j10 == 0 && j11 == this.f70012m) {
            return;
        }
        this.f70012m = j11;
        this.f70002c.c(i10, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p(int i10) {
        int i11;
        int i12 = this.f70013n;
        if (i12 != 0 && !this.f70004e) {
            return;
        }
        if (this.f70014o) {
            i10 = this.f70015p;
        }
        if (i12 == i10 && this.f70016q != null) {
            return;
        }
        this.f70013n = i10;
        if (i10 != 1 && i10 != 0 && i10 != 8) {
            if (this.f70016q == null) {
                this.f70016q = m0.U(this.f70000a);
            }
            this.f70011l = k(i10);
            long elapsedRealtime = this.f70003d.elapsedRealtime();
            if (this.f70006g > 0) {
                i11 = (int) (elapsedRealtime - this.f70007h);
            } else {
                i11 = 0;
            }
            o(i11, this.f70008i, this.f70011l);
            this.f70007h = elapsedRealtime;
            this.f70008i = 0L;
            this.f70010k = 0L;
            this.f70009j = 0L;
            this.f70005f.i();
        }
    }

    @Override // en.o
    public synchronized void b(en.d dVar, en.g gVar, boolean z10) {
        try {
            if (!n(gVar, z10)) {
                return;
            }
            if (this.f70006g == 0) {
                this.f70007h = this.f70003d.elapsedRealtime();
            }
            this.f70006g++;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // en.o
    public synchronized void c(en.d dVar, en.g gVar, boolean z10, int i10) {
        if (!n(gVar, z10)) {
            return;
        }
        this.f70008i += i10;
    }

    @Override // wn.d
    public void d(d.a aVar) {
        this.f70002c.e(aVar);
    }

    @Override // en.o
    public synchronized void f(en.d dVar, en.g gVar, boolean z10) {
        boolean z11;
        try {
            if (!n(gVar, z10)) {
                return;
            }
            if (this.f70006g > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            cn.a.g(z11);
            long elapsedRealtime = this.f70003d.elapsedRealtime();
            int i10 = (int) (elapsedRealtime - this.f70007h);
            this.f70009j += i10;
            long j10 = this.f70010k;
            long j11 = this.f70008i;
            this.f70010k = j10 + j11;
            if (i10 > 0) {
                this.f70005f.c((int) Math.sqrt(j11), (((float) j11) * 8000.0f) / i10);
                if (this.f70009j < 2000) {
                    if (this.f70010k >= 524288) {
                    }
                    o(i10, this.f70008i, this.f70011l);
                    this.f70007h = elapsedRealtime;
                    this.f70008i = 0L;
                }
                this.f70011l = this.f70005f.f(0.5f);
                o(i10, this.f70008i, this.f70011l);
                this.f70007h = elapsedRealtime;
                this.f70008i = 0L;
            }
            this.f70006g--;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // wn.d
    public synchronized long getBitrateEstimate() {
        return this.f70011l;
    }

    @Override // wn.d
    public void h(Handler handler, d.a aVar) {
        cn.a.e(handler);
        cn.a.e(aVar);
        this.f70002c.b(handler, aVar);
    }

    private i(@Nullable Context context, Map<Integer, Long> map, int i10, cn.h hVar, boolean z10) {
        this.f70000a = context == null ? null : context.getApplicationContext();
        this.f70001b = ImmutableMap.e(map);
        this.f70002c = new d.a.C0962a();
        this.f70005f = new n(i10);
        this.f70003d = hVar;
        this.f70004e = z10;
        if (context != null) {
            w e10 = w.e(context);
            int g10 = e10.g();
            this.f70013n = g10;
            this.f70011l = k(g10);
            e10.l(new w.c() { // from class: wn.h
                @Override // cn.w.c
                public final void a(int i11) {
                    i.this.p(i11);
                }
            }, cn.b.a());
            return;
        }
        this.f70013n = 0;
        this.f70011l = 1000000L;
    }

    @Override // wn.d
    public o a() {
        return this;
    }

    @Override // en.o
    public void g(en.d dVar, en.g gVar, boolean z10) {
    }
}
