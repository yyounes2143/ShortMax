package v6;

import b7.s0;
import java.util.Collections;
import java.util.List;
import p6.i;
/* compiled from: SubripSubtitle.java */
/* loaded from: classes4.dex */
final class b implements i {

    /* renamed from: a  reason: collision with root package name */
    private final p6.b[] f68722a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f68723b;

    public b(p6.b[] bVarArr, long[] jArr) {
        this.f68722a = bVarArr;
        this.f68723b = jArr;
    }

    @Override // p6.i
    public List<p6.b> getCues(long j10) {
        p6.b bVar;
        int i10 = s0.i(this.f68723b, j10, true, false);
        if (i10 != -1 && (bVar = this.f68722a[i10]) != p6.b.f64733r) {
            return Collections.singletonList(bVar);
        }
        return Collections.emptyList();
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
        if (i10 < this.f68723b.length) {
            z11 = true;
        }
        b7.a.a(z11);
        return this.f68723b[i10];
    }

    @Override // p6.i
    public int getEventTimeCount() {
        return this.f68723b.length;
    }

    @Override // p6.i
    public int getNextEventTimeIndex(long j10) {
        int e10 = s0.e(this.f68723b, j10, false, false);
        if (e10 >= this.f68723b.length) {
            return -1;
        }
        return e10;
    }
}
