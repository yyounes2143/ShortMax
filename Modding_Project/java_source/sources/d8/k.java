package d8;

import e8.f0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: RolloutAssignmentList.java */
/* loaded from: classes5.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private final List<j> f50250a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final int f50251b;

    public k(int i10) {
        this.f50251b = i10;
    }

    public List<f0.e.d.AbstractC0734e> a() {
        List<j> b10 = b();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < b10.size(); i10++) {
            arrayList.add(b10.get(i10).h());
        }
        return arrayList;
    }

    public synchronized List<j> b() {
        return Collections.unmodifiableList(new ArrayList(this.f50250a));
    }

    public synchronized boolean c(List<j> list) {
        this.f50250a.clear();
        if (list.size() > this.f50251b) {
            z7.g f10 = z7.g.f();
            f10.k("Ignored 0 entries when adding rollout assignments. Maximum allowable: " + this.f50251b);
            return this.f50250a.addAll(list.subList(0, this.f50251b));
        }
        return this.f50250a.addAll(list);
    }
}
