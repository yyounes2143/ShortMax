package ep;

import cn.m0;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import yo.k;
/* compiled from: TtmlSubtitle.java */
/* loaded from: classes8.dex */
final class h implements k {

    /* renamed from: a  reason: collision with root package name */
    private final c f51515a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f51516b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, g> f51517c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, e> f51518d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, String> f51519e;

    public h(c cVar, Map<String, g> map, Map<String, e> map2, Map<String, String> map3) {
        Map<String, g> emptyMap;
        this.f51515a = cVar;
        this.f51518d = map2;
        this.f51519e = map3;
        if (map != null) {
            emptyMap = Collections.unmodifiableMap(map);
        } else {
            emptyMap = Collections.emptyMap();
        }
        this.f51517c = emptyMap;
        this.f51516b = cVar.j();
    }

    @Override // yo.k
    public List<bn.a> getCues(long j10) {
        return this.f51515a.h(j10, this.f51517c, this.f51518d, this.f51519e);
    }

    @Override // yo.k
    public long getEventTime(int i10) {
        return this.f51516b[i10];
    }

    @Override // yo.k
    public int getEventTimeCount() {
        return this.f51516b.length;
    }

    @Override // yo.k
    public int getNextEventTimeIndex(long j10) {
        int d10 = m0.d(this.f51516b, j10, false, false);
        if (d10 >= this.f51516b.length) {
            return -1;
        }
        return d10;
    }
}
