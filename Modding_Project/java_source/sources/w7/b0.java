package w7;

import com.google.firebase.components.DependencyException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: RestrictedComponentContainer.java */
/* loaded from: classes5.dex */
final class b0 implements d {

    /* renamed from: a  reason: collision with root package name */
    private final Set<a0<?>> f69728a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<a0<?>> f69729b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<a0<?>> f69730c;

    /* renamed from: d  reason: collision with root package name */
    private final Set<a0<?>> f69731d;

    /* renamed from: e  reason: collision with root package name */
    private final Set<a0<?>> f69732e;

    /* renamed from: f  reason: collision with root package name */
    private final Set<Class<?>> f69733f;

    /* renamed from: g  reason: collision with root package name */
    private final d f69734g;

    /* compiled from: RestrictedComponentContainer.java */
    /* loaded from: classes5.dex */
    private static class a implements t8.c {

        /* renamed from: a  reason: collision with root package name */
        private final Set<Class<?>> f69735a;

        /* renamed from: b  reason: collision with root package name */
        private final t8.c f69736b;

        public a(Set<Class<?>> set, t8.c cVar) {
            this.f69735a = set;
            this.f69736b = cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(c<?> cVar, d dVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (q qVar : cVar.g()) {
            if (qVar.e()) {
                if (qVar.g()) {
                    hashSet4.add(qVar.c());
                } else {
                    hashSet.add(qVar.c());
                }
            } else if (qVar.d()) {
                hashSet3.add(qVar.c());
            } else if (qVar.g()) {
                hashSet5.add(qVar.c());
            } else {
                hashSet2.add(qVar.c());
            }
        }
        if (!cVar.k().isEmpty()) {
            hashSet.add(a0.b(t8.c.class));
        }
        this.f69728a = Collections.unmodifiableSet(hashSet);
        this.f69729b = Collections.unmodifiableSet(hashSet2);
        this.f69730c = Collections.unmodifiableSet(hashSet3);
        this.f69731d = Collections.unmodifiableSet(hashSet4);
        this.f69732e = Collections.unmodifiableSet(hashSet5);
        this.f69733f = cVar.k();
        this.f69734g = dVar;
    }

    @Override // w7.d
    public <T> T a(Class<T> cls) {
        if (this.f69728a.contains(a0.b(cls))) {
            T t10 = (T) this.f69734g.a(cls);
            if (!cls.equals(t8.c.class)) {
                return t10;
            }
            return (T) new a(this.f69733f, (t8.c) t10);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", cls));
    }

    @Override // w7.d
    public <T> Set<T> c(a0<T> a0Var) {
        if (this.f69731d.contains(a0Var)) {
            return this.f69734g.c(a0Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Set<%s>.", a0Var));
    }

    @Override // w7.d
    public <T> w8.b<T> d(a0<T> a0Var) {
        if (this.f69729b.contains(a0Var)) {
            return this.f69734g.d(a0Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<%s>.", a0Var));
    }

    @Override // w7.d
    public <T> w8.b<T> e(Class<T> cls) {
        return d(a0.b(cls));
    }

    @Override // w7.d
    public <T> w8.a<T> f(a0<T> a0Var) {
        if (this.f69730c.contains(a0Var)) {
            return this.f69734g.f(a0Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Deferred<%s>.", a0Var));
    }

    @Override // w7.d
    public <T> w8.b<Set<T>> g(a0<T> a0Var) {
        if (this.f69732e.contains(a0Var)) {
            return this.f69734g.g(a0Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", a0Var));
    }

    @Override // w7.d
    public <T> T h(a0<T> a0Var) {
        if (this.f69728a.contains(a0Var)) {
            return (T) this.f69734g.h(a0Var);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", a0Var));
    }

    @Override // w7.d
    public <T> w8.a<T> i(Class<T> cls) {
        return f(a0.b(cls));
    }
}
