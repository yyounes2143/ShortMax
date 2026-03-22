package jo;

import ao.q;
import ao.z;
/* compiled from: StartOffsetExtractorInput.java */
/* loaded from: classes8.dex */
final class d extends z {

    /* renamed from: b  reason: collision with root package name */
    private final long f60480b;

    public d(q qVar, long j10) {
        super(qVar);
        boolean z10;
        if (qVar.getPosition() >= j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        this.f60480b = j10;
    }

    @Override // ao.z, ao.q
    public long getLength() {
        return super.getLength() - this.f60480b;
    }

    @Override // ao.z, ao.q
    public long getPeekPosition() {
        return super.getPeekPosition() - this.f60480b;
    }

    @Override // ao.z, ao.q
    public long getPosition() {
        return super.getPosition() - this.f60480b;
    }
}
