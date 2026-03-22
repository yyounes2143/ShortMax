package ao;

import ao.j0;
/* compiled from: SingleSampleSeekMap.java */
/* loaded from: classes8.dex */
public final class m0 implements j0 {

    /* renamed from: a  reason: collision with root package name */
    private final long f1894a;

    /* renamed from: b  reason: collision with root package name */
    private final long f1895b;

    public m0(long j10) {
        this(j10, 0L);
    }

    @Override // ao.j0
    public long getDurationUs() {
        return this.f1894a;
    }

    @Override // ao.j0
    public j0.a getSeekPoints(long j10) {
        return new j0.a(new k0(j10, this.f1895b));
    }

    @Override // ao.j0
    public boolean isSeekable() {
        return true;
    }

    public m0(long j10, long j11) {
        this.f1894a = j10;
        this.f1895b = j11;
    }
}
