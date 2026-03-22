package t5;

import t5.z;
/* compiled from: ConstantBitrateSeekMap.java */
/* loaded from: classes4.dex */
public class d implements z {

    /* renamed from: a  reason: collision with root package name */
    private final long f67117a;

    /* renamed from: b  reason: collision with root package name */
    private final long f67118b;

    /* renamed from: c  reason: collision with root package name */
    private final int f67119c;

    /* renamed from: d  reason: collision with root package name */
    private final long f67120d;

    /* renamed from: e  reason: collision with root package name */
    private final int f67121e;

    /* renamed from: f  reason: collision with root package name */
    private final long f67122f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f67123g;

    public d(long j10, long j11, int i10, int i11, boolean z10) {
        this.f67117a = j10;
        this.f67118b = j11;
        this.f67119c = i11 == -1 ? 1 : i11;
        this.f67121e = i10;
        this.f67123g = z10;
        if (j10 == -1) {
            this.f67120d = -1L;
            this.f67122f = -9223372036854775807L;
            return;
        }
        this.f67120d = j10 - j11;
        this.f67122f = d(j10, j11, i10);
    }

    private long b(long j10) {
        int i10 = this.f67119c;
        long j11 = (((j10 * this.f67121e) / 8000000) / i10) * i10;
        long j12 = this.f67120d;
        if (j12 != -1) {
            j11 = Math.min(j11, j12 - i10);
        }
        return this.f67118b + Math.max(j11, 0L);
    }

    private static long d(long j10, long j11, int i10) {
        return (Math.max(0L, j10 - j11) * 8000000) / i10;
    }

    public long c(long j10) {
        return d(j10, this.f67118b, this.f67121e);
    }

    @Override // t5.z
    public long getDurationUs() {
        return this.f67122f;
    }

    @Override // t5.z
    public z.a getSeekPoints(long j10) {
        if (this.f67120d == -1 && !this.f67123g) {
            return new z.a(new a0(0L, this.f67118b));
        }
        long b10 = b(j10);
        long c10 = c(b10);
        a0 a0Var = new a0(c10, b10);
        if (this.f67120d != -1 && c10 < j10) {
            int i10 = this.f67119c;
            if (i10 + b10 < this.f67117a) {
                long j11 = b10 + i10;
                return new z.a(a0Var, new a0(c(j11), j11));
            }
        }
        return new z.a(a0Var);
    }

    @Override // t5.z
    public boolean isSeekable() {
        if (this.f67120d == -1 && !this.f67123g) {
            return false;
        }
        return true;
    }
}
