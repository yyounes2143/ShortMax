package w7;

import com.google.firebase.components.DependencyCycleException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* compiled from: CycleDetector.java */
/* loaded from: classes5.dex */
class p {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CycleDetector.java */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final w7.c<?> f69776a;

        /* renamed from: b  reason: collision with root package name */
        private final Set<b> f69777b = new HashSet();

        /* renamed from: c  reason: collision with root package name */
        private final Set<b> f69778c = new HashSet();

        b(w7.c<?> cVar) {
            this.f69776a = cVar;
        }

        void a(b bVar) {
            this.f69777b.add(bVar);
        }

        void b(b bVar) {
            this.f69778c.add(bVar);
        }

        w7.c<?> c() {
            return this.f69776a;
        }

        Set<b> d() {
            return this.f69777b;
        }

        boolean e() {
            return this.f69777b.isEmpty();
        }

        boolean f() {
            return this.f69778c.isEmpty();
        }

        void g(b bVar) {
            this.f69778c.remove(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CycleDetector.java */
    /* loaded from: classes5.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final a0<?> f69779a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f69780b;

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (!cVar.f69779a.equals(this.f69779a) || cVar.f69780b != this.f69780b) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return ((this.f69779a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f69780b).hashCode();
        }

        private c(a0<?> a0Var, boolean z10) {
            this.f69779a = a0Var;
            this.f69780b = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(List<w7.c<?>> list) {
        Set<b> c10 = c(list);
        Set<b> b10 = b(c10);
        int i10 = 0;
        while (!b10.isEmpty()) {
            b next = b10.iterator().next();
            b10.remove(next);
            i10++;
            for (b bVar : next.d()) {
                bVar.g(next);
                if (bVar.f()) {
                    b10.add(bVar);
                }
            }
        }
        if (i10 == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (b bVar2 : c10) {
            if (!bVar2.f() && !bVar2.e()) {
                arrayList.add(bVar2.c());
            }
        }
        throw new DependencyCycleException(arrayList);
    }

    private static Set<b> b(Set<b> set) {
        HashSet hashSet = new HashSet();
        for (b bVar : set) {
            if (bVar.f()) {
                hashSet.add(bVar);
            }
        }
        return hashSet;
    }

    private static Set<b> c(List<w7.c<?>> list) {
        Set<b> set;
        HashMap hashMap = new HashMap(list.size());
        for (w7.c<?> cVar : list) {
            b bVar = new b(cVar);
            for (a0<? super Object> a0Var : cVar.j()) {
                c cVar2 = new c(a0Var, !cVar.p());
                if (!hashMap.containsKey(cVar2)) {
                    hashMap.put(cVar2, new HashSet());
                }
                Set set2 = (Set) hashMap.get(cVar2);
                if (!set2.isEmpty() && !cVar2.f69780b) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", a0Var));
                }
                set2.add(bVar);
            }
        }
        for (Set<b> set3 : hashMap.values()) {
            for (b bVar2 : set3) {
                for (q qVar : bVar2.c().g()) {
                    if (qVar.e() && (set = (Set) hashMap.get(new c(qVar.c(), qVar.g()))) != null) {
                        for (b bVar3 : set) {
                            bVar2.a(bVar3);
                            bVar3.b(bVar2);
                        }
                    }
                }
            }
        }
        HashSet hashSet = new HashSet();
        for (Set set4 : hashMap.values()) {
            hashSet.addAll(set4);
        }
        return hashSet;
    }
}
