package hp;

import cn.m0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import yo.k;
/* compiled from: WebvttSubtitle.java */
/* loaded from: classes8.dex */
final class j implements k {

    /* renamed from: a  reason: collision with root package name */
    private final List<d> f53218a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f53219b;

    /* renamed from: c  reason: collision with root package name */
    private final long[] f53220c;

    public j(List<d> list) {
        this.f53218a = Collections.unmodifiableList(new ArrayList(list));
        this.f53219b = new long[list.size() * 2];
        for (int i10 = 0; i10 < list.size(); i10++) {
            d dVar = list.get(i10);
            int i11 = i10 * 2;
            long[] jArr = this.f53219b;
            jArr[i11] = dVar.f53189b;
            jArr[i11 + 1] = dVar.f53190c;
        }
        long[] jArr2 = this.f53219b;
        long[] copyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f53220c = copyOf;
        Arrays.sort(copyOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(d dVar, d dVar2) {
        return Long.compare(dVar.f53189b, dVar2.f53189b);
    }

    @Override // yo.k
    public List<bn.a> getCues(long j10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < this.f53218a.size(); i10++) {
            long[] jArr = this.f53219b;
            int i11 = i10 * 2;
            if (jArr[i11] <= j10 && j10 < jArr[i11 + 1]) {
                d dVar = this.f53218a.get(i10);
                bn.a aVar = dVar.f53188a;
                if (aVar.f2704e == -3.4028235E38f) {
                    arrayList2.add(dVar);
                } else {
                    arrayList.add(aVar);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() { // from class: hp.i
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int b10;
                b10 = j.b((d) obj, (d) obj2);
                return b10;
            }
        });
        for (int i12 = 0; i12 < arrayList2.size(); i12++) {
            arrayList.add(((d) arrayList2.get(i12)).f53188a.a().h((-1) - i12, 1).a());
        }
        return arrayList;
    }

    @Override // yo.k
    public long getEventTime(int i10) {
        boolean z10;
        boolean z11 = false;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        if (i10 < this.f53220c.length) {
            z11 = true;
        }
        cn.a.a(z11);
        return this.f53220c[i10];
    }

    @Override // yo.k
    public int getEventTimeCount() {
        return this.f53220c.length;
    }

    @Override // yo.k
    public int getNextEventTimeIndex(long j10) {
        int d10 = m0.d(this.f53220c, j10, false, false);
        if (d10 >= this.f53220c.length) {
            return -1;
        }
        return d10;
    }
}
