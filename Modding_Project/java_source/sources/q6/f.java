package q6;

import java.util.Collections;
import java.util.List;
import p6.i;
/* compiled from: CeaSubtitle.java */
/* loaded from: classes4.dex */
final class f implements i {

    /* renamed from: a  reason: collision with root package name */
    private final List<p6.b> f65211a;

    public f(List<p6.b> list) {
        this.f65211a = list;
    }

    @Override // p6.i
    public List<p6.b> getCues(long j10) {
        if (j10 >= 0) {
            return this.f65211a;
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
