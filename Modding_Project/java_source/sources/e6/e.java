package e6;

import b7.s0;
import t5.a0;
import t5.z;
/* compiled from: WavSeekMap.java */
/* loaded from: classes4.dex */
final class e implements z {

    /* renamed from: a  reason: collision with root package name */
    private final c f50838a;

    /* renamed from: b  reason: collision with root package name */
    private final int f50839b;

    /* renamed from: c  reason: collision with root package name */
    private final long f50840c;

    /* renamed from: d  reason: collision with root package name */
    private final long f50841d;

    /* renamed from: e  reason: collision with root package name */
    private final long f50842e;

    public e(c cVar, int i10, long j10, long j11) {
        this.f50838a = cVar;
        this.f50839b = i10;
        this.f50840c = j10;
        long j12 = (j11 - j10) / cVar.f50833e;
        this.f50841d = j12;
        this.f50842e = b(j12);
    }

    private long b(long j10) {
        return s0.F0(j10 * this.f50839b, 1000000L, this.f50838a.f50831c);
    }

    @Override // t5.z
    public long getDurationUs() {
        return this.f50842e;
    }

    @Override // t5.z
    public z.a getSeekPoints(long j10) {
        long q10 = s0.q((this.f50838a.f50831c * j10) / (this.f50839b * 1000000), 0L, this.f50841d - 1);
        long j11 = this.f50840c + (this.f50838a.f50833e * q10);
        long b10 = b(q10);
        a0 a0Var = new a0(b10, j11);
        if (b10 < j10 && q10 != this.f50841d - 1) {
            long j12 = q10 + 1;
            return new z.a(a0Var, new a0(b(j12), this.f50840c + (this.f50838a.f50833e * j12)));
        }
        return new z.a(a0Var);
    }

    @Override // t5.z
    public boolean isSeekable() {
        return true;
    }
}
