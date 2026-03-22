package w7;

import android.util.Log;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.InvalidRegistrarException;
import com.google.firebase.components.MissingDependencyException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import w7.n;
/* compiled from: ComponentRuntime.java */
/* loaded from: classes5.dex */
public class n implements d, o8.a {

    /* renamed from: i  reason: collision with root package name */
    private static final w8.b<Set<Object>> f69762i = new w8.b() { // from class: w7.j
        @Override // w8.b
        public final Object get() {
            return Collections.emptySet();
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Map<c<?>, w8.b<?>> f69763a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<a0<?>, w8.b<?>> f69764b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<a0<?>, u<?>> f69765c;

    /* renamed from: d  reason: collision with root package name */
    private final List<w8.b<ComponentRegistrar>> f69766d;

    /* renamed from: e  reason: collision with root package name */
    private Set<String> f69767e;

    /* renamed from: f  reason: collision with root package name */
    private final s f69768f;

    /* renamed from: g  reason: collision with root package name */
    private final AtomicReference<Boolean> f69769g;

    /* renamed from: h  reason: collision with root package name */
    private final i f69770h;

    public static b m(Executor executor) {
        return new b(executor);
    }

    private void n(List<c<?>> list) {
        ArrayList<Runnable> arrayList = new ArrayList();
        synchronized (this) {
            Iterator<w8.b<ComponentRegistrar>> it = this.f69766d.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = it.next().get();
                    if (componentRegistrar != null) {
                        list.addAll(this.f69770h.a(componentRegistrar));
                        it.remove();
                    }
                } catch (InvalidRegistrarException e10) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e10);
                }
            }
            Iterator<c<?>> it2 = list.iterator();
            while (it2.hasNext()) {
                Object[] array = it2.next().j().toArray();
                int length = array.length;
                int i10 = 0;
                while (true) {
                    if (i10 < length) {
                        Object obj = array[i10];
                        if (obj.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                            if (this.f69767e.contains(obj.toString())) {
                                it2.remove();
                                break;
                            }
                            this.f69767e.add(obj.toString());
                        }
                        i10++;
                    }
                }
            }
            if (this.f69763a.isEmpty()) {
                p.a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.f69763a.keySet());
                arrayList2.addAll(list);
                p.a(arrayList2);
            }
            for (final c<?> cVar : list) {
                this.f69763a.put(cVar, new t(new w8.b() { // from class: w7.k
                    @Override // w8.b
                    public final Object get() {
                        Object r10;
                        r10 = n.this.r(cVar);
                        return r10;
                    }
                }));
            }
            arrayList.addAll(w(list));
            arrayList.addAll(x());
            v();
        }
        for (Runnable runnable : arrayList) {
            runnable.run();
        }
        u();
    }

    private void o(Map<c<?>, w8.b<?>> map, boolean z10) {
        for (Map.Entry<c<?>, w8.b<?>> entry : map.entrySet()) {
            c<?> key = entry.getKey();
            w8.b<?> value = entry.getValue();
            if (key.n() || (key.o() && z10)) {
                value.get();
            }
        }
        this.f69768f.d();
    }

    private static <T> List<T> q(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        for (T t10 : iterable) {
            arrayList.add(t10);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object r(c cVar) {
        return cVar.h().a(new b0(cVar, this));
    }

    private void u() {
        Boolean bool = this.f69769g.get();
        if (bool != null) {
            o(this.f69763a, bool.booleanValue());
        }
    }

    private void v() {
        for (c<?> cVar : this.f69763a.keySet()) {
            for (q qVar : cVar.g()) {
                if (qVar.g() && !this.f69765c.containsKey(qVar.c())) {
                    this.f69765c.put(qVar.c(), u.b(Collections.emptySet()));
                } else if (this.f69764b.containsKey(qVar.c())) {
                    continue;
                } else if (!qVar.f()) {
                    if (!qVar.g()) {
                        this.f69764b.put(qVar.c(), y.e());
                    }
                } else {
                    throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", cVar, qVar.c()));
                }
            }
        }
    }

    private List<Runnable> w(List<c<?>> list) {
        ArrayList arrayList = new ArrayList();
        for (c<?> cVar : list) {
            if (cVar.p()) {
                final w8.b<?> bVar = this.f69763a.get(cVar);
                for (a0<? super Object> a0Var : cVar.j()) {
                    if (!this.f69764b.containsKey(a0Var)) {
                        this.f69764b.put(a0Var, bVar);
                    } else {
                        final y yVar = (y) this.f69764b.get(a0Var);
                        arrayList.add(new Runnable() { // from class: w7.l
                            @Override // java.lang.Runnable
                            public final void run() {
                                y.this.j(bVar);
                            }
                        });
                    }
                }
            }
        }
        return arrayList;
    }

    private List<Runnable> x() {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (Map.Entry<c<?>, w8.b<?>> entry : this.f69763a.entrySet()) {
            c<?> key = entry.getKey();
            if (!key.p()) {
                w8.b<?> value = entry.getValue();
                for (a0<? super Object> a0Var : key.j()) {
                    if (!hashMap.containsKey(a0Var)) {
                        hashMap.put(a0Var, new HashSet());
                    }
                    ((Set) hashMap.get(a0Var)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            if (!this.f69765c.containsKey(entry2.getKey())) {
                this.f69765c.put((a0) entry2.getKey(), u.b((Collection) entry2.getValue()));
            } else {
                final u<?> uVar = this.f69765c.get(entry2.getKey());
                for (final w8.b bVar : (Set) entry2.getValue()) {
                    arrayList.add(new Runnable() { // from class: w7.m
                        @Override // java.lang.Runnable
                        public final void run() {
                            u.this.a(bVar);
                        }
                    });
                }
            }
        }
        return arrayList;
    }

    @Override // w7.d
    public synchronized <T> w8.b<T> d(a0<T> a0Var) {
        z.c(a0Var, "Null interface requested.");
        return (w8.b<T>) this.f69764b.get(a0Var);
    }

    @Override // w7.d
    public <T> w8.a<T> f(a0<T> a0Var) {
        w8.b<T> d10 = d(a0Var);
        if (d10 == null) {
            return y.e();
        }
        if (d10 instanceof y) {
            return (y) d10;
        }
        return y.i(d10);
    }

    @Override // w7.d
    public synchronized <T> w8.b<Set<T>> g(a0<T> a0Var) {
        u<?> uVar = this.f69765c.get(a0Var);
        if (uVar != null) {
            return uVar;
        }
        return (w8.b<Set<T>>) f69762i;
    }

    public void p(boolean z10) {
        HashMap hashMap;
        if (!androidx.compose.animation.core.a.a(this.f69769g, null, Boolean.valueOf(z10))) {
            return;
        }
        synchronized (this) {
            hashMap = new HashMap(this.f69763a);
        }
        o(hashMap, z10);
    }

    private n(Executor executor, Iterable<w8.b<ComponentRegistrar>> iterable, Collection<c<?>> collection, i iVar) {
        this.f69763a = new HashMap();
        this.f69764b = new HashMap();
        this.f69765c = new HashMap();
        this.f69767e = new HashSet();
        this.f69769g = new AtomicReference<>();
        s sVar = new s(executor);
        this.f69768f = sVar;
        this.f69770h = iVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(c.s(sVar, s.class, t8.d.class, t8.c.class));
        arrayList.add(c.s(this, o8.a.class, new Class[0]));
        for (c<?> cVar : collection) {
            if (cVar != null) {
                arrayList.add(cVar);
            }
        }
        this.f69766d = q(iterable);
        n(arrayList);
    }

    /* compiled from: ComponentRuntime.java */
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Executor f69771a;

        /* renamed from: b  reason: collision with root package name */
        private final List<w8.b<ComponentRegistrar>> f69772b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private final List<c<?>> f69773c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        private i f69774d = i.f69755a;

        b(Executor executor) {
            this.f69771a = executor;
        }

        public b b(c<?> cVar) {
            this.f69773c.add(cVar);
            return this;
        }

        public b c(final ComponentRegistrar componentRegistrar) {
            this.f69772b.add(new w8.b() { // from class: w7.o
                @Override // w8.b
                public final Object get() {
                    ComponentRegistrar f10;
                    f10 = n.b.f(ComponentRegistrar.this);
                    return f10;
                }
            });
            return this;
        }

        public b d(Collection<w8.b<ComponentRegistrar>> collection) {
            this.f69772b.addAll(collection);
            return this;
        }

        public n e() {
            return new n(this.f69771a, this.f69772b, this.f69773c, this.f69774d);
        }

        public b g(i iVar) {
            this.f69774d = iVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ ComponentRegistrar f(ComponentRegistrar componentRegistrar) {
            return componentRegistrar;
        }
    }
}
