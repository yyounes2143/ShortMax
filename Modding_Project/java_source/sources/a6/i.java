package a6;

import androidx.annotation.Nullable;
import b7.q;
import b7.s0;
import q5.g0;
import t5.a0;
import t5.z;
/* compiled from: XingSeeker.java */
/* loaded from: classes4.dex */
final class i implements g {

    /* renamed from: a  reason: collision with root package name */
    private final long f168a;

    /* renamed from: b  reason: collision with root package name */
    private final int f169b;

    /* renamed from: c  reason: collision with root package name */
    private final long f170c;

    /* renamed from: d  reason: collision with root package name */
    private final long f171d;

    /* renamed from: e  reason: collision with root package name */
    private final long f172e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final long[] f173f;

    private i(long j10, int i10, long j11) {
        this(j10, i10, j11, -1L, null);
    }

    @Nullable
    public static i b(long j10, long j11, g0.a aVar, b7.g0 g0Var) {
        int H;
        int i10 = aVar.f65091g;
        int i11 = aVar.f65088d;
        int n10 = g0Var.n();
        if ((n10 & 1) == 1 && (H = g0Var.H()) != 0) {
            long F0 = s0.F0(H, i10 * 1000000, i11);
            if ((n10 & 6) != 6) {
                return new i(j11, aVar.f65087c, F0);
            }
            long F = g0Var.F();
            long[] jArr = new long[100];
            for (int i12 = 0; i12 < 100; i12++) {
                jArr[i12] = g0Var.D();
            }
            if (j10 != -1) {
                long j12 = j11 + F;
                if (j10 != j12) {
                    q.i("XingSeeker", "XING data size mismatch: " + j10 + ", " + j12);
                }
            }
            return new i(j11, aVar.f65087c, F0, F, jArr);
        }
        return null;
    }

    private long c(int i10) {
        return (this.f170c * i10) / 100;
    }

    @Override // a6.g
    public long a() {
        return this.f172e;
    }

    @Override // t5.z
    public long getDurationUs() {
        return this.f170c;
    }

    @Override // t5.z
    public z.a getSeekPoints(long j10) {
        double d10;
        if (!isSeekable()) {
            return new z.a(new a0(0L, this.f168a + this.f169b));
        }
        long q10 = s0.q(j10, 0L, this.f170c);
        double d11 = (q10 * 100.0d) / this.f170c;
        double d12 = 0.0d;
        if (d11 > 0.0d) {
            if (d11 >= 100.0d) {
                d12 = 256.0d;
            } else {
                int i10 = (int) d11;
                long[] jArr = (long[]) b7.a.i(this.f173f);
                double d13 = jArr[i10];
                if (i10 == 99) {
                    d10 = 256.0d;
                } else {
                    d10 = jArr[i10 + 1];
                }
                d12 = d13 + ((d11 - i10) * (d10 - d13));
            }
        }
        return new z.a(new a0(q10, this.f168a + s0.q(Math.round((d12 / 256.0d) * this.f171d), this.f169b, this.f171d - 1)));
    }

    @Override // a6.g
    public long getTimeUs(long j10) {
        long j11;
        double d10;
        long j12 = j10 - this.f168a;
        if (isSeekable() && j12 > this.f169b) {
            long[] jArr = (long[]) b7.a.i(this.f173f);
            double d11 = (j12 * 256.0d) / this.f171d;
            int i10 = s0.i(jArr, (long) d11, true, true);
            long c10 = c(i10);
            long j13 = jArr[i10];
            int i11 = i10 + 1;
            long c11 = c(i11);
            if (i10 == 99) {
                j11 = 256;
            } else {
                j11 = jArr[i11];
            }
            if (j13 == j11) {
                d10 = 0.0d;
            } else {
                d10 = (d11 - j13) / (j11 - j13);
            }
            return c10 + Math.round(d10 * (c11 - c10));
        }
        return 0L;
    }

    @Override // t5.z
    public boolean isSeekable() {
        if (this.f173f != null) {
            return true;
        }
        return false;
    }

    private i(long j10, int i10, long j11, long j12, @Nullable long[] jArr) {
        this.f168a = j10;
        this.f169b = i10;
        this.f170c = j11;
        this.f173f = jArr;
        this.f171d = j12;
        this.f172e = j12 != -1 ? j10 + j12 : -1L;
    }
}
