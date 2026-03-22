package r6;

import java.util.List;
import p6.i;
/* compiled from: DvbSubtitle.java */
/* loaded from: classes4.dex */
final class c implements i {

    /* renamed from: a  reason: collision with root package name */
    private final List<p6.b> f65669a;

    public c(List<p6.b> list) {
        this.f65669a = list;
    }

    @Override // p6.i
    public List<p6.b> getCues(long j10) {
        return this.f65669a;
    }

    @Override // p6.i
    public long getEventTime(int i10) {
        return 0L;
    }

    @Override // p6.i
    public int getEventTimeCount() {
        return 1;
    }

    @Override // p6.i
    public int getNextEventTimeIndex(long j10) {
        return -1;
    }
}
