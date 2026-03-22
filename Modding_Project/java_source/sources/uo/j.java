package uo;

import androidx.annotation.Nullable;
import ao.f0;
import ao.j0;
import ao.k0;
import cn.m0;
/* compiled from: XingSeeker.java */
/* loaded from: classes8.dex */
final class j implements g {

    /* renamed from: a  reason: collision with root package name */
    private final long f68559a;

    /* renamed from: b  reason: collision with root package name */
    private final int f68560b;

    /* renamed from: c  reason: collision with root package name */
    private final long f68561c;

    /* renamed from: d  reason: collision with root package name */
    private final int f68562d;

    /* renamed from: e  reason: collision with root package name */
    private final long f68563e;

    /* renamed from: f  reason: collision with root package name */
    private final long f68564f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final long[] f68565g;

    private j(long j10, int i10, long j11, int i11) {
        this(j10, i10, j11, i11, -1L, null);
    }

    @Nullable
    public static j b(i iVar, long j10) {
        long[] jArr;
        long a10 = iVar.a();
        if (a10 == -9223372036854775807L) {
            return null;
        }
        long j11 = iVar.f68555c;
        if (j11 != -1 && (jArr = iVar.f68558f) != null) {
            f0.a aVar = iVar.f68553a;
            return new j(j10, aVar.f1830c, a10, aVar.f1833f, j11, jArr);
        }
        f0.a aVar2 = iVar.f68553a;
        return new j(j10, aVar2.f1830c, a10, aVar2.f1833f);
    }

    private long c(int i10) {
        return (this.f68561c * i10) / 100;
    }

    @Override // uo.g
    public long a() {
        return this.f68564f;
    }

    @Override // uo.g
    public int g() {
        return this.f68562d;
    }

    @Override // ao.j0
    public long getDurationUs() {
        return this.f68561c;
    }

    @Override // ao.j0
    public j0.a getSeekPoints(long j10) {
        double d10;
        if (!isSeekable()) {
            return new j0.a(new k0(0L, this.f68559a + this.f68560b));
        }
        long q10 = m0.q(j10, 0L, this.f68561c);
        double d11 = (q10 * 100.0d) / this.f68561c;
        double d12 = 0.0d;
        if (d11 > 0.0d) {
            if (d11 >= 100.0d) {
                d12 = 256.0d;
            } else {
                int i10 = (int) d11;
                long[] jArr = (long[]) cn.a.i(this.f68565g);
                double d13 = jArr[i10];
                if (i10 == 99) {
                    d10 = 256.0d;
                } else {
                    d10 = jArr[i10 + 1];
                }
                d12 = d13 + ((d11 - i10) * (d10 - d13));
            }
        }
        return new j0.a(new k0(q10, this.f68559a + m0.q(Math.round((d12 / 256.0d) * this.f68563e), this.f68560b, this.f68563e - 1)));
    }

    @Override // uo.g
    public long getTimeUs(long j10) {
        long j11;
        double d10;
        long j12 = j10 - this.f68559a;
        if (isSeekable() && j12 > this.f68560b) {
            long[] jArr = (long[]) cn.a.i(this.f68565g);
            double d11 = (j12 * 256.0d) / this.f68563e;
            int h10 = m0.h(jArr, (long) d11, true, true);
            long c10 = c(h10);
            long j13 = jArr[h10];
            int i10 = h10 + 1;
            long c11 = c(i10);
            if (h10 == 99) {
                j11 = 256;
            } else {
                j11 = jArr[i10];
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

    @Override // ao.j0
    public boolean isSeekable() {
        if (this.f68565g != null) {
            return true;
        }
        return false;
    }

    private j(long j10, int i10, long j11, int i11, long j12, @Nullable long[] jArr) {
        this.f68559a = j10;
        this.f68560b = i10;
        this.f68561c = j11;
        this.f68562d = i11;
        this.f68563e = j12;
        this.f68565g = jArr;
        this.f68564f = j12 != -1 ? j10 + j12 : -1L;
    }
}
