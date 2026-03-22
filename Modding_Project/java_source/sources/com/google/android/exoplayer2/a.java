package com.google.android.exoplayer2;

import android.util.Pair;
import com.google.android.exoplayer2.u1;
/* compiled from: AbstractConcatenatedTimeline.java */
/* loaded from: classes4.dex */
public abstract class a extends u1 {

    /* renamed from: c  reason: collision with root package name */
    private final int f17189c;

    /* renamed from: d  reason: collision with root package name */
    private final n6.r f17190d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f17191e;

    public a(boolean z10, n6.r rVar) {
        this.f17191e = z10;
        this.f17190d = rVar;
        this.f17189c = rVar.getLength();
    }

    public static Object B(Object obj) {
        return ((Pair) obj).second;
    }

    public static Object C(Object obj) {
        return ((Pair) obj).first;
    }

    public static Object E(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    private int H(int i10, boolean z10) {
        if (z10) {
            return this.f17190d.getNextIndex(i10);
        }
        if (i10 < this.f17189c - 1) {
            return i10 + 1;
        }
        return -1;
    }

    private int I(int i10, boolean z10) {
        if (z10) {
            return this.f17190d.getPreviousIndex(i10);
        }
        if (i10 > 0) {
            return i10 - 1;
        }
        return -1;
    }

    protected abstract int A(int i10);

    protected abstract Object D(int i10);

    protected abstract int F(int i10);

    protected abstract int G(int i10);

    protected abstract u1 J(int i10);

    @Override // com.google.android.exoplayer2.u1
    public int e(boolean z10) {
        if (this.f17189c == 0) {
            return -1;
        }
        int i10 = 0;
        if (this.f17191e) {
            z10 = false;
        }
        if (z10) {
            i10 = this.f17190d.getFirstIndex();
        }
        while (J(i10).u()) {
            i10 = H(i10, z10);
            if (i10 == -1) {
                return -1;
            }
        }
        return G(i10) + J(i10).e(z10);
    }

    @Override // com.google.android.exoplayer2.u1
    public final int f(Object obj) {
        int f10;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Object C = C(obj);
        Object B = B(obj);
        int y10 = y(C);
        if (y10 == -1 || (f10 = J(y10).f(B)) == -1) {
            return -1;
        }
        return F(y10) + f10;
    }

    @Override // com.google.android.exoplayer2.u1
    public int g(boolean z10) {
        int i10;
        int i11 = this.f17189c;
        if (i11 == 0) {
            return -1;
        }
        if (this.f17191e) {
            z10 = false;
        }
        if (z10) {
            i10 = this.f17190d.getLastIndex();
        } else {
            i10 = i11 - 1;
        }
        while (J(i10).u()) {
            i10 = I(i10, z10);
            if (i10 == -1) {
                return -1;
            }
        }
        return G(i10) + J(i10).g(z10);
    }

    @Override // com.google.android.exoplayer2.u1
    public int i(int i10, int i11, boolean z10) {
        int i12 = 0;
        if (this.f17191e) {
            if (i11 == 1) {
                i11 = 2;
            }
            z10 = false;
        }
        int A = A(i10);
        int G = G(A);
        u1 J = J(A);
        int i13 = i10 - G;
        if (i11 != 2) {
            i12 = i11;
        }
        int i14 = J.i(i13, i12, z10);
        if (i14 != -1) {
            return G + i14;
        }
        int H = H(A, z10);
        while (H != -1 && J(H).u()) {
            H = H(H, z10);
        }
        if (H != -1) {
            return G(H) + J(H).e(z10);
        }
        if (i11 != 2) {
            return -1;
        }
        return e(z10);
    }

    @Override // com.google.android.exoplayer2.u1
    public final u1.b k(int i10, u1.b bVar, boolean z10) {
        int z11 = z(i10);
        int G = G(z11);
        J(z11).k(i10 - F(z11), bVar, z10);
        bVar.f18537c += G;
        if (z10) {
            bVar.f18536b = E(D(z11), b7.a.e(bVar.f18536b));
        }
        return bVar;
    }

    @Override // com.google.android.exoplayer2.u1
    public final u1.b l(Object obj, u1.b bVar) {
        Object C = C(obj);
        Object B = B(obj);
        int y10 = y(C);
        int G = G(y10);
        J(y10).l(B, bVar);
        bVar.f18537c += G;
        bVar.f18536b = obj;
        return bVar;
    }

    @Override // com.google.android.exoplayer2.u1
    public int p(int i10, int i11, boolean z10) {
        int i12 = 0;
        if (this.f17191e) {
            if (i11 == 1) {
                i11 = 2;
            }
            z10 = false;
        }
        int A = A(i10);
        int G = G(A);
        u1 J = J(A);
        int i13 = i10 - G;
        if (i11 != 2) {
            i12 = i11;
        }
        int p10 = J.p(i13, i12, z10);
        if (p10 != -1) {
            return G + p10;
        }
        int I = I(A, z10);
        while (I != -1 && J(I).u()) {
            I = I(I, z10);
        }
        if (I != -1) {
            return G(I) + J(I).g(z10);
        }
        if (i11 != 2) {
            return -1;
        }
        return g(z10);
    }

    @Override // com.google.android.exoplayer2.u1
    public final Object q(int i10) {
        int z10 = z(i10);
        return E(D(z10), J(z10).q(i10 - F(z10)));
    }

    @Override // com.google.android.exoplayer2.u1
    public final u1.d s(int i10, u1.d dVar, long j10) {
        int A = A(i10);
        int G = G(A);
        int F = F(A);
        J(A).s(i10 - G, dVar, j10);
        Object D = D(A);
        if (!u1.d.f18546r.equals(dVar.f18550a)) {
            D = E(D, dVar.f18550a);
        }
        dVar.f18550a = D;
        dVar.f18564o += F;
        dVar.f18565p += F;
        return dVar;
    }

    protected abstract int y(Object obj);

    protected abstract int z(int i10);
}
