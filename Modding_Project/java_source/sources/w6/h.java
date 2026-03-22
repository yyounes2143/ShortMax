package w6;

import b7.s0;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p6.i;
/* compiled from: TtmlSubtitle.java */
/* loaded from: classes4.dex */
final class h implements i {

    /* renamed from: a  reason: collision with root package name */
    private final d f69719a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f69720b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, g> f69721c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, e> f69722d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, String> f69723e;

    public h(d dVar, Map<String, g> map, Map<String, e> map2, Map<String, String> map3) {
        Map<String, g> emptyMap;
        this.f69719a = dVar;
        this.f69722d = map2;
        this.f69723e = map3;
        if (map != null) {
            emptyMap = Collections.unmodifiableMap(map);
        } else {
            emptyMap = Collections.emptyMap();
        }
        this.f69721c = emptyMap;
        this.f69720b = dVar.j();
    }

    @Override // p6.i
    public List<p6.b> getCues(long j10) {
        return this.f69719a.h(j10, this.f69721c, this.f69722d, this.f69723e);
    }

    @Override // p6.i
    public long getEventTime(int i10) {
        return this.f69720b[i10];
    }

    @Override // p6.i
    public int getEventTimeCount() {
        return this.f69720b.length;
    }

    @Override // p6.i
    public int getNextEventTimeIndex(long j10) {
        int e10 = s0.e(this.f69720b, j10, false, false);
        if (e10 >= this.f69720b.length) {
            return -1;
        }
        return e10;
    }
}
