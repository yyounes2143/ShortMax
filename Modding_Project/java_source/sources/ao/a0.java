package ao;

import ao.j0;
/* compiled from: ForwardingSeekMap.java */
/* loaded from: classes8.dex */
public class a0 implements j0 {

    /* renamed from: a  reason: collision with root package name */
    private final j0 f1738a;

    public a0(j0 j0Var) {
        this.f1738a = j0Var;
    }

    @Override // ao.j0
    public long getDurationUs() {
        return this.f1738a.getDurationUs();
    }

    @Override // ao.j0
    public j0.a getSeekPoints(long j10) {
        return this.f1738a.getSeekPoints(j10);
    }

    @Override // ao.j0
    public boolean isSeekable() {
        return this.f1738a.isSeekable();
    }
}
