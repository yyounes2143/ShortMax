package com.google.common.base;

import java.io.Serializable;
/* loaded from: classes5.dex */
public abstract class Equivalence<T> {

    /* loaded from: classes5.dex */
    static final class Equals extends Equivalence<Object> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        static final Equals f20041a = new Equals();

        Equals() {
        }

        private Object readResolve() {
            return f20041a;
        }

        @Override // com.google.common.base.Equivalence
        protected boolean b(Object obj, Object obj2) {
            return obj.equals(obj2);
        }

        @Override // com.google.common.base.Equivalence
        protected int d(Object obj) {
            return obj.hashCode();
        }
    }

    /* loaded from: classes5.dex */
    static final class Identity extends Equivalence<Object> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        static final Identity f20042a = new Identity();

        Identity() {
        }

        private Object readResolve() {
            return f20042a;
        }

        @Override // com.google.common.base.Equivalence
        protected boolean b(Object obj, Object obj2) {
            return false;
        }

        @Override // com.google.common.base.Equivalence
        protected int d(Object obj) {
            return System.identityHashCode(obj);
        }
    }

    protected Equivalence() {
    }

    public static Equivalence<Object> e() {
        return Equals.f20041a;
    }

    public static Equivalence<Object> h() {
        return Identity.f20042a;
    }

    protected abstract boolean b(T t10, T t11);

    protected abstract int d(T t10);

    public final boolean f(T t10, T t11) {
        if (t10 == t11) {
            return true;
        }
        if (t10 != null && t11 != null) {
            return b(t10, t11);
        }
        return false;
    }

    public final int g(T t10) {
        if (t10 == null) {
            return 0;
        }
        return d(t10);
    }
}
