package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.SortedMap;
/* loaded from: classes5.dex */
public abstract class ImmutableMap<K, V> implements Map<K, V>, Serializable {

    /* renamed from: d  reason: collision with root package name */
    static final Map.Entry<?, ?>[] f20141d = new Map.Entry[0];

    /* renamed from: a  reason: collision with root package name */
    private transient ImmutableSet<Map.Entry<K, V>> f20142a;

    /* renamed from: b  reason: collision with root package name */
    private transient ImmutableSet<K> f20143b;

    /* renamed from: c  reason: collision with root package name */
    private transient ImmutableCollection<V> f20144c;

    /* loaded from: classes5.dex */
    static class SerializedForm<K, V> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final Object f20145a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f20146b;

        SerializedForm(ImmutableMap<K, V> immutableMap) {
            Object[] objArr = new Object[immutableMap.size()];
            Object[] objArr2 = new Object[immutableMap.size()];
            y<Map.Entry<K, V>> it = immutableMap.entrySet().iterator();
            int i10 = 0;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                objArr[i10] = next.getKey();
                objArr2[i10] = next.getValue();
                i10++;
            }
            this.f20145a = objArr;
            this.f20146b = objArr2;
        }

        final Object b() {
            Object[] objArr = (Object[]) this.f20145a;
            Object[] objArr2 = (Object[]) this.f20146b;
            a<K, V> d10 = d(objArr.length);
            for (int i10 = 0; i10 < objArr.length; i10++) {
                d10.f((K) objArr[i10], (V) objArr2[i10]);
            }
            return d10.c();
        }

        a<K, V> d(int i10) {
            return new a<>(i10);
        }

        final Object readResolve() {
            Object obj = this.f20145a;
            if (!(obj instanceof ImmutableSet)) {
                return b();
            }
            ImmutableSet immutableSet = (ImmutableSet) obj;
            a<K, V> d10 = d(immutableSet.size());
            y it = immutableSet.iterator();
            y it2 = ((ImmutableCollection) this.f20146b).iterator();
            while (it.hasNext()) {
                d10.f((K) it.next(), (V) it2.next());
            }
            return d10.c();
        }
    }

    /* loaded from: classes5.dex */
    public static class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        Comparator<? super V> f20147a;

        /* renamed from: b  reason: collision with root package name */
        Object[] f20148b;

        /* renamed from: c  reason: collision with root package name */
        int f20149c;

        /* renamed from: d  reason: collision with root package name */
        boolean f20150d;

        /* renamed from: e  reason: collision with root package name */
        C0302a f20151e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.common.collect.ImmutableMap$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class C0302a {

            /* renamed from: a  reason: collision with root package name */
            private final Object f20152a;

            /* renamed from: b  reason: collision with root package name */
            private final Object f20153b;

            /* renamed from: c  reason: collision with root package name */
            private final Object f20154c;

            /* JADX INFO: Access modifiers changed from: package-private */
            public C0302a(Object obj, Object obj2, Object obj3) {
                this.f20152a = obj;
                this.f20153b = obj2;
                this.f20154c = obj3;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public IllegalArgumentException a() {
                return new IllegalArgumentException("Multiple entries with same key: " + this.f20152a + ContainerUtils.KEY_VALUE_DELIMITER + this.f20153b + " and " + this.f20152a + ContainerUtils.KEY_VALUE_DELIMITER + this.f20154c);
            }
        }

        public a() {
            this(4);
        }

        private ImmutableMap<K, V> b(boolean z10) {
            Object[] objArr;
            C0302a c0302a;
            C0302a c0302a2;
            if (z10 && (c0302a2 = this.f20151e) != null) {
                throw c0302a2.a();
            }
            int i10 = this.f20149c;
            if (this.f20147a == null) {
                objArr = this.f20148b;
            } else {
                if (this.f20150d) {
                    this.f20148b = Arrays.copyOf(this.f20148b, i10 * 2);
                }
                objArr = this.f20148b;
                if (!z10) {
                    objArr = e(objArr, this.f20149c);
                    if (objArr.length < this.f20148b.length) {
                        i10 = objArr.length >>> 1;
                    }
                }
                j(objArr, i10, this.f20147a);
            }
            this.f20150d = true;
            RegularImmutableMap y10 = RegularImmutableMap.y(i10, objArr, this);
            if (z10 && (c0302a = this.f20151e) != null) {
                throw c0302a.a();
            }
            return y10;
        }

        private void d(int i10) {
            int i11 = i10 * 2;
            Object[] objArr = this.f20148b;
            if (i11 > objArr.length) {
                this.f20148b = Arrays.copyOf(objArr, ImmutableCollection.b.c(objArr.length, i11));
                this.f20150d = false;
            }
        }

        private Object[] e(Object[] objArr, int i10) {
            HashSet hashSet = new HashSet();
            BitSet bitSet = new BitSet();
            for (int i11 = i10 - 1; i11 >= 0; i11--) {
                Object obj = objArr[i11 * 2];
                Objects.requireNonNull(obj);
                if (!hashSet.add(obj)) {
                    bitSet.set(i11);
                }
            }
            if (bitSet.isEmpty()) {
                return objArr;
            }
            Object[] objArr2 = new Object[(i10 - bitSet.cardinality()) * 2];
            int i12 = 0;
            int i13 = 0;
            while (i12 < i10 * 2) {
                if (bitSet.get(i12 >>> 1)) {
                    i12 += 2;
                } else {
                    int i14 = i13 + 1;
                    int i15 = i12 + 1;
                    Object obj2 = objArr[i12];
                    Objects.requireNonNull(obj2);
                    objArr2[i13] = obj2;
                    i13 += 2;
                    i12 += 2;
                    Object obj3 = objArr[i15];
                    Objects.requireNonNull(obj3);
                    objArr2[i14] = obj3;
                }
            }
            return objArr2;
        }

        static <V> void j(Object[] objArr, int i10, Comparator<? super V> comparator) {
            Map.Entry[] entryArr = new Map.Entry[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                int i12 = i11 * 2;
                Object obj = objArr[i12];
                Objects.requireNonNull(obj);
                Object obj2 = objArr[i12 + 1];
                Objects.requireNonNull(obj2);
                entryArr[i11] = new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }
            Arrays.sort(entryArr, 0, i10, t.d(comparator).f(Maps.k()));
            for (int i13 = 0; i13 < i10; i13++) {
                int i14 = i13 * 2;
                objArr[i14] = entryArr[i13].getKey();
                objArr[i14 + 1] = entryArr[i13].getValue();
            }
        }

        public ImmutableMap<K, V> a() {
            return c();
        }

        public ImmutableMap<K, V> c() {
            return b(true);
        }

        public a<K, V> f(K k10, V v10) {
            d(this.f20149c + 1);
            d.a(k10, v10);
            Object[] objArr = this.f20148b;
            int i10 = this.f20149c;
            objArr[i10 * 2] = k10;
            objArr[(i10 * 2) + 1] = v10;
            this.f20149c = i10 + 1;
            return this;
        }

        public a<K, V> g(Map.Entry<? extends K, ? extends V> entry) {
            return f(entry.getKey(), entry.getValue());
        }

        public a<K, V> h(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            if (iterable instanceof Collection) {
                d(this.f20149c + ((Collection) iterable).size());
            }
            for (Map.Entry<? extends K, ? extends V> entry : iterable) {
                g(entry);
            }
            return this;
        }

        public a<K, V> i(Map<? extends K, ? extends V> map) {
            return h(map.entrySet());
        }

        a(int i10) {
            this.f20148b = new Object[i10 * 2];
            this.f20149c = 0;
            this.f20150d = false;
        }
    }

    public static <K, V> a<K, V> b() {
        return new a<>();
    }

    public static <K, V> ImmutableMap<K, V> d(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        int i10;
        if (iterable instanceof Collection) {
            i10 = ((Collection) iterable).size();
        } else {
            i10 = 4;
        }
        a aVar = new a(i10);
        aVar.h(iterable);
        return aVar.a();
    }

    public static <K, V> ImmutableMap<K, V> e(Map<? extends K, ? extends V> map) {
        if ((map instanceof ImmutableMap) && !(map instanceof SortedMap)) {
            ImmutableMap<K, V> immutableMap = (ImmutableMap) map;
            if (!immutableMap.k()) {
                return immutableMap;
            }
        }
        return d(map.entrySet());
    }

    public static <K, V> ImmutableMap<K, V> q() {
        return (ImmutableMap<K, V>) RegularImmutableMap.f20242h;
    }

    public static <K, V> ImmutableMap<K, V> r(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13) {
        d.a(k10, v10);
        d.a(k11, v11);
        d.a(k12, v12);
        d.a(k13, v13);
        return RegularImmutableMap.v(4, new Object[]{k10, v10, k11, v11, k12, v12, k13, v13});
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <K, V> ImmutableMap<K, V> s(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        d.a(k10, v10);
        d.a(k11, v11);
        d.a(k12, v12);
        d.a(k13, v13);
        d.a(k14, v14);
        return RegularImmutableMap.v(5, new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14});
    }

    @SafeVarargs
    public static <K, V> ImmutableMap<K, V> t(Map.Entry<? extends K, ? extends V>... entryArr) {
        return d(Arrays.asList(entryArr));
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        if (get(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return Maps.c(this, obj);
    }

    abstract ImmutableSet<Map.Entry<K, V>> f();

    @Override // java.util.Map
    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v10) {
        V v11 = get(obj);
        if (v11 != null) {
            return v11;
        }
        return v10;
    }

    abstract ImmutableSet<K> h();

    @Override // java.util.Map
    public int hashCode() {
        return v.d(entrySet());
    }

    abstract ImmutableCollection<V> i();

    @Override // java.util.Map
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    /* renamed from: j */
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.f20142a;
        if (immutableSet == null) {
            ImmutableSet<Map.Entry<K, V>> f10 = f();
            this.f20142a = f10;
            return f10;
        }
        return immutableSet;
    }

    abstract boolean k();

    @Override // java.util.Map
    /* renamed from: n */
    public ImmutableSet<K> keySet() {
        ImmutableSet<K> immutableSet = this.f20143b;
        if (immutableSet == null) {
            ImmutableSet<K> h10 = h();
            this.f20143b = h10;
            return h10;
        }
        return immutableSet;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return Maps.j(this);
    }

    @Override // java.util.Map
    /* renamed from: u */
    public ImmutableCollection<V> values() {
        ImmutableCollection<V> immutableCollection = this.f20144c;
        if (immutableCollection == null) {
            ImmutableCollection<V> i10 = i();
            this.f20144c = i10;
            return i10;
        }
        return immutableCollection;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object writeReplace() {
        return new SerializedForm(this);
    }
}
