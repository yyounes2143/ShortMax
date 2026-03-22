package ao;

import ao.j0;
/* compiled from: ConstantBitrateSeekMap.java */
/* loaded from: classes8.dex */
public class h implements j0 {

    /* renamed from: a  reason: collision with root package name */
    private final long f1841a;

    /* renamed from: b  reason: collision with root package name */
    private final long f1842b;

    /* renamed from: c  reason: collision with root package name */
    private final int f1843c;

    /* renamed from: d  reason: collision with root package name */
    private final long f1844d;

    /* renamed from: e  reason: collision with root package name */
    private final int f1845e;

    /* renamed from: f  reason: collision with root package name */
    private final long f1846f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f1847g;

    public h(long j10, long j11, int i10, int i11, boolean z10) {
        this.f1841a = j10;
        this.f1842b = j11;
        this.f1843c = i11 == -1 ? 1 : i11;
        this.f1845e = i10;
        this.f1847g = z10;
        if (j10 == -1) {
            this.f1844d = -1L;
            this.f1846f = -9223372036854775807L;
            return;
        }
        this.f1844d = j10 - j11;
        this.f1846f = d(j10, j11, i10);
    }

    private long b(long j10) {
        int i10 = this.f1843c;
        long j11 = (((j10 * this.f1845e) / 8000000) / i10) * i10;
        long j12 = this.f1844d;
        if (j12 != -1) {
            j11 = Math.min(j11, j12 - i10);
        }
        return this.f1842b + Math.max(j11, 0L);
    }

    private static long d(long j10, long j11, int i10) {
        return (Math.max(0L, j10 - j11) * 8000000) / i10;
    }

    public long c(long j10) {
        return d(j10, this.f1842b, this.f1845e);
    }

    @Override // ao.j0
    public long getDurationUs() {
        return this.f1846f;
    }

    @Override // ao.j0
    public j0.a getSeekPoints(long j10) {
        if (this.f1844d == -1 && !this.f1847g) {
            return new j0.a(new k0(0L, this.f1842b));
        }
        long b10 = b(j10);
        long c10 = c(b10);
        k0 k0Var = new k0(c10, b10);
        if (this.f1844d != -1 && c10 < j10) {
            int i10 = this.f1843c;
            if (i10 + b10 < this.f1841a) {
                long j11 = b10 + i10;
                return new j0.a(k0Var, new k0(c(j11), j11));
            }
        }
        return new j0.a(k0Var);
    }

    @Override // ao.j0
    public boolean isSeekable() {
        if (this.f1844d == -1 && !this.f1847g) {
            return false;
        }
        return true;
    }
}
