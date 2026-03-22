package gn;

import android.util.Pair;
import zm.a0;
/* compiled from: AbstractConcatenatedTimeline.java */
/* loaded from: classes8.dex */
public abstract class a extends zm.a0 {

    /* renamed from: e  reason: collision with root package name */
    private final int f52418e;

    /* renamed from: f  reason: collision with root package name */
    private final sn.t f52419f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f52420g;

    public a(boolean z10, sn.t tVar) {
        this.f52420g = z10;
        this.f52419f = tVar;
        this.f52418e = tVar.getLength();
    }

    private int B(int i10, boolean z10) {
        if (z10) {
            return this.f52419f.getNextIndex(i10);
        }
        if (i10 < this.f52418e - 1) {
            return i10 + 1;
        }
        return -1;
    }

    private int C(int i10, boolean z10) {
        if (z10) {
            return this.f52419f.getPreviousIndex(i10);
        }
        if (i10 > 0) {
            return i10 - 1;
        }
        return -1;
    }

    public static Object v(Object obj) {
        return ((Pair) obj).second;
    }

    public static Object w(Object obj) {
        return ((Pair) obj).first;
    }

    public static Object y(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    protected abstract int A(int i10);

    protected abstract zm.a0 D(int i10);

    @Override // zm.a0
    public int a(boolean z10) {
        if (this.f52418e == 0) {
            return -1;
        }
        int i10 = 0;
        if (this.f52420g) {
            z10 = false;
        }
        if (z10) {
            i10 = this.f52419f.getFirstIndex();
        }
        while (D(i10).q()) {
            i10 = B(i10, z10);
            if (i10 == -1) {
                return -1;
            }
        }
        return A(i10) + D(i10).a(z10);
    }

    @Override // zm.a0
    public final int b(Object obj) {
        int b10;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Object w10 = w(obj);
        Object v10 = v(obj);
        int s10 = s(w10);
        if (s10 == -1 || (b10 = D(s10).b(v10)) == -1) {
            return -1;
        }
        return z(s10) + b10;
    }

    @Override // zm.a0
    public int c(boolean z10) {
        int i10;
        int i11 = this.f52418e;
        if (i11 == 0) {
            return -1;
        }
        if (this.f52420g) {
            z10 = false;
        }
        if (z10) {
            i10 = this.f52419f.getLastIndex();
        } else {
            i10 = i11 - 1;
        }
        while (D(i10).q()) {
            i10 = C(i10, z10);
            if (i10 == -1) {
                return -1;
            }
        }
        return A(i10) + D(i10).c(z10);
    }

    @Override // zm.a0
    public int e(int i10, int i11, boolean z10) {
        int i12 = 0;
        if (this.f52420g) {
            if (i11 == 1) {
                i11 = 2;
            }
            z10 = false;
        }
        int u10 = u(i10);
        int A = A(u10);
        zm.a0 D = D(u10);
        int i13 = i10 - A;
        if (i11 != 2) {
            i12 = i11;
        }
        int e10 = D.e(i13, i12, z10);
        if (e10 != -1) {
            return A + e10;
        }
        int B = B(u10, z10);
        while (B != -1 && D(B).q()) {
            B = B(B, z10);
        }
        if (B != -1) {
            return A(B) + D(B).a(z10);
        }
        if (i11 != 2) {
            return -1;
        }
        return a(z10);
    }

    @Override // zm.a0
    public final a0.b g(int i10, a0.b bVar, boolean z10) {
        int t10 = t(i10);
        int A = A(t10);
        D(t10).g(i10 - z(t10), bVar, z10);
        bVar.f71742c += A;
        if (z10) {
            bVar.f71741b = y(x(t10), cn.a.e(bVar.f71741b));
        }
        return bVar;
    }

    @Override // zm.a0
    public final a0.b h(Object obj, a0.b bVar) {
        Object w10 = w(obj);
        Object v10 = v(obj);
        int s10 = s(w10);
        int A = A(s10);
        D(s10).h(v10, bVar);
        bVar.f71742c += A;
        bVar.f71741b = obj;
        return bVar;
    }

    @Override // zm.a0
    public int l(int i10, int i11, boolean z10) {
        int i12 = 0;
        if (this.f52420g) {
            if (i11 == 1) {
                i11 = 2;
            }
            z10 = false;
        }
        int u10 = u(i10);
        int A = A(u10);
        zm.a0 D = D(u10);
        int i13 = i10 - A;
        if (i11 != 2) {
            i12 = i11;
        }
        int l10 = D.l(i13, i12, z10);
        if (l10 != -1) {
            return A + l10;
        }
        int C = C(u10, z10);
        while (C != -1 && D(C).q()) {
            C = C(C, z10);
        }
        if (C != -1) {
            return A(C) + D(C).c(z10);
        }
        if (i11 != 2) {
            return -1;
        }
        return c(z10);
    }

    @Override // zm.a0
    public final Object m(int i10) {
        int t10 = t(i10);
        return y(x(t10), D(t10).m(i10 - z(t10)));
    }

    @Override // zm.a0
    public final a0.c o(int i10, a0.c cVar, long j10) {
        int u10 = u(i10);
        int A = A(u10);
        int z10 = z(u10);
        D(u10).o(i10 - A, cVar, j10);
        Object x10 = x(u10);
        if (!a0.c.f71747q.equals(cVar.f71757a)) {
            x10 = y(x10, cVar.f71757a);
        }
        cVar.f71757a = x10;
        cVar.f71770n += z10;
        cVar.f71771o += z10;
        return cVar;
    }

    protected abstract int s(Object obj);

    protected abstract int t(int i10);

    protected abstract int u(int i10);

    protected abstract Object x(int i10);

    protected abstract int z(int i10);
}
