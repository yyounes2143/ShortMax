package uo;

import androidx.annotation.Nullable;
import ao.f0;
import ao.j0;
import ao.k0;
import cn.b0;
import cn.m0;
import cn.r;
/* compiled from: VbriSeeker.java */
/* loaded from: classes8.dex */
final class h implements g {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f68548a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f68549b;

    /* renamed from: c  reason: collision with root package name */
    private final long f68550c;

    /* renamed from: d  reason: collision with root package name */
    private final long f68551d;

    /* renamed from: e  reason: collision with root package name */
    private final int f68552e;

    private h(long[] jArr, long[] jArr2, long j10, long j11, int i10) {
        this.f68548a = jArr;
        this.f68549b = jArr2;
        this.f68550c = j10;
        this.f68551d = j11;
        this.f68552e = i10;
    }

    @Nullable
    public static h b(long j10, long j11, f0.a aVar, b0 b0Var) {
        int H;
        b0Var.X(6);
        long q10 = j11 + aVar.f1830c + b0Var.q();
        int q11 = b0Var.q();
        if (q11 <= 0) {
            return null;
        }
        long e12 = m0.e1((q11 * aVar.f1834g) - 1, aVar.f1831d);
        int P = b0Var.P();
        int P2 = b0Var.P();
        int P3 = b0Var.P();
        b0Var.X(2);
        long j12 = j11 + aVar.f1830c;
        long[] jArr = new long[P];
        long[] jArr2 = new long[P];
        int i10 = 0;
        while (i10 < P) {
            long j13 = e12;
            jArr[i10] = (i10 * e12) / P;
            jArr2[i10] = j12;
            if (P3 != 1) {
                if (P3 != 2) {
                    if (P3 != 3) {
                        if (P3 != 4) {
                            return null;
                        }
                        H = b0Var.L();
                    } else {
                        H = b0Var.K();
                    }
                } else {
                    H = b0Var.P();
                }
            } else {
                H = b0Var.H();
            }
            j12 += H * P2;
            i10++;
            e12 = j13;
        }
        long j14 = e12;
        if (j10 != -1 && j10 != q10) {
            r.h("VbriSeeker", "VBRI data size mismatch: " + j10 + ", " + q10);
        }
        if (q10 != j12) {
            r.h("VbriSeeker", "VBRI bytes and ToC mismatch (using max): " + q10 + ", " + j12 + "\nSeeking will be inaccurate.");
            q10 = Math.max(q10, j12);
        }
        return new h(jArr, jArr2, j14, q10, aVar.f1833f);
    }

    @Override // uo.g
    public long a() {
        return this.f68551d;
    }

    @Override // uo.g
    public int g() {
        return this.f68552e;
    }

    @Override // ao.j0
    public long getDurationUs() {
        return this.f68550c;
    }

    @Override // ao.j0
    public j0.a getSeekPoints(long j10) {
        int h10 = m0.h(this.f68548a, j10, true, true);
        k0 k0Var = new k0(this.f68548a[h10], this.f68549b[h10]);
        if (k0Var.f1861a < j10 && h10 != this.f68548a.length - 1) {
            int i10 = h10 + 1;
            return new j0.a(k0Var, new k0(this.f68548a[i10], this.f68549b[i10]));
        }
        return new j0.a(k0Var);
    }

    @Override // uo.g
    public long getTimeUs(long j10) {
        return this.f68548a[m0.h(this.f68549b, j10, true, true)];
    }

    @Override // ao.j0
    public boolean isSeekable() {
        return true;
    }
}
