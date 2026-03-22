package zo;

import java.util.Collections;
import java.util.List;
import yo.k;
/* compiled from: CeaSubtitle.java */
/* loaded from: classes8.dex */
final class f implements k {

    /* renamed from: a  reason: collision with root package name */
    private final List<bn.a> f72330a;

    public f(List<bn.a> list) {
        this.f72330a = list;
    }

    @Override // yo.k
    public List<bn.a> getCues(long j10) {
        if (j10 >= 0) {
            return this.f72330a;
        }
        return Collections.emptyList();
    }

    @Override // yo.k
    public long getEventTime(int i10) {
        boolean z10;
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        return 0L;
    }

    @Override // yo.k
    public int getEventTimeCount() {
        return 1;
    }

    @Override // yo.k
    public int getNextEventTimeIndex(long j10) {
        if (j10 < 0) {
            return 0;
        }
        return -1;
    }
}
