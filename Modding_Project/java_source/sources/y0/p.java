package y0;

import java.util.Arrays;
import java.util.List;
/* compiled from: BaseAnimatableValue.java */
/* loaded from: classes2.dex */
abstract class p<V, O> implements o<V, O> {

    /* renamed from: a  reason: collision with root package name */
    final List<e1.a<V>> f70559a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(List<e1.a<V>> list) {
        this.f70559a = list;
    }

    @Override // y0.o
    public List<e1.a<V>> b() {
        return this.f70559a;
    }

    @Override // y0.o
    public boolean c() {
        if (this.f70559a.isEmpty()) {
            return true;
        }
        if (this.f70559a.size() == 1 && this.f70559a.get(0).i()) {
            return true;
        }
        return false;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (!this.f70559a.isEmpty()) {
            sb2.append("values=");
            sb2.append(Arrays.toString(this.f70559a.toArray()));
        }
        return sb2.toString();
    }
}
