package com.explorestack.protobuf;

import com.explorestack.protobuf.i0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ListFieldSchema.java */
/* loaded from: classes3.dex */
public abstract class o0 {

    /* renamed from: a  reason: collision with root package name */
    private static final o0 f14523a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final o0 f14524b = new c();

    /* compiled from: ListFieldSchema.java */
    /* loaded from: classes3.dex */
    private static final class b extends o0 {

        /* renamed from: c  reason: collision with root package name */
        private static final Class<?> f14525c = Collections.unmodifiableList(Collections.emptyList()).getClass();

        private b() {
            super();
        }

        static <E> List<E> f(Object obj, long j10) {
            return (List) o2.G(obj, j10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static <L> List<L> g(Object obj, long j10, int i10) {
            m0 m0Var;
            List<L> arrayList;
            List<L> f10 = f(obj, j10);
            if (f10.isEmpty()) {
                if (f10 instanceof n0) {
                    arrayList = new m0(i10);
                } else if ((f10 instanceof k1) && (f10 instanceof i0.j)) {
                    arrayList = ((i0.j) f10).mutableCopyWithCapacity(i10);
                } else {
                    arrayList = new ArrayList<>(i10);
                }
                o2.X(obj, j10, arrayList);
                return arrayList;
            }
            if (f14525c.isAssignableFrom(f10.getClass())) {
                ArrayList arrayList2 = new ArrayList(f10.size() + i10);
                arrayList2.addAll(f10);
                o2.X(obj, j10, arrayList2);
                m0Var = arrayList2;
            } else if (f10 instanceof n2) {
                m0 m0Var2 = new m0(f10.size() + i10);
                m0Var2.addAll((n2) f10);
                o2.X(obj, j10, m0Var2);
                m0Var = m0Var2;
            } else if ((f10 instanceof k1) && (f10 instanceof i0.j)) {
                i0.j jVar = (i0.j) f10;
                if (!jVar.isModifiable()) {
                    i0.j mutableCopyWithCapacity = jVar.mutableCopyWithCapacity(f10.size() + i10);
                    o2.X(obj, j10, mutableCopyWithCapacity);
                    return mutableCopyWithCapacity;
                }
                return f10;
            } else {
                return f10;
            }
            return m0Var;
        }

        @Override // com.explorestack.protobuf.o0
        void c(Object obj, long j10) {
            Object unmodifiableList;
            List list = (List) o2.G(obj, j10);
            if (list instanceof n0) {
                unmodifiableList = ((n0) list).getUnmodifiableView();
            } else if (f14525c.isAssignableFrom(list.getClass())) {
                return;
            } else {
                if ((list instanceof k1) && (list instanceof i0.j)) {
                    i0.j jVar = (i0.j) list;
                    if (jVar.isModifiable()) {
                        jVar.makeImmutable();
                        return;
                    }
                    return;
                }
                unmodifiableList = Collections.unmodifiableList(list);
            }
            o2.X(obj, j10, unmodifiableList);
        }

        @Override // com.explorestack.protobuf.o0
        <E> void d(Object obj, Object obj2, long j10) {
            List f10 = f(obj2, j10);
            List g10 = g(obj, j10, f10.size());
            int size = g10.size();
            int size2 = f10.size();
            if (size > 0 && size2 > 0) {
                g10.addAll(f10);
            }
            if (size > 0) {
                f10 = g10;
            }
            o2.X(obj, j10, f10);
        }

        @Override // com.explorestack.protobuf.o0
        <L> List<L> e(Object obj, long j10) {
            return g(obj, j10, 10);
        }
    }

    /* compiled from: ListFieldSchema.java */
    /* loaded from: classes3.dex */
    private static final class c extends o0 {
        private c() {
            super();
        }

        static <E> i0.j<E> f(Object obj, long j10) {
            return (i0.j) o2.G(obj, j10);
        }

        @Override // com.explorestack.protobuf.o0
        void c(Object obj, long j10) {
            f(obj, j10).makeImmutable();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
        @Override // com.explorestack.protobuf.o0
        <E> void d(Object obj, Object obj2, long j10) {
            i0.j<E> f10 = f(obj, j10);
            i0.j<E> f11 = f(obj2, j10);
            int size = f10.size();
            int size2 = f11.size();
            i0.j<E> jVar = f10;
            jVar = f10;
            if (size > 0 && size2 > 0) {
                boolean isModifiable = f10.isModifiable();
                i0.j<E> jVar2 = f10;
                if (!isModifiable) {
                    jVar2 = f10.mutableCopyWithCapacity(size2 + size);
                }
                jVar2.addAll(f11);
                jVar = jVar2;
            }
            if (size > 0) {
                f11 = jVar;
            }
            o2.X(obj, j10, f11);
        }

        @Override // com.explorestack.protobuf.o0
        <L> List<L> e(Object obj, long j10) {
            int i10;
            i0.j f10 = f(obj, j10);
            if (!f10.isModifiable()) {
                int size = f10.size();
                if (size == 0) {
                    i10 = 10;
                } else {
                    i10 = size * 2;
                }
                i0.j mutableCopyWithCapacity = f10.mutableCopyWithCapacity(i10);
                o2.X(obj, j10, mutableCopyWithCapacity);
                return mutableCopyWithCapacity;
            }
            return f10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o0 a() {
        return f14523a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o0 b() {
        return f14524b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void c(Object obj, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <L> void d(Object obj, Object obj2, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <L> List<L> e(Object obj, long j10);

    private o0() {
    }
}
