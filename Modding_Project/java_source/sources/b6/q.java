package b6;

import androidx.annotation.Nullable;
import b7.g0;
import java.io.IOException;
/* compiled from: TrackFragment.java */
/* loaded from: classes4.dex */
final class q {

    /* renamed from: a  reason: collision with root package name */
    public c f2408a;

    /* renamed from: b  reason: collision with root package name */
    public long f2409b;

    /* renamed from: c  reason: collision with root package name */
    public long f2410c;

    /* renamed from: d  reason: collision with root package name */
    public long f2411d;

    /* renamed from: e  reason: collision with root package name */
    public int f2412e;

    /* renamed from: f  reason: collision with root package name */
    public int f2413f;

    /* renamed from: l  reason: collision with root package name */
    public boolean f2419l;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    public p f2421n;

    /* renamed from: p  reason: collision with root package name */
    public boolean f2423p;

    /* renamed from: q  reason: collision with root package name */
    public long f2424q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f2425r;

    /* renamed from: g  reason: collision with root package name */
    public long[] f2414g = new long[0];

    /* renamed from: h  reason: collision with root package name */
    public int[] f2415h = new int[0];

    /* renamed from: i  reason: collision with root package name */
    public int[] f2416i = new int[0];

    /* renamed from: j  reason: collision with root package name */
    public long[] f2417j = new long[0];

    /* renamed from: k  reason: collision with root package name */
    public boolean[] f2418k = new boolean[0];

    /* renamed from: m  reason: collision with root package name */
    public boolean[] f2420m = new boolean[0];

    /* renamed from: o  reason: collision with root package name */
    public final g0 f2422o = new g0();

    public void a(g0 g0Var) {
        g0Var.j(this.f2422o.d(), 0, this.f2422o.f());
        this.f2422o.P(0);
        this.f2423p = false;
    }

    public void b(t5.l lVar) throws IOException {
        lVar.readFully(this.f2422o.d(), 0, this.f2422o.f());
        this.f2422o.P(0);
        this.f2423p = false;
    }

    public long c(int i10) {
        return this.f2417j[i10];
    }

    public void d(int i10) {
        this.f2422o.L(i10);
        this.f2419l = true;
        this.f2423p = true;
    }

    public void e(int i10, int i11) {
        this.f2412e = i10;
        this.f2413f = i11;
        if (this.f2415h.length < i10) {
            this.f2414g = new long[i10];
            this.f2415h = new int[i10];
        }
        if (this.f2416i.length < i11) {
            int i12 = (i11 * 125) / 100;
            this.f2416i = new int[i12];
            this.f2417j = new long[i12];
            this.f2418k = new boolean[i12];
            this.f2420m = new boolean[i12];
        }
    }

    public void f() {
        this.f2412e = 0;
        this.f2424q = 0L;
        this.f2425r = false;
        this.f2419l = false;
        this.f2423p = false;
        this.f2421n = null;
    }

    public boolean g(int i10) {
        if (this.f2419l && this.f2420m[i10]) {
            return true;
        }
        return false;
    }
}
