package y6;

import java.util.Collections;
import java.util.List;
/* compiled from: Mp4WebvttSubtitle.java */
/* loaded from: classes4.dex */
final class b implements p6.i {

    /* renamed from: a  reason: collision with root package name */
    private final List<p6.b> f70680a;

    public b(List<p6.b> list) {
        this.f70680a = Collections.unmodifiableList(list);
    }

    @Override // p6.i
    public List<p6.b> getCues(long j10) {
        if (j10 >= 0) {
            return this.f70680a;
        }
        return Collections.emptyList();
    }

    @Override // p6.i
    public long getEventTime(int i10) {
        boolean z10;
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        return 0L;
    }

    @Override // p6.i
    public int getEventTimeCount() {
        return 1;
    }

    @Override // p6.i
    public int getNextEventTimeIndex(long j10) {
        if (j10 < 0) {
            return 0;
        }
        return -1;
    }
}
