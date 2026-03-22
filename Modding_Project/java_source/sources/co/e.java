package co;

import ao.j0;
import ao.k0;
import ao.o0;
import ao.q;
import cn.m0;
import java.io.IOException;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChunkReader.java */
/* loaded from: classes8.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final d f3708a;

    /* renamed from: b  reason: collision with root package name */
    private final o0 f3709b;

    /* renamed from: c  reason: collision with root package name */
    private final int f3710c;

    /* renamed from: d  reason: collision with root package name */
    private final int f3711d;

    /* renamed from: e  reason: collision with root package name */
    private final long f3712e;

    /* renamed from: f  reason: collision with root package name */
    private int f3713f;

    /* renamed from: g  reason: collision with root package name */
    private int f3714g;

    /* renamed from: h  reason: collision with root package name */
    private int f3715h;

    /* renamed from: i  reason: collision with root package name */
    private int f3716i;

    /* renamed from: j  reason: collision with root package name */
    private int f3717j;

    /* renamed from: k  reason: collision with root package name */
    private int f3718k;

    /* renamed from: l  reason: collision with root package name */
    private long f3719l;

    /* renamed from: m  reason: collision with root package name */
    private long[] f3720m;

    /* renamed from: n  reason: collision with root package name */
    private int[] f3721n;

    public e(int i10, d dVar, o0 o0Var) {
        int i11;
        int i12;
        this.f3708a = dVar;
        int b10 = dVar.b();
        boolean z10 = true;
        if (b10 != 1 && b10 != 2) {
            z10 = false;
        }
        cn.a.a(z10);
        if (b10 == 2) {
            i11 = 1667497984;
        } else {
            i11 = 1651965952;
        }
        this.f3710c = d(i10, i11);
        this.f3712e = dVar.a();
        this.f3709b = o0Var;
        if (b10 == 2) {
            i12 = d(i10, 1650720768);
        } else {
            i12 = -1;
        }
        this.f3711d = i12;
        this.f3719l = -1L;
        this.f3720m = new long[512];
        this.f3721n = new int[512];
        this.f3713f = dVar.f3705e;
    }

    private static int d(int i10, int i11) {
        return (((i10 % 10) + 48) << 8) | ((i10 / 10) + 48) | i11;
    }

    private long e(int i10) {
        return (this.f3712e * i10) / this.f3713f;
    }

    private k0 h(int i10) {
        return new k0(this.f3721n[i10] * g(), this.f3720m[i10]);
    }

    public void a() {
        this.f3716i++;
    }

    public void b(long j10, boolean z10) {
        if (this.f3719l == -1) {
            this.f3719l = j10;
        }
        if (z10) {
            if (this.f3718k == this.f3721n.length) {
                long[] jArr = this.f3720m;
                this.f3720m = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
                int[] iArr = this.f3721n;
                this.f3721n = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
            }
            long[] jArr2 = this.f3720m;
            int i10 = this.f3718k;
            jArr2[i10] = j10;
            this.f3721n[i10] = this.f3717j;
            this.f3718k = i10 + 1;
        }
        this.f3717j++;
    }

    public void c() {
        int i10;
        this.f3720m = Arrays.copyOf(this.f3720m, this.f3718k);
        this.f3721n = Arrays.copyOf(this.f3721n, this.f3718k);
        if (k() && this.f3708a.f3707g != 0 && (i10 = this.f3718k) > 0) {
            this.f3713f = i10;
        }
    }

    public long f() {
        return e(this.f3716i);
    }

    public long g() {
        return e(1);
    }

    public j0.a i(long j10) {
        if (this.f3718k == 0) {
            return new j0.a(new k0(0L, this.f3719l));
        }
        int g10 = (int) (j10 / g());
        int g11 = m0.g(this.f3721n, g10, true, true);
        if (this.f3721n[g11] == g10) {
            return new j0.a(h(g11));
        }
        k0 h10 = h(g11);
        int i10 = g11 + 1;
        if (i10 < this.f3720m.length) {
            return new j0.a(h10, h(i10));
        }
        return new j0.a(h10);
    }

    public boolean j(int i10) {
        if (this.f3710c != i10 && this.f3711d != i10) {
            return false;
        }
        return true;
    }

    public boolean k() {
        if ((this.f3710c & 1651965952) == 1651965952) {
            return true;
        }
        return false;
    }

    public boolean l() {
        if (Arrays.binarySearch(this.f3721n, this.f3716i) >= 0) {
            return true;
        }
        return false;
    }

    public boolean m(q qVar) throws IOException {
        int i10 = this.f3715h;
        boolean z10 = false;
        int b10 = i10 - this.f3709b.b(qVar, i10, false);
        this.f3715h = b10;
        if (b10 == 0) {
            z10 = true;
        }
        if (z10) {
            if (this.f3714g > 0) {
                o0 o0Var = this.f3709b;
                long f10 = f();
                boolean l10 = l();
                o0Var.c(f10, l10 ? 1 : 0, this.f3714g, 0, null);
            }
            a();
        }
        return z10;
    }

    public void n(int i10) {
        this.f3714g = i10;
        this.f3715h = i10;
    }

    public void o(long j10) {
        if (this.f3718k == 0) {
            this.f3716i = 0;
            return;
        }
        this.f3716i = this.f3721n[m0.h(this.f3720m, j10, true, true)];
    }
}
