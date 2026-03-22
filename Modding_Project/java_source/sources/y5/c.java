package y5;

import t5.l;
import t5.u;
/* compiled from: StartOffsetExtractorInput.java */
/* loaded from: classes4.dex */
final class c extends u {

    /* renamed from: b  reason: collision with root package name */
    private final long f70671b;

    public c(l lVar, long j10) {
        super(lVar);
        boolean z10;
        if (lVar.getPosition() >= j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        this.f70671b = j10;
    }

    @Override // t5.u, t5.l
    public long getLength() {
        return super.getLength() - this.f70671b;
    }

    @Override // t5.u, t5.l
    public long getPeekPosition() {
        return super.getPeekPosition() - this.f70671b;
    }

    @Override // t5.u, t5.l
    public long getPosition() {
        return super.getPosition() - this.f70671b;
    }
}
