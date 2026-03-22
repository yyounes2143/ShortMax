package s6;

import java.util.List;
import p6.i;
/* compiled from: PgsSubtitle.java */
/* loaded from: classes4.dex */
final class b implements i {

    /* renamed from: a  reason: collision with root package name */
    private final List<p6.b> f66341a;

    public b(List<p6.b> list) {
        this.f66341a = list;
    }

    @Override // p6.i
    public List<p6.b> getCues(long j10) {
        return this.f66341a;
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
