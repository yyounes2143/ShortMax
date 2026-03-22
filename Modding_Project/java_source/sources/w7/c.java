package w7;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: Component.java */
/* loaded from: classes5.dex */
public final class c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f69737a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<a0<? super T>> f69738b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<q> f69739c;

    /* renamed from: d  reason: collision with root package name */
    private final int f69740d;

    /* renamed from: e  reason: collision with root package name */
    private final int f69741e;

    /* renamed from: f  reason: collision with root package name */
    private final g<T> f69742f;

    /* renamed from: g  reason: collision with root package name */
    private final Set<Class<?>> f69743g;

    public static <T> b<T> c(Class<T> cls) {
        return new b<>(cls, new Class[0]);
    }

    @SafeVarargs
    public static <T> b<T> d(Class<T> cls, Class<? super T>... clsArr) {
        return new b<>(cls, clsArr);
    }

    public static <T> b<T> e(a0<T> a0Var) {
        return new b<>(a0Var, new a0[0]);
    }

    @SafeVarargs
    public static <T> b<T> f(a0<T> a0Var, a0<? super T>... a0VarArr) {
        return new b<>(a0Var, a0VarArr);
    }

    public static <T> c<T> l(final T t10, Class<T> cls) {
        return m(cls).f(new g() { // from class: w7.a
            @Override // w7.g
            public final Object a(d dVar) {
                Object q10;
                q10 = c.q(t10, dVar);
                return q10;
            }
        }).d();
    }

    public static <T> b<T> m(Class<T> cls) {
        return c(cls).g();
    }

    @SafeVarargs
    public static <T> c<T> s(final T t10, Class<T> cls, Class<? super T>... clsArr) {
        return d(cls, clsArr).f(new g() { // from class: w7.b
            @Override // w7.g
            public final Object a(d dVar) {
                Object r10;
                r10 = c.r(t10, dVar);
                return r10;
            }
        }).d();
    }

    public Set<q> g() {
        return this.f69739c;
    }

    public g<T> h() {
        return this.f69742f;
    }

    @Nullable
    public String i() {
        return this.f69737a;
    }

    public Set<a0<? super T>> j() {
        return this.f69738b;
    }

    public Set<Class<?>> k() {
        return this.f69743g;
    }

    public boolean n() {
        if (this.f69740d == 1) {
            return true;
        }
        return false;
    }

    public boolean o() {
        if (this.f69740d == 2) {
            return true;
        }
        return false;
    }

    public boolean p() {
        if (this.f69741e == 0) {
            return true;
        }
        return false;
    }

    public c<T> t(g<T> gVar) {
        return new c<>(this.f69737a, this.f69738b, this.f69739c, this.f69740d, this.f69741e, gVar, this.f69743g);
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f69738b.toArray()) + ">{" + this.f69740d + ", type=" + this.f69741e + ", deps=" + Arrays.toString(this.f69739c.toArray()) + "}";
    }

    /* compiled from: Component.java */
    /* loaded from: classes5.dex */
    public static class b<T> {

        /* renamed from: a  reason: collision with root package name */
        private String f69744a;

        /* renamed from: b  reason: collision with root package name */
        private final Set<a0<? super T>> f69745b;

        /* renamed from: c  reason: collision with root package name */
        private final Set<q> f69746c;

        /* renamed from: d  reason: collision with root package name */
        private int f69747d;

        /* renamed from: e  reason: collision with root package name */
        private int f69748e;

        /* renamed from: f  reason: collision with root package name */
        private g<T> f69749f;

        /* renamed from: g  reason: collision with root package name */
        private final Set<Class<?>> f69750g;

        /* JADX INFO: Access modifiers changed from: private */
        public b<T> g() {
            this.f69748e = 1;
            return this;
        }

        private b<T> i(int i10) {
            boolean z10;
            if (this.f69747d == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            z.d(z10, "Instantiation type has already been set.");
            this.f69747d = i10;
            return this;
        }

        private void j(a0<?> a0Var) {
            z.a(!this.f69745b.contains(a0Var), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        public b<T> b(q qVar) {
            z.c(qVar, "Null dependency");
            j(qVar.c());
            this.f69746c.add(qVar);
            return this;
        }

        public b<T> c() {
            return i(1);
        }

        public c<T> d() {
            boolean z10;
            if (this.f69749f != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            z.d(z10, "Missing required property: factory.");
            return new c<>(this.f69744a, new HashSet(this.f69745b), new HashSet(this.f69746c), this.f69747d, this.f69748e, this.f69749f, this.f69750g);
        }

        public b<T> e() {
            return i(2);
        }

        public b<T> f(g<T> gVar) {
            this.f69749f = (g) z.c(gVar, "Null factory");
            return this;
        }

        public b<T> h(@NonNull String str) {
            this.f69744a = str;
            return this;
        }

        @SafeVarargs
        private b(Class<T> cls, Class<? super T>... clsArr) {
            this.f69744a = null;
            HashSet hashSet = new HashSet();
            this.f69745b = hashSet;
            this.f69746c = new HashSet();
            this.f69747d = 0;
            this.f69748e = 0;
            this.f69750g = new HashSet();
            z.c(cls, "Null interface");
            hashSet.add(a0.b(cls));
            for (Class<? super T> cls2 : clsArr) {
                z.c(cls2, "Null interface");
                this.f69745b.add(a0.b(cls2));
            }
        }

        @SafeVarargs
        private b(a0<T> a0Var, a0<? super T>... a0VarArr) {
            this.f69744a = null;
            HashSet hashSet = new HashSet();
            this.f69745b = hashSet;
            this.f69746c = new HashSet();
            this.f69747d = 0;
            this.f69748e = 0;
            this.f69750g = new HashSet();
            z.c(a0Var, "Null interface");
            hashSet.add(a0Var);
            for (a0<? super T> a0Var2 : a0VarArr) {
                z.c(a0Var2, "Null interface");
            }
            Collections.addAll(this.f69745b, a0VarArr);
        }
    }

    private c(@Nullable String str, Set<a0<? super T>> set, Set<q> set2, int i10, int i11, g<T> gVar, Set<Class<?>> set3) {
        this.f69737a = str;
        this.f69738b = Collections.unmodifiableSet(set);
        this.f69739c = Collections.unmodifiableSet(set2);
        this.f69740d = i10;
        this.f69741e = i11;
        this.f69742f = gVar;
        this.f69743g = Collections.unmodifiableSet(set3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object q(Object obj, d dVar) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object r(Object obj, d dVar) {
        return obj;
    }
}
