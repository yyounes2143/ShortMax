package r9;

import java.util.ArrayList;
import java.util.List;
/* compiled from: ReedSolomonEncoder.java */
/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final a f65707a;

    /* renamed from: b  reason: collision with root package name */
    private final List<b> f65708b;

    public c(a aVar) {
        this.f65707a = aVar;
        ArrayList arrayList = new ArrayList();
        this.f65708b = arrayList;
        arrayList.add(new b(aVar, new int[]{1}));
    }

    private b a(int i10) {
        if (i10 >= this.f65708b.size()) {
            List<b> list = this.f65708b;
            b bVar = list.get(list.size() - 1);
            for (int size = this.f65708b.size(); size <= i10; size++) {
                a aVar = this.f65707a;
                bVar = bVar.g(new b(aVar, new int[]{1, aVar.c((size - 1) + aVar.d())}));
                this.f65708b.add(bVar);
            }
        }
        return this.f65708b.get(i10);
    }

    public void b(int[] iArr, int i10) {
        if (i10 != 0) {
            int length = iArr.length - i10;
            if (length > 0) {
                b a10 = a(i10);
                int[] iArr2 = new int[length];
                System.arraycopy(iArr, 0, iArr2, 0, length);
                int[] d10 = new b(this.f65707a, iArr2).h(i10, 1).b(a10)[1].d();
                int length2 = i10 - d10.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    iArr[length + i11] = 0;
                }
                System.arraycopy(d10, 0, iArr, length + length2, d10.length);
                return;
            }
            throw new IllegalArgumentException("No data bytes provided");
        }
        throw new IllegalArgumentException("No error correction bytes");
    }
}
