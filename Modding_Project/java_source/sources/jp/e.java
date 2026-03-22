package jp;

import ao.j0;
import ao.k0;
import cn.m0;
/* compiled from: WavSeekMap.java */
/* loaded from: classes8.dex */
final class e implements j0 {

    /* renamed from: a  reason: collision with root package name */
    private final c f60527a;

    /* renamed from: b  reason: collision with root package name */
    private final int f60528b;

    /* renamed from: c  reason: collision with root package name */
    private final long f60529c;

    /* renamed from: d  reason: collision with root package name */
    private final long f60530d;

    /* renamed from: e  reason: collision with root package name */
    private final long f60531e;

    public e(c cVar, int i10, long j10, long j11) {
        this.f60527a = cVar;
        this.f60528b = i10;
        this.f60529c = j10;
        long j12 = (j11 - j10) / cVar.f60522e;
        this.f60530d = j12;
        this.f60531e = b(j12);
    }

    private long b(long j10) {
        return m0.f1(j10 * this.f60528b, 1000000L, this.f60527a.f60520c);
    }

    @Override // ao.j0
    public long getDurationUs() {
        return this.f60531e;
    }

    @Override // ao.j0
    public j0.a getSeekPoints(long j10) {
        long q10 = m0.q((this.f60527a.f60520c * j10) / (this.f60528b * 1000000), 0L, this.f60530d - 1);
        long j11 = this.f60529c + (this.f60527a.f60522e * q10);
        long b10 = b(q10);
        k0 k0Var = new k0(b10, j11);
        if (b10 < j10 && q10 != this.f60530d - 1) {
            long j12 = q10 + 1;
            return new j0.a(k0Var, new k0(b(j12), this.f60529c + (this.f60527a.f60522e * j12)));
        }
        return new j0.a(k0Var);
    }

    @Override // ao.j0
    public boolean isSeekable() {
        return true;
    }
}
