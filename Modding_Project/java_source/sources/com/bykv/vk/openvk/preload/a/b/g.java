package com.bykv.vk.openvk.preload.a.b;

import com.huawei.hms.framework.common.ContainerUtils;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* compiled from: LinkedTreeMap.java */
/* loaded from: classes3.dex */
public final class g<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final Comparator<Comparable> f11157d = new Comparator<Comparable>() { // from class: com.bykv.vk.openvk.preload.a.b.g.1
        @Override // java.util.Comparator
        public final /* synthetic */ int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };

    /* renamed from: i  reason: collision with root package name */
    private static /* synthetic */ boolean f11158i = true;

    /* renamed from: a  reason: collision with root package name */
    int f11159a;

    /* renamed from: b  reason: collision with root package name */
    int f11160b;

    /* renamed from: c  reason: collision with root package name */
    final d<K, V> f11161c;

    /* renamed from: e  reason: collision with root package name */
    private Comparator<? super K> f11162e;

    /* renamed from: f  reason: collision with root package name */
    private d<K, V> f11163f;

    /* renamed from: g  reason: collision with root package name */
    private g<K, V>.a f11164g;

    /* renamed from: h  reason: collision with root package name */
    private g<K, V>.b f11165h;

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes3.dex */
    class a extends AbstractSet<Map.Entry<K, V>> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if ((obj instanceof Map.Entry) && g.this.a((Map.Entry) obj) != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new c(this) { // from class: com.bykv.vk.openvk.preload.a.b.g.a.1
                {
                    g gVar = g.this;
                }

                @Override // java.util.Iterator
                public final /* synthetic */ Object next() {
                    return a();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            d<K, V> a10;
            if (!(obj instanceof Map.Entry) || (a10 = g.this.a((Map.Entry) obj)) == null) {
                return false;
            }
            g.this.a((d) a10, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return g.this.f11159a;
        }
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes3.dex */
    final class b extends AbstractSet<K> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return g.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new c(this) { // from class: com.bykv.vk.openvk.preload.a.b.g.b.1
                {
                    g gVar = g.this;
                }

                @Override // java.util.Iterator
                public final K next() {
                    return a().f11177f;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            if (g.this.a(obj) != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return g.this.f11159a;
        }
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes3.dex */
    abstract class c<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private d<K, V> f11168a;

        /* renamed from: b  reason: collision with root package name */
        private d<K, V> f11169b = null;

        /* renamed from: c  reason: collision with root package name */
        private int f11170c;

        c() {
            this.f11168a = g.this.f11161c.f11175d;
            this.f11170c = g.this.f11160b;
        }

        final d<K, V> a() {
            d<K, V> dVar = this.f11168a;
            g gVar = g.this;
            if (dVar != gVar.f11161c) {
                if (gVar.f11160b == this.f11170c) {
                    this.f11168a = dVar.f11175d;
                    this.f11169b = dVar;
                    return dVar;
                }
                throw new ConcurrentModificationException();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f11168a != g.this.f11161c) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public final void remove() {
            d<K, V> dVar = this.f11169b;
            if (dVar != null) {
                g.this.a((d) dVar, true);
                this.f11169b = null;
                this.f11170c = g.this.f11160b;
                return;
            }
            throw new IllegalStateException();
        }
    }

    public g() {
        this(f11157d);
    }

    private d<K, V> a(K k10, boolean z10) {
        int i10;
        d<K, V> dVar;
        Comparator<? super K> comparator = this.f11162e;
        d<K, V> dVar2 = this.f11163f;
        if (dVar2 != null) {
            Comparable comparable = comparator == f11157d ? (Comparable) k10 : null;
            while (true) {
                if (comparable != null) {
                    i10 = comparable.compareTo(dVar2.f11177f);
                } else {
                    i10 = comparator.compare(k10, (K) dVar2.f11177f);
                }
                if (i10 != 0) {
                    d<K, V> dVar3 = i10 < 0 ? dVar2.f11173b : dVar2.f11174c;
                    if (dVar3 == null) {
                        break;
                    }
                    dVar2 = dVar3;
                } else {
                    return dVar2;
                }
            }
        } else {
            i10 = 0;
        }
        if (z10) {
            d<K, V> dVar4 = this.f11161c;
            if (dVar2 == null) {
                if (comparator == f11157d && !(k10 instanceof Comparable)) {
                    throw new ClassCastException(k10.getClass().getName() + " is not Comparable");
                }
                dVar = new d<>(dVar2, k10, dVar4, dVar4.f11176e);
                this.f11163f = dVar;
            } else {
                dVar = new d<>(dVar2, k10, dVar4, dVar4.f11176e);
                if (i10 < 0) {
                    dVar2.f11173b = dVar;
                } else {
                    dVar2.f11174c = dVar;
                }
                b(dVar2, true);
            }
            this.f11159a++;
            this.f11160b++;
            return dVar;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private d<K, V> b(Object obj) {
        if (obj != 0) {
            try {
                return a((g<K, V>) obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f11163f = null;
        this.f11159a = 0;
        this.f11160b++;
        d<K, V> dVar = this.f11161c;
        dVar.f11176e = dVar;
        dVar.f11175d = dVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        if (b(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        g<K, V>.a aVar = this.f11164g;
        if (aVar != null) {
            return aVar;
        }
        g<K, V>.a aVar2 = new a();
        this.f11164g = aVar2;
        return aVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        d<K, V> b10 = b(obj);
        if (b10 != null) {
            return b10.f11178g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        g<K, V>.b bVar = this.f11165h;
        if (bVar != null) {
            return bVar;
        }
        g<K, V>.b bVar2 = new b();
        this.f11165h = bVar2;
        return bVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k10, V v10) {
        if (k10 != null) {
            d<K, V> a10 = a((g<K, V>) k10, true);
            V v11 = a10.f11178g;
            a10.f11178g = v10;
            return v11;
        }
        throw new NullPointerException("key == null");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        d<K, V> a10 = a(obj);
        if (a10 != null) {
            return a10.f11178g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f11159a;
    }

    private g(Comparator<? super K> comparator) {
        this.f11159a = 0;
        this.f11160b = 0;
        this.f11161c = new d<>();
        this.f11162e = comparator == null ? f11157d : comparator;
    }

    private void b(d<K, V> dVar, boolean z10) {
        while (dVar != null) {
            d<K, V> dVar2 = dVar.f11173b;
            d<K, V> dVar3 = dVar.f11174c;
            int i10 = dVar2 != null ? dVar2.f11179h : 0;
            int i11 = dVar3 != null ? dVar3.f11179h : 0;
            int i12 = i10 - i11;
            if (i12 == -2) {
                d<K, V> dVar4 = dVar3.f11173b;
                d<K, V> dVar5 = dVar3.f11174c;
                int i13 = (dVar4 != null ? dVar4.f11179h : 0) - (dVar5 != null ? dVar5.f11179h : 0);
                if (i13 != -1 && (i13 != 0 || z10)) {
                    if (!f11158i && i13 != 1) {
                        throw new AssertionError();
                    }
                    b((d) dVar3);
                    a((d) dVar);
                } else {
                    a((d) dVar);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 2) {
                d<K, V> dVar6 = dVar2.f11173b;
                d<K, V> dVar7 = dVar2.f11174c;
                int i14 = (dVar6 != null ? dVar6.f11179h : 0) - (dVar7 != null ? dVar7.f11179h : 0);
                if (i14 != 1 && (i14 != 0 || z10)) {
                    if (!f11158i && i14 != -1) {
                        throw new AssertionError();
                    }
                    a((d) dVar2);
                    b((d) dVar);
                } else {
                    b((d) dVar);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 0) {
                dVar.f11179h = i10 + 1;
                if (z10) {
                    return;
                }
            } else if (!f11158i && i12 != -1 && i12 != 1) {
                throw new AssertionError();
            } else {
                dVar.f11179h = Math.max(i10, i11) + 1;
                if (!z10) {
                    return;
                }
            }
            dVar = dVar.f11172a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes3.dex */
    public static final class d<K, V> implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        d<K, V> f11172a;

        /* renamed from: b  reason: collision with root package name */
        d<K, V> f11173b;

        /* renamed from: c  reason: collision with root package name */
        d<K, V> f11174c;

        /* renamed from: d  reason: collision with root package name */
        d<K, V> f11175d;

        /* renamed from: e  reason: collision with root package name */
        d<K, V> f11176e;

        /* renamed from: f  reason: collision with root package name */
        final K f11177f;

        /* renamed from: g  reason: collision with root package name */
        V f11178g;

        /* renamed from: h  reason: collision with root package name */
        int f11179h;

        d() {
            this.f11177f = null;
            this.f11176e = this;
            this.f11175d = this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                K k10 = this.f11177f;
                if (k10 != null ? k10.equals(entry.getKey()) : entry.getKey() == null) {
                    V v10 = this.f11178g;
                    if (v10 == null) {
                        if (entry.getValue() == null) {
                            return true;
                        }
                    } else if (v10.equals(entry.getValue())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f11177f;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f11178g;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            int hashCode;
            K k10 = this.f11177f;
            int i10 = 0;
            if (k10 == null) {
                hashCode = 0;
            } else {
                hashCode = k10.hashCode();
            }
            V v10 = this.f11178g;
            if (v10 != null) {
                i10 = v10.hashCode();
            }
            return hashCode ^ i10;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v10) {
            V v11 = this.f11178g;
            this.f11178g = v10;
            return v11;
        }

        public final String toString() {
            return this.f11177f + ContainerUtils.KEY_VALUE_DELIMITER + this.f11178g;
        }

        d(d<K, V> dVar, K k10, d<K, V> dVar2, d<K, V> dVar3) {
            this.f11172a = dVar;
            this.f11177f = k10;
            this.f11179h = 1;
            this.f11175d = dVar2;
            this.f11176e = dVar3;
            dVar3.f11175d = this;
            dVar2.f11176e = this;
        }
    }

    final d<K, V> a(Map.Entry<?, ?> entry) {
        d<K, V> b10 = b(entry.getKey());
        if (b10 != null) {
            V v10 = b10.f11178g;
            Object value = entry.getValue();
            if (v10 == value || (v10 != null && v10.equals(value))) {
                return b10;
            }
            return null;
        }
        return null;
    }

    final void a(d<K, V> dVar, boolean z10) {
        int i10;
        if (z10) {
            d<K, V> dVar2 = dVar.f11176e;
            dVar2.f11175d = dVar.f11175d;
            dVar.f11175d.f11176e = dVar2;
        }
        d<K, V> dVar3 = dVar.f11173b;
        d<K, V> dVar4 = dVar.f11174c;
        d<K, V> dVar5 = dVar.f11172a;
        int i11 = 0;
        if (dVar3 != null && dVar4 != null) {
            if (dVar3.f11179h > dVar4.f11179h) {
                d<K, V> dVar6 = dVar3.f11174c;
                while (true) {
                    d<K, V> dVar7 = dVar6;
                    dVar4 = dVar3;
                    dVar3 = dVar7;
                    if (dVar3 == null) {
                        break;
                    }
                    dVar6 = dVar3.f11174c;
                }
            } else {
                while (true) {
                    d<K, V> dVar8 = dVar4.f11173b;
                    if (dVar8 == null) {
                        break;
                    }
                    dVar4 = dVar8;
                }
            }
            a((d) dVar4, false);
            d<K, V> dVar9 = dVar.f11173b;
            if (dVar9 != null) {
                i10 = dVar9.f11179h;
                dVar4.f11173b = dVar9;
                dVar9.f11172a = dVar4;
                dVar.f11173b = null;
            } else {
                i10 = 0;
            }
            d<K, V> dVar10 = dVar.f11174c;
            if (dVar10 != null) {
                i11 = dVar10.f11179h;
                dVar4.f11174c = dVar10;
                dVar10.f11172a = dVar4;
                dVar.f11174c = null;
            }
            dVar4.f11179h = Math.max(i10, i11) + 1;
            a(dVar, dVar4);
            return;
        }
        if (dVar3 != null) {
            a(dVar, dVar3);
            dVar.f11173b = null;
        } else if (dVar4 != null) {
            a(dVar, dVar4);
            dVar.f11174c = null;
        } else {
            a(dVar, (d) null);
        }
        b(dVar5, false);
        this.f11159a--;
        this.f11160b++;
    }

    private void b(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f11173b;
        d<K, V> dVar3 = dVar.f11174c;
        d<K, V> dVar4 = dVar2.f11173b;
        d<K, V> dVar5 = dVar2.f11174c;
        dVar.f11173b = dVar5;
        if (dVar5 != null) {
            dVar5.f11172a = dVar;
        }
        a(dVar, dVar2);
        dVar2.f11174c = dVar;
        dVar.f11172a = dVar2;
        int max = Math.max(dVar3 != null ? dVar3.f11179h : 0, dVar5 != null ? dVar5.f11179h : 0) + 1;
        dVar.f11179h = max;
        dVar2.f11179h = Math.max(max, dVar4 != null ? dVar4.f11179h : 0) + 1;
    }

    final d<K, V> a(Object obj) {
        d<K, V> b10 = b(obj);
        if (b10 != null) {
            a((d) b10, true);
        }
        return b10;
    }

    private void a(d<K, V> dVar, d<K, V> dVar2) {
        d<K, V> dVar3 = dVar.f11172a;
        dVar.f11172a = null;
        if (dVar2 != null) {
            dVar2.f11172a = dVar3;
        }
        if (dVar3 != null) {
            if (dVar3.f11173b == dVar) {
                dVar3.f11173b = dVar2;
                return;
            } else if (!f11158i && dVar3.f11174c != dVar) {
                throw new AssertionError();
            } else {
                dVar3.f11174c = dVar2;
                return;
            }
        }
        this.f11163f = dVar2;
    }

    private void a(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f11173b;
        d<K, V> dVar3 = dVar.f11174c;
        d<K, V> dVar4 = dVar3.f11173b;
        d<K, V> dVar5 = dVar3.f11174c;
        dVar.f11174c = dVar4;
        if (dVar4 != null) {
            dVar4.f11172a = dVar;
        }
        a(dVar, dVar3);
        dVar3.f11173b = dVar;
        dVar.f11172a = dVar3;
        int max = Math.max(dVar2 != null ? dVar2.f11179h : 0, dVar4 != null ? dVar4.f11179h : 0) + 1;
        dVar.f11179h = max;
        dVar3.f11179h = Math.max(max, dVar5 != null ? dVar5.f11179h : 0) + 1;
    }
}
