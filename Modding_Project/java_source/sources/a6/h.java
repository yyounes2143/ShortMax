package a6;

import androidx.annotation.Nullable;
import b7.q;
import b7.s0;
import q5.g0;
import t5.a0;
import t5.z;
/* compiled from: VbriSeeker.java */
/* loaded from: classes4.dex */
final class h implements g {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f164a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f165b;

    /* renamed from: c  reason: collision with root package name */
    private final long f166c;

    /* renamed from: d  reason: collision with root package name */
    private final long f167d;

    private h(long[] jArr, long[] jArr2, long j10, long j11) {
        this.f164a = jArr;
        this.f165b = jArr2;
        this.f166c = j10;
        this.f167d = j11;
    }

    @Nullable
    public static h b(long j10, long j11, g0.a aVar, b7.g0 g0Var) {
        int i10;
        int D;
        g0Var.Q(10);
        int n10 = g0Var.n();
        if (n10 <= 0) {
            return null;
        }
        int i11 = aVar.f65088d;
        long j12 = n10;
        if (i11 >= 32000) {
            i10 = 1152;
        } else {
            i10 = 576;
        }
        long F0 = s0.F0(j12, i10 * 1000000, i11);
        int J = g0Var.J();
        int J2 = g0Var.J();
        int J3 = g0Var.J();
        g0Var.Q(2);
        long j13 = j11 + aVar.f65087c;
        long[] jArr = new long[J];
        long[] jArr2 = new long[J];
        int i12 = 0;
        long j14 = j11;
        while (i12 < J) {
            int i13 = J2;
            long j15 = j13;
            jArr[i12] = (i12 * F0) / J;
            jArr2[i12] = Math.max(j14, j15);
            if (J3 != 1) {
                if (J3 != 2) {
                    if (J3 != 3) {
                        if (J3 != 4) {
                            return null;
                        }
                        D = g0Var.H();
                    } else {
                        D = g0Var.G();
                    }
                } else {
                    D = g0Var.J();
                }
            } else {
                D = g0Var.D();
            }
            j14 += D * i13;
            i12++;
            jArr = jArr;
            J2 = i13;
            j13 = j15;
        }
        long[] jArr3 = jArr;
        if (j10 != -1 && j10 != j14) {
            q.i("VbriSeeker", "VBRI data size mismatch: " + j10 + ", " + j14);
        }
        return new h(jArr3, jArr2, F0, j14);
    }

    @Override // a6.g
    public long a() {
        return this.f167d;
    }

    @Override // t5.z
    public long getDurationUs() {
        return this.f166c;
    }

    @Override // t5.z
    public z.a getSeekPoints(long j10) {
        int i10 = s0.i(this.f164a, j10, true, true);
        a0 a0Var = new a0(this.f164a[i10], this.f165b[i10]);
        if (a0Var.f67098a < j10 && i10 != this.f164a.length - 1) {
            int i11 = i10 + 1;
            return new z.a(a0Var, new a0(this.f164a[i11], this.f165b[i11]));
        }
        return new z.a(a0Var);
    }

    @Override // a6.g
    public long getTimeUs(long j10) {
        return this.f164a[s0.i(this.f165b, j10, true, true)];
    }

    @Override // t5.z
    public boolean isSeekable() {
        return true;
    }
}
