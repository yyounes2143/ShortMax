package jn;

import kn.i;
/* compiled from: DashWrappingSegmentIndex.java */
/* loaded from: classes8.dex */
public final class g implements e {

    /* renamed from: a  reason: collision with root package name */
    private final ao.g f60461a;

    /* renamed from: b  reason: collision with root package name */
    private final long f60462b;

    public g(ao.g gVar, long j10) {
        this.f60461a = gVar;
        this.f60462b = j10;
    }

    @Override // jn.e
    public long a(long j10, long j11) {
        return this.f60461a.f1838d[(int) j10];
    }

    @Override // jn.e
    public long b(long j10, long j11) {
        return 0L;
    }

    @Override // jn.e
    public long c(long j10, long j11) {
        return -9223372036854775807L;
    }

    @Override // jn.e
    public long d(long j10, long j11) {
        return this.f60461a.b(j10 + this.f60462b);
    }

    @Override // jn.e
    public long e(long j10) {
        return this.f60461a.f1835a;
    }

    @Override // jn.e
    public long f() {
        return 0L;
    }

    @Override // jn.e
    public i g(long j10) {
        ao.g gVar = this.f60461a;
        int i10 = (int) j10;
        return new i(null, gVar.f1837c[i10], gVar.f1836b[i10]);
    }

    @Override // jn.e
    public long getTimeUs(long j10) {
        return this.f60461a.f1839e[(int) j10] - this.f60462b;
    }

    @Override // jn.e
    public boolean h() {
        return true;
    }

    @Override // jn.e
    public long i(long j10, long j11) {
        return this.f60461a.f1835a;
    }
}
