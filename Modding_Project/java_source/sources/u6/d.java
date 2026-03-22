package u6;

import b7.s0;
import java.util.Collections;
import java.util.List;
import p6.i;
/* compiled from: SsaSubtitle.java */
/* loaded from: classes4.dex */
final class d implements i {

    /* renamed from: a  reason: collision with root package name */
    private final List<List<p6.b>> f67855a;

    /* renamed from: b  reason: collision with root package name */
    private final List<Long> f67856b;

    public d(List<List<p6.b>> list, List<Long> list2) {
        this.f67855a = list;
        this.f67856b = list2;
    }

    @Override // p6.i
    public List<p6.b> getCues(long j10) {
        int g10 = s0.g(this.f67856b, Long.valueOf(j10), true, false);
        if (g10 == -1) {
            return Collections.emptyList();
        }
        return this.f67855a.get(g10);
    }

    @Override // p6.i
    public long getEventTime(int i10) {
        boolean z10;
        boolean z11 = false;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        if (i10 < this.f67856b.size()) {
            z11 = true;
        }
        b7.a.a(z11);
        return this.f67856b.get(i10).longValue();
    }

    @Override // p6.i
    public int getEventTimeCount() {
        return this.f67856b.size();
    }

    @Override // p6.i
    public int getNextEventTimeIndex(long j10) {
        int d10 = s0.d(this.f67856b, Long.valueOf(j10), false, false);
        if (d10 >= this.f67856b.size()) {
            return -1;
        }
        return d10;
    }
}
