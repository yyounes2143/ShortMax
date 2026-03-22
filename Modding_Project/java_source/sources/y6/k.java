package y6;

import b7.s0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* compiled from: WebvttSubtitle.java */
/* loaded from: classes4.dex */
final class k implements p6.i {

    /* renamed from: a  reason: collision with root package name */
    private final List<e> f70732a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f70733b;

    /* renamed from: c  reason: collision with root package name */
    private final long[] f70734c;

    public k(List<e> list) {
        this.f70732a = Collections.unmodifiableList(new ArrayList(list));
        this.f70733b = new long[list.size() * 2];
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = list.get(i10);
            int i11 = i10 * 2;
            long[] jArr = this.f70733b;
            jArr[i11] = eVar.f70703b;
            jArr[i11 + 1] = eVar.f70704c;
        }
        long[] jArr2 = this.f70733b;
        long[] copyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f70734c = copyOf;
        Arrays.sort(copyOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(e eVar, e eVar2) {
        return Long.compare(eVar.f70703b, eVar2.f70703b);
    }

    @Override // p6.i
    public List<p6.b> getCues(long j10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < this.f70732a.size(); i10++) {
            long[] jArr = this.f70733b;
            int i11 = i10 * 2;
            if (jArr[i11] <= j10 && j10 < jArr[i11 + 1]) {
                e eVar = this.f70732a.get(i10);
                p6.b bVar = eVar.f70702a;
                if (bVar.f64739e == -3.4028235E38f) {
                    arrayList2.add(eVar);
                } else {
                    arrayList.add(bVar);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() { // from class: y6.j
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int b10;
                b10 = k.b((e) obj, (e) obj2);
                return b10;
            }
        });
        for (int i12 = 0; i12 < arrayList2.size(); i12++) {
            arrayList.add(((e) arrayList2.get(i12)).f70702a.b().h((-1) - i12, 1).a());
        }
        return arrayList;
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
        if (i10 < this.f70734c.length) {
            z11 = true;
        }
        b7.a.a(z11);
        return this.f70734c[i10];
    }

    @Override // p6.i
    public int getEventTimeCount() {
        return this.f70734c.length;
    }

    @Override // p6.i
    public int getNextEventTimeIndex(long j10) {
        int e10 = s0.e(this.f70734c, j10, false, false);
        if (e10 >= this.f70734c.length) {
            return -1;
        }
        return e10;
    }
}
