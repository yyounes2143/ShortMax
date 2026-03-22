package w7;

import java.util.Set;
/* compiled from: ComponentContainer.java */
/* loaded from: classes5.dex */
public interface d {
    default <T> T a(Class<T> cls) {
        return (T) h(a0.b(cls));
    }

    default <T> Set<T> b(Class<T> cls) {
        return c(a0.b(cls));
    }

    default <T> Set<T> c(a0<T> a0Var) {
        return g(a0Var).get();
    }

    <T> w8.b<T> d(a0<T> a0Var);

    default <T> w8.b<T> e(Class<T> cls) {
        return d(a0.b(cls));
    }

    <T> w8.a<T> f(a0<T> a0Var);

    <T> w8.b<Set<T>> g(a0<T> a0Var);

    default <T> T h(a0<T> a0Var) {
        w8.b<T> d10 = d(a0Var);
        if (d10 == null) {
            return null;
        }
        return d10.get();
    }

    default <T> w8.a<T> i(Class<T> cls) {
        return f(a0.b(cls));
    }
}
