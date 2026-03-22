package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.collect.MapMakerInternalMap.Segment;
import com.google.common.collect.MapMakerInternalMap.h;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class MapMakerInternalMap<K, V, E extends h<K, V, E>, S extends Segment<K, V, E, S>> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable {

    /* renamed from: j  reason: collision with root package name */
    static final s<Object, Object, d> f20169j = new a();

    /* renamed from: a  reason: collision with root package name */
    final transient int f20170a;

    /* renamed from: b  reason: collision with root package name */
    final transient int f20171b;

    /* renamed from: c  reason: collision with root package name */
    final transient Segment<K, V, E, S>[] f20172c;

    /* renamed from: d  reason: collision with root package name */
    final int f20173d;

    /* renamed from: e  reason: collision with root package name */
    final Equivalence<Object> f20174e;

    /* renamed from: f  reason: collision with root package name */
    final transient i<K, V, E, S> f20175f;

    /* renamed from: g  reason: collision with root package name */
    transient Set<K> f20176g;

    /* renamed from: h  reason: collision with root package name */
    transient Collection<V> f20177h;

    /* renamed from: i  reason: collision with root package name */
    transient Set<Map.Entry<K, V>> f20178i;

    /* loaded from: classes5.dex */
    static abstract class AbstractSerializationProxy<K, V> extends com.google.common.collect.h<K, V> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final Strength f20179a;

        /* renamed from: b  reason: collision with root package name */
        final Strength f20180b;

        /* renamed from: c  reason: collision with root package name */
        final Equivalence<Object> f20181c;

        /* renamed from: d  reason: collision with root package name */
        final Equivalence<Object> f20182d;

        /* renamed from: e  reason: collision with root package name */
        final int f20183e;

        /* renamed from: f  reason: collision with root package name */
        transient ConcurrentMap<K, V> f20184f;

        AbstractSerializationProxy(Strength strength, Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, int i10, ConcurrentMap<K, V> concurrentMap) {
            this.f20179a = strength;
            this.f20180b = strength2;
            this.f20181c = equivalence;
            this.f20182d = equivalence2;
            this.f20183e = i10;
            this.f20184f = concurrentMap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.i
        /* renamed from: i */
        public ConcurrentMap<K, V> d() {
            return this.f20184f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void j(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            while (true) {
                Object readObject = objectInputStream.readObject();
                if (readObject == null) {
                    return;
                }
                this.f20184f.put(readObject, objectInputStream.readObject());
            }
        }

        com.google.common.collect.n k(ObjectInputStream objectInputStream) throws IOException {
            return new com.google.common.collect.n().g(objectInputStream.readInt()).j(this.f20179a).k(this.f20180b).h(this.f20181c).a(this.f20183e);
        }

        void n(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeInt(this.f20184f.size());
            for (Map.Entry<K, V> entry : this.f20184f.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }
    }

    /* loaded from: classes5.dex */
    private static final class SerializationProxy<K, V> extends AbstractSerializationProxy<K, V> {
        SerializationProxy(Strength strength, Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, int i10, ConcurrentMap<K, V> concurrentMap) {
            super(strength, strength2, equivalence, equivalence2, i10, concurrentMap);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.f20184f = k(objectInputStream).i();
            j(objectInputStream);
        }

        private Object readResolve() {
            return this.f20184f;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            n(objectOutputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public enum Strength {
        STRONG { // from class: com.google.common.collect.MapMakerInternalMap.Strength.1
            @Override // com.google.common.collect.MapMakerInternalMap.Strength
            Equivalence<Object> defaultEquivalence() {
                return Equivalence.e();
            }
        },
        WEAK { // from class: com.google.common.collect.MapMakerInternalMap.Strength.2
            @Override // com.google.common.collect.MapMakerInternalMap.Strength
            Equivalence<Object> defaultEquivalence() {
                return Equivalence.h();
            }
        };

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Equivalence<Object> defaultEquivalence();

        /* synthetic */ Strength(a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class b<K, V, E extends h<K, V, E>> implements h<K, V, E> {

        /* renamed from: a  reason: collision with root package name */
        final K f20195a;

        /* renamed from: b  reason: collision with root package name */
        final int f20196b;

        b(K k10, int i10) {
            this.f20195a = k10;
            this.f20196b = i10;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public final int getHash() {
            return this.f20196b;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public final K getKey() {
            return this.f20195a;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public E getNext() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class c<K, V, E extends h<K, V, E>> extends WeakReference<K> implements h<K, V, E> {

        /* renamed from: a  reason: collision with root package name */
        final int f20197a;

        c(ReferenceQueue<K> referenceQueue, K k10, int i10) {
            super(k10, referenceQueue);
            this.f20197a = i10;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public final int getHash() {
            return this.f20197a;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public final K getKey() {
            return get();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public E getNext() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class d implements h<Object, Object, d> {
        private d() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        /* renamed from: b */
        public d getNext() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public int getHash() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public Object getKey() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public Object getValue() {
            throw new AssertionError();
        }
    }

    /* loaded from: classes5.dex */
    final class e extends MapMakerInternalMap<K, V, E, S>.g<Map.Entry<K, V>> {
        e() {
            super();
        }

        @Override // java.util.Iterator
        /* renamed from: f */
        public Map.Entry<K, V> next() {
            return c();
        }
    }

    /* loaded from: classes5.dex */
    final class f extends AbstractSet<Map.Entry<K, V>> {
        f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (obj2 = MapMakerInternalMap.this.get(key)) == null || !MapMakerInternalMap.this.r().f(entry.getValue(), obj2)) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new e();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || !MapMakerInternalMap.this.remove(key, entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public abstract class g<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        int f20200a;

        /* renamed from: b  reason: collision with root package name */
        int f20201b = -1;

        /* renamed from: c  reason: collision with root package name */
        Segment<K, V, E, S> f20202c;

        /* renamed from: d  reason: collision with root package name */
        AtomicReferenceArray<E> f20203d;

        /* renamed from: e  reason: collision with root package name */
        E f20204e;

        /* renamed from: f  reason: collision with root package name */
        MapMakerInternalMap<K, V, E, S>.u f20205f;

        /* renamed from: g  reason: collision with root package name */
        MapMakerInternalMap<K, V, E, S>.u f20206g;

        g() {
            this.f20200a = MapMakerInternalMap.this.f20172c.length - 1;
            a();
        }

        final void a() {
            this.f20205f = null;
            if (d() || e()) {
                return;
            }
            while (true) {
                int i10 = this.f20200a;
                if (i10 >= 0) {
                    Segment<K, V, E, S>[] segmentArr = MapMakerInternalMap.this.f20172c;
                    this.f20200a = i10 - 1;
                    Segment<K, V, E, S> segment = segmentArr[i10];
                    this.f20202c = segment;
                    if (segment.f20186b != 0) {
                        AtomicReferenceArray<E> atomicReferenceArray = this.f20202c.f20189e;
                        this.f20203d = atomicReferenceArray;
                        this.f20201b = atomicReferenceArray.length() - 1;
                        if (e()) {
                            return;
                        }
                    }
                } else {
                    return;
                }
            }
        }

        boolean b(E e10) {
            try {
                Object key = e10.getKey();
                Object e11 = MapMakerInternalMap.this.e(e10);
                if (e11 != null) {
                    this.f20205f = new u(key, e11);
                    this.f20202c.z();
                    return true;
                }
                this.f20202c.z();
                return false;
            } catch (Throwable th2) {
                this.f20202c.z();
                throw th2;
            }
        }

        MapMakerInternalMap<K, V, E, S>.u c() {
            MapMakerInternalMap<K, V, E, S>.u uVar = this.f20205f;
            if (uVar != null) {
                this.f20206g = uVar;
                a();
                return this.f20206g;
            }
            throw new NoSuchElementException();
        }

        boolean d() {
            E e10 = this.f20204e;
            if (e10 == null) {
                return false;
            }
            while (true) {
                this.f20204e = (E) e10.getNext();
                E e11 = this.f20204e;
                if (e11 != null) {
                    if (b(e11)) {
                        return true;
                    }
                    e10 = this.f20204e;
                } else {
                    return false;
                }
            }
        }

        boolean e() {
            while (true) {
                int i10 = this.f20201b;
                if (i10 >= 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.f20203d;
                    this.f20201b = i10 - 1;
                    E e10 = atomicReferenceArray.get(i10);
                    this.f20204e = e10;
                    if (e10 != null && (b(e10) || d())) {
                        return true;
                    }
                } else {
                    return false;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f20205f != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            boolean z10;
            if (this.f20206g != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            com.google.common.collect.d.c(z10);
            MapMakerInternalMap.this.remove(this.f20206g.getKey());
            this.f20206g = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface h<K, V, E extends h<K, V, E>> {
        int getHash();

        K getKey();

        E getNext();

        V getValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface i<K, V, E extends h<K, V, E>, S extends Segment<K, V, E, S>> {
        S a(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i10);

        void b(S s10, E e10, V v10);

        Strength c();

        E d(S s10, E e10, E e11);

        Strength e();

        E f(S s10, K k10, int i10, E e10);
    }

    /* loaded from: classes5.dex */
    final class j extends MapMakerInternalMap<K, V, E, S>.g<K> {
        j() {
            super();
        }

        @Override // java.util.Iterator
        public K next() {
            return c().getKey();
        }
    }

    /* loaded from: classes5.dex */
    final class k extends AbstractSet<K> {
        k() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new j();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (MapMakerInternalMap.this.remove(obj) != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class l<K, V> extends b<K, V, l<K, V>> implements h {

        /* renamed from: c  reason: collision with root package name */
        private volatile V f20210c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class a<K, V> implements i<K, V, l<K, V>, StrongKeyStrongValueSegment<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?, ?> f20211a = new a<>();

            a() {
            }

            static <K, V> a<K, V> h() {
                return (a<K, V>) f20211a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength c() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength e() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* renamed from: g */
            public l<K, V> d(StrongKeyStrongValueSegment<K, V> strongKeyStrongValueSegment, l<K, V> lVar, l<K, V> lVar2) {
                l<K, V> f10 = f(strongKeyStrongValueSegment, lVar.f20195a, lVar.f20196b, lVar2);
                ((l) f10).f20210c = ((l) lVar).f20210c;
                return f10;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* renamed from: i */
            public l<K, V> f(StrongKeyStrongValueSegment<K, V> strongKeyStrongValueSegment, K k10, int i10, l<K, V> lVar) {
                if (lVar == null) {
                    return new l<>(k10, i10, null);
                }
                return new b(k10, i10, lVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* renamed from: j */
            public StrongKeyStrongValueSegment<K, V> a(MapMakerInternalMap<K, V, l<K, V>, StrongKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i10) {
                return new StrongKeyStrongValueSegment<>(mapMakerInternalMap, i10);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* renamed from: k */
            public void b(StrongKeyStrongValueSegment<K, V> strongKeyStrongValueSegment, l<K, V> lVar, V v10) {
                ((l) lVar).f20210c = v10;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes5.dex */
        public static final class b<K, V> extends l<K, V> {

            /* renamed from: d  reason: collision with root package name */
            private final l<K, V> f20212d;

            b(K k10, int i10, l<K, V> lVar) {
                super(k10, i10, null);
                this.f20212d = lVar;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.b, com.google.common.collect.MapMakerInternalMap.h
            /* renamed from: d */
            public l<K, V> getNext() {
                return this.f20212d;
            }
        }

        /* synthetic */ l(Object obj, int i10, a aVar) {
            this(obj, i10);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public final V getValue() {
            return this.f20210c;
        }

        private l(K k10, int i10) {
            super(k10, i10);
            this.f20210c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class m<K, V> extends b<K, V, m<K, V>> implements r<K, V, m<K, V>> {

        /* renamed from: c  reason: collision with root package name */
        private volatile s<K, V, m<K, V>> f20213c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class a<K, V> implements i<K, V, m<K, V>, StrongKeyWeakValueSegment<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?, ?> f20214a = new a<>();

            a() {
            }

            static <K, V> a<K, V> h() {
                return (a<K, V>) f20214a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength c() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength e() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* renamed from: g */
            public m<K, V> d(StrongKeyWeakValueSegment<K, V> strongKeyWeakValueSegment, m<K, V> mVar, m<K, V> mVar2) {
                if (Segment.t(mVar)) {
                    return null;
                }
                m<K, V> f10 = f(strongKeyWeakValueSegment, mVar.f20195a, mVar.f20196b, mVar2);
                ((m) f10).f20213c = ((m) mVar).f20213c.b(((StrongKeyWeakValueSegment) strongKeyWeakValueSegment).f20191g, f10);
                return f10;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* renamed from: i */
            public m<K, V> f(StrongKeyWeakValueSegment<K, V> strongKeyWeakValueSegment, K k10, int i10, m<K, V> mVar) {
                if (mVar == null) {
                    return new m<>(k10, i10, null);
                }
                return new b(k10, i10, mVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* renamed from: j */
            public StrongKeyWeakValueSegment<K, V> a(MapMakerInternalMap<K, V, m<K, V>, StrongKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i10) {
                return new StrongKeyWeakValueSegment<>(mapMakerInternalMap, i10);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* renamed from: k */
            public void b(StrongKeyWeakValueSegment<K, V> strongKeyWeakValueSegment, m<K, V> mVar, V v10) {
                s sVar = ((m) mVar).f20213c;
                ((m) mVar).f20213c = new t(((StrongKeyWeakValueSegment) strongKeyWeakValueSegment).f20191g, v10, mVar);
                sVar.clear();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes5.dex */
        public static final class b<K, V> extends m<K, V> {

            /* renamed from: d  reason: collision with root package name */
            private final m<K, V> f20215d;

            b(K k10, int i10, m<K, V> mVar) {
                super(k10, i10, null);
                this.f20215d = mVar;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.b, com.google.common.collect.MapMakerInternalMap.h
            /* renamed from: d */
            public m<K, V> getNext() {
                return this.f20215d;
            }
        }

        /* synthetic */ m(Object obj, int i10, a aVar) {
            this(obj, i10);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.r
        public final s<K, V, m<K, V>> a() {
            return this.f20213c;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public final V getValue() {
            return this.f20213c.get();
        }

        private m(K k10, int i10) {
            super(k10, i10);
            this.f20213c = MapMakerInternalMap.q();
        }
    }

    /* loaded from: classes5.dex */
    final class n extends MapMakerInternalMap<K, V, E, S>.g<V> {
        n() {
            super();
        }

        @Override // java.util.Iterator
        public V next() {
            return c().getValue();
        }
    }

    /* loaded from: classes5.dex */
    final class o extends AbstractCollection<V> {
        o() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new n();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class p<K, V> extends c<K, V, p<K, V>> implements h {

        /* renamed from: b  reason: collision with root package name */
        private volatile V f20218b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class a<K, V> implements i<K, V, p<K, V>, WeakKeyStrongValueSegment<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?, ?> f20219a = new a<>();

            a() {
            }

            static <K, V> a<K, V> h() {
                return (a<K, V>) f20219a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength c() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength e() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* renamed from: g */
            public p<K, V> d(WeakKeyStrongValueSegment<K, V> weakKeyStrongValueSegment, p<K, V> pVar, p<K, V> pVar2) {
                K key = pVar.getKey();
                if (key == null) {
                    return null;
                }
                p<K, V> f10 = f(weakKeyStrongValueSegment, key, pVar.f20197a, pVar2);
                ((p) f10).f20218b = ((p) pVar).f20218b;
                return f10;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* renamed from: i */
            public p<K, V> f(WeakKeyStrongValueSegment<K, V> weakKeyStrongValueSegment, K k10, int i10, p<K, V> pVar) {
                if (pVar == null) {
                    return new p<>(((WeakKeyStrongValueSegment) weakKeyStrongValueSegment).f20192g, k10, i10, null);
                }
                return new b(((WeakKeyStrongValueSegment) weakKeyStrongValueSegment).f20192g, k10, i10, pVar, null);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* renamed from: j */
            public WeakKeyStrongValueSegment<K, V> a(MapMakerInternalMap<K, V, p<K, V>, WeakKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i10) {
                return new WeakKeyStrongValueSegment<>(mapMakerInternalMap, i10);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* renamed from: k */
            public void b(WeakKeyStrongValueSegment<K, V> weakKeyStrongValueSegment, p<K, V> pVar, V v10) {
                ((p) pVar).f20218b = v10;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes5.dex */
        public static final class b<K, V> extends p<K, V> {

            /* renamed from: c  reason: collision with root package name */
            private final p<K, V> f20220c;

            /* synthetic */ b(ReferenceQueue referenceQueue, Object obj, int i10, p pVar, a aVar) {
                this(referenceQueue, obj, i10, pVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.c, com.google.common.collect.MapMakerInternalMap.h
            /* renamed from: d */
            public p<K, V> getNext() {
                return this.f20220c;
            }

            private b(ReferenceQueue<K> referenceQueue, K k10, int i10, p<K, V> pVar) {
                super(referenceQueue, k10, i10, null);
                this.f20220c = pVar;
            }
        }

        /* synthetic */ p(ReferenceQueue referenceQueue, Object obj, int i10, a aVar) {
            this(referenceQueue, obj, i10);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public final V getValue() {
            return this.f20218b;
        }

        private p(ReferenceQueue<K> referenceQueue, K k10, int i10) {
            super(referenceQueue, k10, i10);
            this.f20218b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class q<K, V> extends c<K, V, q<K, V>> implements r<K, V, q<K, V>> {

        /* renamed from: b  reason: collision with root package name */
        private volatile s<K, V, q<K, V>> f20221b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class a<K, V> implements i<K, V, q<K, V>, WeakKeyWeakValueSegment<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private static final a<?, ?> f20222a = new a<>();

            a() {
            }

            static <K, V> a<K, V> h() {
                return (a<K, V>) f20222a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength c() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            public Strength e() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* renamed from: g */
            public q<K, V> d(WeakKeyWeakValueSegment<K, V> weakKeyWeakValueSegment, q<K, V> qVar, q<K, V> qVar2) {
                K key = qVar.getKey();
                if (key == null || Segment.t(qVar)) {
                    return null;
                }
                q<K, V> f10 = f(weakKeyWeakValueSegment, key, qVar.f20197a, qVar2);
                ((q) f10).f20221b = ((q) qVar).f20221b.b(((WeakKeyWeakValueSegment) weakKeyWeakValueSegment).f20194h, f10);
                return f10;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* renamed from: i */
            public q<K, V> f(WeakKeyWeakValueSegment<K, V> weakKeyWeakValueSegment, K k10, int i10, q<K, V> qVar) {
                if (qVar == null) {
                    return new q<>(((WeakKeyWeakValueSegment) weakKeyWeakValueSegment).f20193g, k10, i10);
                }
                return new b(((WeakKeyWeakValueSegment) weakKeyWeakValueSegment).f20193g, k10, i10, qVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* renamed from: j */
            public WeakKeyWeakValueSegment<K, V> a(MapMakerInternalMap<K, V, q<K, V>, WeakKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i10) {
                return new WeakKeyWeakValueSegment<>(mapMakerInternalMap, i10);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.i
            /* renamed from: k */
            public void b(WeakKeyWeakValueSegment<K, V> weakKeyWeakValueSegment, q<K, V> qVar, V v10) {
                s sVar = ((q) qVar).f20221b;
                ((q) qVar).f20221b = new t(((WeakKeyWeakValueSegment) weakKeyWeakValueSegment).f20194h, v10, qVar);
                sVar.clear();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes5.dex */
        public static final class b<K, V> extends q<K, V> {

            /* renamed from: c  reason: collision with root package name */
            private final q<K, V> f20223c;

            b(ReferenceQueue<K> referenceQueue, K k10, int i10, q<K, V> qVar) {
                super(referenceQueue, k10, i10);
                this.f20223c = qVar;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.c, com.google.common.collect.MapMakerInternalMap.h
            /* renamed from: d */
            public q<K, V> getNext() {
                return this.f20223c;
            }
        }

        q(ReferenceQueue<K> referenceQueue, K k10, int i10) {
            super(referenceQueue, k10, i10);
            this.f20221b = MapMakerInternalMap.q();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.r
        public final s<K, V, q<K, V>> a() {
            return this.f20221b;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.h
        public final V getValue() {
            return this.f20221b.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface r<K, V, E extends h<K, V, E>> extends h<K, V, E> {
        s<K, V, E> a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface s<K, V, E extends h<K, V, E>> {
        E a();

        s<K, V, E> b(ReferenceQueue<V> referenceQueue, E e10);

        void clear();

        V get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class t<K, V, E extends h<K, V, E>> extends WeakReference<V> implements s<K, V, E> {

        /* renamed from: a  reason: collision with root package name */
        final E f20224a;

        t(ReferenceQueue<V> referenceQueue, V v10, E e10) {
            super(v10, referenceQueue);
            this.f20224a = e10;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.s
        public E a() {
            return this.f20224a;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.s
        public s<K, V, E> b(ReferenceQueue<V> referenceQueue, E e10) {
            return new t(referenceQueue, get(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class u extends com.google.common.collect.b<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f20225a;

        /* renamed from: b  reason: collision with root package name */
        V f20226b;

        u(K k10, V v10) {
            this.f20225a = k10;
            this.f20226b = v10;
        }

        @Override // com.google.common.collect.b, java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (!this.f20225a.equals(entry.getKey()) || !this.f20226b.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // com.google.common.collect.b, java.util.Map.Entry
        public K getKey() {
            return this.f20225a;
        }

        @Override // com.google.common.collect.b, java.util.Map.Entry
        public V getValue() {
            return this.f20226b;
        }

        @Override // com.google.common.collect.b, java.util.Map.Entry
        public int hashCode() {
            return this.f20225a.hashCode() ^ this.f20226b.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            V v11 = (V) MapMakerInternalMap.this.put(this.f20225a, v10);
            this.f20226b = v10;
            return v11;
        }
    }

    private MapMakerInternalMap(com.google.common.collect.n nVar, i<K, V, E, S> iVar) {
        this.f20173d = Math.min(nVar.b(), 65536);
        this.f20174e = nVar.d();
        this.f20175f = iVar;
        int min = Math.min(nVar.c(), 1073741824);
        int i10 = 0;
        int i11 = 1;
        int i12 = 0;
        int i13 = 1;
        while (i13 < this.f20173d) {
            i12++;
            i13 <<= 1;
        }
        this.f20171b = 32 - i12;
        this.f20170a = i13 - 1;
        this.f20172c = h(i13);
        int i14 = min / i13;
        while (i11 < (i13 * i14 < min ? i14 + 1 : i14)) {
            i11 <<= 1;
        }
        while (true) {
            Segment<K, V, E, S>[] segmentArr = this.f20172c;
            if (i10 < segmentArr.length) {
                segmentArr[i10] = d(i11);
                i10++;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> MapMakerInternalMap<K, V, ? extends h<K, V, ?>, ?> b(com.google.common.collect.n nVar) {
        Strength e10 = nVar.e();
        Strength strength = Strength.STRONG;
        if (e10 == strength && nVar.f() == strength) {
            return new MapMakerInternalMap<>(nVar, l.a.h());
        }
        if (nVar.e() == strength && nVar.f() == Strength.WEAK) {
            return new MapMakerInternalMap<>(nVar, m.a.h());
        }
        Strength e11 = nVar.e();
        Strength strength2 = Strength.WEAK;
        if (e11 == strength2 && nVar.f() == strength) {
            return new MapMakerInternalMap<>(nVar, p.a.h());
        }
        if (nVar.e() == strength2 && nVar.f() == strength2) {
            return new MapMakerInternalMap<>(nVar, q.a.h());
        }
        throw new AssertionError();
    }

    static int k(int i10) {
        int i11 = i10 + ((i10 << 15) ^ (-12931));
        int i12 = i11 ^ (i11 >>> 10);
        int i13 = i12 + (i12 << 3);
        int i14 = i13 ^ (i13 >>> 6);
        int i15 = i14 + (i14 << 2) + (i14 << 14);
        return i15 ^ (i15 >>> 16);
    }

    static <K, V, E extends h<K, V, E>> s<K, V, E> q() {
        return (s<K, V, E>) f20169j;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializationProxy");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (Segment<K, V, E, S> segment : this.f20172c) {
            segment.b();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        int f10 = f(obj);
        return n(f10).e(obj, f10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [int] */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.common.collect.MapMakerInternalMap$Segment] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.collect.MapMakerInternalMap$Segment<K, V, E extends com.google.common.collect.MapMakerInternalMap$h<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$Segment<K, V, E, S>>[]] */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        boolean z10 = false;
        if (obj == null) {
            return false;
        }
        Segment<K, V, E, S>[] segmentArr = this.f20172c;
        long j10 = -1;
        int i10 = 0;
        while (i10 < 3) {
            int length = segmentArr.length;
            long j11 = 0;
            for (int i11 = z10; i11 < length; i11++) {
                ?? r11 = segmentArr[i11];
                int i12 = r11.f20186b;
                AtomicReferenceArray<E> atomicReferenceArray = r11.f20189e;
                for (int i13 = z10; i13 < atomicReferenceArray.length(); i13++) {
                    for (E e10 = atomicReferenceArray.get(i13); e10 != null; e10 = e10.getNext()) {
                        Object r10 = r11.r(e10);
                        if (r10 != null && r().f(obj, r10)) {
                            return true;
                        }
                    }
                }
                j11 += r11.f20187c;
                z10 = false;
            }
            if (j11 == j10) {
                return false;
            }
            i10++;
            j10 = j11;
            z10 = false;
        }
        return z10;
    }

    Segment<K, V, E, S> d(int i10) {
        return (S) this.f20175f.a(this, i10);
    }

    V e(E e10) {
        if (e10.getKey() == null) {
            return null;
        }
        return (V) e10.getValue();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f20178i;
        if (set == null) {
            f fVar = new f();
            this.f20178i = fVar;
            return fVar;
        }
        return set;
    }

    int f(Object obj) {
        return k(this.f20174e.g(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        if (obj == null) {
            return null;
        }
        int f10 = f(obj);
        return n(f10).j(obj, f10);
    }

    final Segment<K, V, E, S>[] h(int i10) {
        return new Segment[i10];
    }

    void i(E e10) {
        int hash = e10.getHash();
        n(hash).C(e10, hash);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        Segment<K, V, E, S>[] segmentArr = this.f20172c;
        long j10 = 0;
        for (int i10 = 0; i10 < segmentArr.length; i10++) {
            if (segmentArr[i10].f20186b != 0) {
                return false;
            }
            j10 += segmentArr[i10].f20187c;
        }
        if (j10 == 0) {
            return true;
        }
        for (int i11 = 0; i11 < segmentArr.length; i11++) {
            if (segmentArr[i11].f20186b != 0) {
                return false;
            }
            j10 -= segmentArr[i11].f20187c;
        }
        if (j10 != 0) {
            return false;
        }
        return true;
    }

    void j(s<K, V, E> sVar) {
        E a10 = sVar.a();
        int hash = a10.getHash();
        n(hash).D((K) a10.getKey(), hash, sVar);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f20176g;
        if (set == null) {
            k kVar = new k();
            this.f20176g = kVar;
            return kVar;
        }
        return set;
    }

    Segment<K, V, E, S> n(int i10) {
        return this.f20172c[(i10 >>> this.f20171b) & this.f20170a];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k10, V v10) {
        h7.k.j(k10);
        h7.k.j(v10);
        int f10 = f(k10);
        return n(f10).B(k10, f10, v10, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k10, V v10) {
        h7.k.j(k10);
        h7.k.j(v10);
        int f10 = f(k10);
        return n(f10).B(k10, f10, v10, true);
    }

    Equivalence<Object> r() {
        return this.f20175f.e().defaultEquivalence();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int f10 = f(obj);
        return n(f10).E(obj, f10);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k10, V v10, V v11) {
        h7.k.j(k10);
        h7.k.j(v11);
        if (v10 == null) {
            return false;
        }
        int f10 = f(k10);
        return n(f10).I(k10, f10, v10, v11);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long j10 = 0;
        for (Segment<K, V, E, S> segment : this.f20172c) {
            j10 += segment.f20186b;
        }
        return Ints.l(j10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.f20177h;
        if (collection == null) {
            o oVar = new o();
            this.f20177h = oVar;
            return oVar;
        }
        return collection;
    }

    Object writeReplace() {
        return new SerializationProxy(this.f20175f.c(), this.f20175f.e(), this.f20174e, this.f20175f.e().defaultEquivalence(), this.f20173d, this);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int f10 = f(obj);
        return n(f10).F(obj, f10, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k10, V v10) {
        h7.k.j(k10);
        h7.k.j(v10);
        int f10 = f(k10);
        return n(f10).H(k10, f10, v10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class Segment<K, V, E extends h<K, V, E>, S extends Segment<K, V, E, S>> extends ReentrantLock {

        /* renamed from: a  reason: collision with root package name */
        final MapMakerInternalMap<K, V, E, S> f20185a;

        /* renamed from: b  reason: collision with root package name */
        volatile int f20186b;

        /* renamed from: c  reason: collision with root package name */
        int f20187c;

        /* renamed from: d  reason: collision with root package name */
        int f20188d;

        /* renamed from: e  reason: collision with root package name */
        volatile AtomicReferenceArray<E> f20189e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicInteger f20190f = new AtomicInteger();

        Segment(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i10) {
            this.f20185a = mapMakerInternalMap;
            s(y(i10));
        }

        static <K, V, E extends h<K, V, E>> boolean t(E e10) {
            if (e10.getValue() == null) {
                return true;
            }
            return false;
        }

        void A() {
            K();
        }

        /* JADX WARN: Multi-variable type inference failed */
        V B(K k10, int i10, V v10, boolean z10) {
            lock();
            try {
                A();
                int i11 = this.f20186b + 1;
                if (i11 > this.f20188d) {
                    i();
                    i11 = this.f20186b + 1;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.f20189e;
                int length = (atomicReferenceArray.length() - 1) & i10;
                E e10 = atomicReferenceArray.get(length);
                for (h hVar = e10; hVar != null; hVar = hVar.getNext()) {
                    Object key = hVar.getKey();
                    if (hVar.getHash() == i10 && key != null && this.f20185a.f20174e.f(k10, key)) {
                        V v11 = (V) hVar.getValue();
                        if (v11 == null) {
                            this.f20187c++;
                            M(hVar, v10);
                            this.f20186b = this.f20186b;
                            unlock();
                            return null;
                        } else if (z10) {
                            unlock();
                            return v11;
                        } else {
                            this.f20187c++;
                            M(hVar, v10);
                            unlock();
                            return v11;
                        }
                    }
                }
                this.f20187c++;
                E f10 = this.f20185a.f20175f.f(L(), k10, i10, e10);
                M(f10, v10);
                atomicReferenceArray.set(length, f10);
                this.f20186b = i11;
                unlock();
                return null;
            } catch (Throwable th2) {
                unlock();
                throw th2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean C(E e10, int i10) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.f20189e;
                int length = i10 & (atomicReferenceArray.length() - 1);
                E e11 = atomicReferenceArray.get(length);
                for (h hVar = e11; hVar != null; hVar = hVar.getNext()) {
                    if (hVar == e10) {
                        this.f20187c++;
                        atomicReferenceArray.set(length, G(e11, hVar));
                        this.f20186b--;
                        return true;
                    }
                }
                unlock();
                return false;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean D(K k10, int i10, s<K, V, E> sVar) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.f20189e;
                int length = (atomicReferenceArray.length() - 1) & i10;
                E e10 = atomicReferenceArray.get(length);
                for (h hVar = e10; hVar != null; hVar = hVar.getNext()) {
                    Object key = hVar.getKey();
                    if (hVar.getHash() == i10 && key != null && this.f20185a.f20174e.f(k10, key)) {
                        if (((r) hVar).a() != sVar) {
                            return false;
                        }
                        this.f20187c++;
                        atomicReferenceArray.set(length, G(e10, hVar));
                        this.f20186b--;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        V E(Object obj, int i10) {
            lock();
            try {
                A();
                AtomicReferenceArray<E> atomicReferenceArray = this.f20189e;
                int length = (atomicReferenceArray.length() - 1) & i10;
                E e10 = atomicReferenceArray.get(length);
                for (h hVar = e10; hVar != null; hVar = hVar.getNext()) {
                    Object key = hVar.getKey();
                    if (hVar.getHash() == i10 && key != null && this.f20185a.f20174e.f(obj, key)) {
                        V v10 = (V) hVar.getValue();
                        if (v10 == null && !t(hVar)) {
                            return null;
                        }
                        this.f20187c++;
                        atomicReferenceArray.set(length, G(e10, hVar));
                        this.f20186b--;
                        return v10;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
            if (r8.f20185a.r().f(r11, r4.getValue()) == false) goto L20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x003f, code lost:
            r5 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
            if (t(r4) == false) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0047, code lost:
            r8.f20187c++;
            r0.set(r1, G(r3, r4));
            r8.f20186b--;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x005b, code lost:
            return r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0061, code lost:
            return false;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean F(java.lang.Object r9, int r10, java.lang.Object r11) {
            /*
                r8 = this;
                r8.lock()
                r8.A()     // Catch: java.lang.Throwable -> L5c
                java.util.concurrent.atomic.AtomicReferenceArray<E extends com.google.common.collect.MapMakerInternalMap$h<K, V, E>> r0 = r8.f20189e     // Catch: java.lang.Throwable -> L5c
                int r1 = r0.length()     // Catch: java.lang.Throwable -> L5c
                r2 = 1
                int r1 = r1 - r2
                r1 = r1 & r10
                java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Throwable -> L5c
                com.google.common.collect.MapMakerInternalMap$h r3 = (com.google.common.collect.MapMakerInternalMap.h) r3     // Catch: java.lang.Throwable -> L5c
                r4 = r3
            L16:
                r5 = 0
                if (r4 == 0) goto L67
                java.lang.Object r6 = r4.getKey()     // Catch: java.lang.Throwable -> L5c
                int r7 = r4.getHash()     // Catch: java.lang.Throwable -> L5c
                if (r7 != r10) goto L62
                if (r6 == 0) goto L62
                com.google.common.collect.MapMakerInternalMap<K, V, E extends com.google.common.collect.MapMakerInternalMap$h<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$Segment<K, V, E, S>> r7 = r8.f20185a     // Catch: java.lang.Throwable -> L5c
                com.google.common.base.Equivalence<java.lang.Object> r7 = r7.f20174e     // Catch: java.lang.Throwable -> L5c
                boolean r6 = r7.f(r9, r6)     // Catch: java.lang.Throwable -> L5c
                if (r6 == 0) goto L62
                java.lang.Object r9 = r4.getValue()     // Catch: java.lang.Throwable -> L5c
                com.google.common.collect.MapMakerInternalMap<K, V, E extends com.google.common.collect.MapMakerInternalMap$h<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$Segment<K, V, E, S>> r10 = r8.f20185a     // Catch: java.lang.Throwable -> L5c
                com.google.common.base.Equivalence r10 = r10.r()     // Catch: java.lang.Throwable -> L5c
                boolean r9 = r10.f(r11, r9)     // Catch: java.lang.Throwable -> L5c
                if (r9 == 0) goto L41
                r5 = r2
                goto L47
            L41:
                boolean r9 = t(r4)     // Catch: java.lang.Throwable -> L5c
                if (r9 == 0) goto L5e
            L47:
                int r9 = r8.f20187c     // Catch: java.lang.Throwable -> L5c
                int r9 = r9 + r2
                r8.f20187c = r9     // Catch: java.lang.Throwable -> L5c
                com.google.common.collect.MapMakerInternalMap$h r9 = r8.G(r3, r4)     // Catch: java.lang.Throwable -> L5c
                int r10 = r8.f20186b     // Catch: java.lang.Throwable -> L5c
                int r10 = r10 - r2
                r0.set(r1, r9)     // Catch: java.lang.Throwable -> L5c
                r8.f20186b = r10     // Catch: java.lang.Throwable -> L5c
                r8.unlock()
                return r5
            L5c:
                r9 = move-exception
                goto L6b
            L5e:
                r8.unlock()
                return r5
            L62:
                com.google.common.collect.MapMakerInternalMap$h r4 = r4.getNext()     // Catch: java.lang.Throwable -> L5c
                goto L16
            L67:
                r8.unlock()
                return r5
            L6b:
                r8.unlock()
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.MapMakerInternalMap.Segment.F(java.lang.Object, int, java.lang.Object):boolean");
        }

        E G(E e10, E e11) {
            int i10 = this.f20186b;
            E e12 = (E) e11.getNext();
            while (e10 != e11) {
                E f10 = f(e10, e12);
                if (f10 != null) {
                    e12 = f10;
                } else {
                    i10--;
                }
                e10 = (E) e10.getNext();
            }
            this.f20186b = i10;
            return e12;
        }

        /* JADX WARN: Multi-variable type inference failed */
        V H(K k10, int i10, V v10) {
            lock();
            try {
                A();
                AtomicReferenceArray<E> atomicReferenceArray = this.f20189e;
                int length = (atomicReferenceArray.length() - 1) & i10;
                E e10 = atomicReferenceArray.get(length);
                for (h hVar = e10; hVar != null; hVar = hVar.getNext()) {
                    Object key = hVar.getKey();
                    if (hVar.getHash() == i10 && key != null && this.f20185a.f20174e.f(k10, key)) {
                        V v11 = (V) hVar.getValue();
                        if (v11 == null) {
                            if (t(hVar)) {
                                this.f20187c++;
                                atomicReferenceArray.set(length, G(e10, hVar));
                                this.f20186b--;
                            }
                            return null;
                        }
                        this.f20187c++;
                        M(hVar, v10);
                        return v11;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean I(K k10, int i10, V v10, V v11) {
            lock();
            try {
                A();
                AtomicReferenceArray<E> atomicReferenceArray = this.f20189e;
                int length = (atomicReferenceArray.length() - 1) & i10;
                E e10 = atomicReferenceArray.get(length);
                for (h hVar = e10; hVar != null; hVar = hVar.getNext()) {
                    Object key = hVar.getKey();
                    if (hVar.getHash() == i10 && key != null && this.f20185a.f20174e.f(k10, key)) {
                        Object value = hVar.getValue();
                        if (value == null) {
                            if (t(hVar)) {
                                this.f20187c++;
                                atomicReferenceArray.set(length, G(e10, hVar));
                                this.f20186b--;
                            }
                            return false;
                        } else if (!this.f20185a.r().f(v10, value)) {
                            return false;
                        } else {
                            this.f20187c++;
                            M(hVar, v11);
                            return true;
                        }
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        void J() {
            K();
        }

        void K() {
            if (tryLock()) {
                try {
                    v();
                    this.f20190f.set(0);
                } finally {
                    unlock();
                }
            }
        }

        abstract S L();

        void M(E e10, V v10) {
            this.f20185a.f20175f.b(L(), e10, v10);
        }

        void N() {
            if (tryLock()) {
                try {
                    v();
                } finally {
                    unlock();
                }
            }
        }

        void b() {
            if (this.f20186b != 0) {
                lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = this.f20189e;
                    for (int i10 = 0; i10 < atomicReferenceArray.length(); i10++) {
                        atomicReferenceArray.set(i10, null);
                    }
                    u();
                    this.f20190f.set(0);
                    this.f20187c++;
                    this.f20186b = 0;
                    unlock();
                } catch (Throwable th2) {
                    unlock();
                    throw th2;
                }
            }
        }

        <T> void d(ReferenceQueue<T> referenceQueue) {
            do {
            } while (referenceQueue.poll() != null);
        }

        boolean e(Object obj, int i10) {
            try {
                boolean z10 = false;
                if (this.f20186b == 0) {
                    return false;
                }
                E q10 = q(obj, i10);
                if (q10 != null) {
                    if (q10.getValue() != null) {
                        z10 = true;
                    }
                }
                return z10;
            } finally {
                z();
            }
        }

        E f(E e10, E e11) {
            return this.f20185a.f20175f.d(L(), e10, e11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        void g(ReferenceQueue<K> referenceQueue) {
            int i10 = 0;
            do {
                Reference<? extends K> poll = referenceQueue.poll();
                if (poll != null) {
                    this.f20185a.i((h) poll);
                    i10++;
                } else {
                    return;
                }
            } while (i10 != 16);
        }

        void h(ReferenceQueue<V> referenceQueue) {
            int i10 = 0;
            do {
                Reference<? extends V> poll = referenceQueue.poll();
                if (poll != null) {
                    this.f20185a.j((s) poll);
                    i10++;
                } else {
                    return;
                }
            } while (i10 != 16);
        }

        /* JADX WARN: Multi-variable type inference failed */
        void i() {
            AtomicReferenceArray<E> atomicReferenceArray = this.f20189e;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i10 = this.f20186b;
            AtomicReferenceArray<E> atomicReferenceArray2 = (AtomicReferenceArray<E>) y(length << 1);
            this.f20188d = (atomicReferenceArray2.length() * 3) / 4;
            int length2 = atomicReferenceArray2.length() - 1;
            for (int i11 = 0; i11 < length; i11++) {
                E e10 = atomicReferenceArray.get(i11);
                if (e10 != null) {
                    h next = e10.getNext();
                    int hash = e10.getHash() & length2;
                    if (next == null) {
                        atomicReferenceArray2.set(hash, e10);
                    } else {
                        h hVar = e10;
                        while (next != null) {
                            int hash2 = next.getHash() & length2;
                            if (hash2 != hash) {
                                hVar = next;
                                hash = hash2;
                            }
                            next = next.getNext();
                        }
                        atomicReferenceArray2.set(hash, hVar);
                        while (e10 != hVar) {
                            int hash3 = e10.getHash() & length2;
                            h f10 = f(e10, (h) atomicReferenceArray2.get(hash3));
                            if (f10 != null) {
                                atomicReferenceArray2.set(hash3, f10);
                            } else {
                                i10--;
                            }
                            e10 = e10.getNext();
                        }
                    }
                }
            }
            this.f20189e = atomicReferenceArray2;
            this.f20186b = i10;
        }

        V j(Object obj, int i10) {
            try {
                E q10 = q(obj, i10);
                if (q10 == null) {
                    z();
                    return null;
                }
                V v10 = (V) q10.getValue();
                if (v10 == null) {
                    N();
                }
                return v10;
            } finally {
                z();
            }
        }

        E k(Object obj, int i10) {
            if (this.f20186b != 0) {
                for (E n10 = n(i10); n10 != null; n10 = (E) n10.getNext()) {
                    if (n10.getHash() == i10) {
                        Object key = n10.getKey();
                        if (key == null) {
                            N();
                        } else if (this.f20185a.f20174e.f(obj, key)) {
                            return n10;
                        }
                    }
                }
                return null;
            }
            return null;
        }

        E n(int i10) {
            AtomicReferenceArray<E> atomicReferenceArray = this.f20189e;
            return atomicReferenceArray.get(i10 & (atomicReferenceArray.length() - 1));
        }

        E q(Object obj, int i10) {
            return k(obj, i10);
        }

        V r(E e10) {
            if (e10.getKey() == null) {
                N();
                return null;
            }
            V v10 = (V) e10.getValue();
            if (v10 == null) {
                N();
                return null;
            }
            return v10;
        }

        void s(AtomicReferenceArray<E> atomicReferenceArray) {
            this.f20188d = (atomicReferenceArray.length() * 3) / 4;
            this.f20189e = atomicReferenceArray;
        }

        AtomicReferenceArray<E> y(int i10) {
            return new AtomicReferenceArray<>(i10);
        }

        void z() {
            if ((this.f20190f.incrementAndGet() & 63) == 0) {
                J();
            }
        }

        void u() {
        }

        void v() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class StrongKeyStrongValueSegment<K, V> extends Segment<K, V, l<K, V>, StrongKeyStrongValueSegment<K, V>> {
        StrongKeyStrongValueSegment(MapMakerInternalMap<K, V, l<K, V>, StrongKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i10) {
            super(mapMakerInternalMap, i10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        /* renamed from: O */
        public StrongKeyStrongValueSegment<K, V> L() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class StrongKeyWeakValueSegment<K, V> extends Segment<K, V, m<K, V>, StrongKeyWeakValueSegment<K, V>> {

        /* renamed from: g  reason: collision with root package name */
        private final ReferenceQueue<V> f20191g;

        StrongKeyWeakValueSegment(MapMakerInternalMap<K, V, m<K, V>, StrongKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i10) {
            super(mapMakerInternalMap, i10);
            this.f20191g = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void u() {
            d((ReferenceQueue<V>) this.f20191g);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void v() {
            h(this.f20191g);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        /* renamed from: P */
        public StrongKeyWeakValueSegment<K, V> L() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class WeakKeyStrongValueSegment<K, V> extends Segment<K, V, p<K, V>, WeakKeyStrongValueSegment<K, V>> {

        /* renamed from: g  reason: collision with root package name */
        private final ReferenceQueue<K> f20192g;

        WeakKeyStrongValueSegment(MapMakerInternalMap<K, V, p<K, V>, WeakKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i10) {
            super(mapMakerInternalMap, i10);
            this.f20192g = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void u() {
            d((ReferenceQueue<K>) this.f20192g);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void v() {
            g(this.f20192g);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        /* renamed from: P */
        public WeakKeyStrongValueSegment<K, V> L() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class WeakKeyWeakValueSegment<K, V> extends Segment<K, V, q<K, V>, WeakKeyWeakValueSegment<K, V>> {

        /* renamed from: g  reason: collision with root package name */
        private final ReferenceQueue<K> f20193g;

        /* renamed from: h  reason: collision with root package name */
        private final ReferenceQueue<V> f20194h;

        WeakKeyWeakValueSegment(MapMakerInternalMap<K, V, q<K, V>, WeakKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i10) {
            super(mapMakerInternalMap, i10);
            this.f20193g = new ReferenceQueue<>();
            this.f20194h = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void u() {
            d((ReferenceQueue<K>) this.f20193g);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void v() {
            g(this.f20193g);
            h(this.f20194h);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        /* renamed from: Q */
        public WeakKeyWeakValueSegment<K, V> L() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements s<Object, Object, d> {
        a() {
        }

        @Override // com.google.common.collect.MapMakerInternalMap.s
        /* renamed from: d */
        public d a() {
            return null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.s
        public Object get() {
            return null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.s
        public void clear() {
        }

        @Override // com.google.common.collect.MapMakerInternalMap.s
        /* renamed from: c */
        public s<Object, Object, d> b(ReferenceQueue<Object> referenceQueue, d dVar) {
            return this;
        }
    }
}
