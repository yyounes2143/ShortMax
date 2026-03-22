package com.explorestack.protobuf;

import com.explorestack.protobuf.e0;
import com.huawei.hms.framework.common.ContainerUtils;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SmallSortedMap.java */
/* loaded from: classes3.dex */
public class u1<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final int f14668a;

    /* renamed from: b  reason: collision with root package name */
    private List<u1<K, V>.e> f14669b;

    /* renamed from: c  reason: collision with root package name */
    private Map<K, V> f14670c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f14671d;

    /* renamed from: e  reason: collision with root package name */
    private volatile u1<K, V>.g f14672e;

    /* renamed from: f  reason: collision with root package name */
    private Map<K, V> f14673f;

    /* renamed from: g  reason: collision with root package name */
    private volatile u1<K, V>.c f14674g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
    /* compiled from: SmallSortedMap.java */
    /* loaded from: classes3.dex */
    public static class a<FieldDescriptorType> extends u1<FieldDescriptorType, Object> {
        a(int i10) {
            super(i10, null);
        }

        @Override // com.explorestack.protobuf.u1, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return super.put((e0.c) obj, obj2);
        }

        @Override // com.explorestack.protobuf.u1
        public void q() {
            if (!p()) {
                for (int i10 = 0; i10 < l(); i10++) {
                    Map.Entry<FieldDescriptorType, Object> k10 = k(i10);
                    if (((e0.c) k10.getKey()).isRepeated()) {
                        k10.setValue(Collections.unmodifiableList((List) k10.getValue()));
                    }
                }
                for (Map.Entry<FieldDescriptorType, Object> entry : n()) {
                    if (((e0.c) entry.getKey()).isRepeated()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            super.q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SmallSortedMap.java */
    /* loaded from: classes3.dex */
    public class c extends u1<K, V>.g {
        private c() {
            super(u1.this, null);
        }

        @Override // com.explorestack.protobuf.u1.g, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new b(u1.this, null);
        }

        /* synthetic */ c(u1 u1Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SmallSortedMap.java */
    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private static final Iterator<Object> f14679a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final Iterable<Object> f14680b = new b();

        /* compiled from: SmallSortedMap.java */
        /* loaded from: classes3.dex */
        static class a implements Iterator<Object> {
            a() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        /* compiled from: SmallSortedMap.java */
        /* loaded from: classes3.dex */
        static class b implements Iterable<Object> {
            b() {
            }

            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return d.f14679a;
            }
        }

        static <T> Iterable<T> b() {
            return (Iterable<T>) f14680b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SmallSortedMap.java */
    /* loaded from: classes3.dex */
    public class e implements Map.Entry<K, V>, Comparable<u1<K, V>.e> {

        /* renamed from: a  reason: collision with root package name */
        private final K f14681a;

        /* renamed from: b  reason: collision with root package name */
        private V f14682b;

        e(u1 u1Var, Map.Entry<K, V> entry) {
            this(entry.getKey(), entry.getValue());
        }

        private boolean b(Object obj, Object obj2) {
            if (obj == null) {
                if (obj2 == null) {
                    return true;
                }
                return false;
            }
            return obj.equals(obj2);
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(u1<K, V>.e eVar) {
            return getKey().compareTo(eVar.getKey());
        }

        @Override // java.util.Map.Entry
        /* renamed from: c */
        public K getKey() {
            return this.f14681a;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (b(this.f14681a, entry.getKey()) && b(this.f14682b, entry.getValue())) {
                return true;
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f14682b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int hashCode;
            K k10 = this.f14681a;
            int i10 = 0;
            if (k10 == null) {
                hashCode = 0;
            } else {
                hashCode = k10.hashCode();
            }
            V v10 = this.f14682b;
            if (v10 != null) {
                i10 = v10.hashCode();
            }
            return hashCode ^ i10;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            u1.this.h();
            V v11 = this.f14682b;
            this.f14682b = v10;
            return v11;
        }

        public String toString() {
            return this.f14681a + ContainerUtils.KEY_VALUE_DELIMITER + this.f14682b;
        }

        e(K k10, V v10) {
            this.f14681a = k10;
            this.f14682b = v10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SmallSortedMap.java */
    /* loaded from: classes3.dex */
    public class g extends AbstractSet<Map.Entry<K, V>> {
        private g() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /* renamed from: a */
        public boolean add(Map.Entry<K, V> entry) {
            if (!contains(entry)) {
                u1.this.put(entry.getKey(), entry.getValue());
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            u1.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = u1.this.get(entry.getKey());
            Object value = entry.getValue();
            if (obj2 != value && (obj2 == null || !obj2.equals(value))) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new f(u1.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (contains(entry)) {
                u1.this.remove(entry.getKey());
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return u1.this.size();
        }

        /* synthetic */ g(u1 u1Var, a aVar) {
            this();
        }
    }

    /* synthetic */ u1(int i10, a aVar) {
        this(i10);
    }

    private int f(K k10) {
        int i10;
        int size = this.f14669b.size();
        int i11 = size - 1;
        if (i11 >= 0) {
            int compareTo = k10.compareTo(this.f14669b.get(i11).getKey());
            if (compareTo > 0) {
                i10 = size + 1;
                return -i10;
            } else if (compareTo == 0) {
                return i11;
            }
        }
        int i12 = 0;
        while (i12 <= i11) {
            int i13 = (i12 + i11) / 2;
            int compareTo2 = k10.compareTo(this.f14669b.get(i13).getKey());
            if (compareTo2 < 0) {
                i11 = i13 - 1;
            } else if (compareTo2 > 0) {
                i12 = i13 + 1;
            } else {
                return i13;
            }
        }
        i10 = i12 + 1;
        return -i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (!this.f14671d) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    private void j() {
        h();
        if (this.f14669b.isEmpty() && !(this.f14669b instanceof ArrayList)) {
            this.f14669b = new ArrayList(this.f14668a);
        }
    }

    private SortedMap<K, V> o() {
        h();
        if (this.f14670c.isEmpty() && !(this.f14670c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f14670c = treeMap;
            this.f14673f = treeMap.descendingMap();
        }
        return (SortedMap) this.f14670c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <FieldDescriptorType extends e0.c<FieldDescriptorType>> u1<FieldDescriptorType, Object> r(int i10) {
        return new a(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V t(int i10) {
        h();
        V value = this.f14669b.remove(i10).getValue();
        if (!this.f14670c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = o().entrySet().iterator();
            this.f14669b.add(new e(this, it.next()));
            it.remove();
        }
        return value;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        h();
        if (!this.f14669b.isEmpty()) {
            this.f14669b.clear();
        }
        if (!this.f14670c.isEmpty()) {
            this.f14670c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        if (f(comparable) < 0 && !this.f14670c.containsKey(comparable)) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f14672e == null) {
            this.f14672e = new g(this, null);
        }
        return this.f14672e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u1)) {
            return super.equals(obj);
        }
        u1 u1Var = (u1) obj;
        int size = size();
        if (size != u1Var.size()) {
            return false;
        }
        int l10 = l();
        if (l10 != u1Var.l()) {
            return entrySet().equals(u1Var.entrySet());
        }
        for (int i10 = 0; i10 < l10; i10++) {
            if (!k(i10).equals(u1Var.k(i10))) {
                return false;
            }
        }
        if (l10 == size) {
            return true;
        }
        return this.f14670c.equals(u1Var.f14670c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int f10 = f(comparable);
        if (f10 >= 0) {
            return this.f14669b.get(f10).getValue();
        }
        return this.f14670c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int l10 = l();
        int i10 = 0;
        for (int i11 = 0; i11 < l10; i11++) {
            i10 += this.f14669b.get(i11).hashCode();
        }
        if (m() > 0) {
            return i10 + this.f14670c.hashCode();
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<Map.Entry<K, V>> i() {
        if (this.f14674g == null) {
            this.f14674g = new c(this, null);
        }
        return this.f14674g;
    }

    public Map.Entry<K, V> k(int i10) {
        return this.f14669b.get(i10);
    }

    public int l() {
        return this.f14669b.size();
    }

    public int m() {
        return this.f14670c.size();
    }

    public Iterable<Map.Entry<K, V>> n() {
        if (this.f14670c.isEmpty()) {
            return d.b();
        }
        return this.f14670c.entrySet();
    }

    public boolean p() {
        return this.f14671d;
    }

    public void q() {
        Map<K, V> unmodifiableMap;
        Map<K, V> unmodifiableMap2;
        if (!this.f14671d) {
            if (this.f14670c.isEmpty()) {
                unmodifiableMap = Collections.emptyMap();
            } else {
                unmodifiableMap = Collections.unmodifiableMap(this.f14670c);
            }
            this.f14670c = unmodifiableMap;
            if (this.f14673f.isEmpty()) {
                unmodifiableMap2 = Collections.emptyMap();
            } else {
                unmodifiableMap2 = Collections.unmodifiableMap(this.f14673f);
            }
            this.f14673f = unmodifiableMap2;
            this.f14671d = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        h();
        Comparable comparable = (Comparable) obj;
        int f10 = f(comparable);
        if (f10 >= 0) {
            return (V) t(f10);
        }
        if (this.f14670c.isEmpty()) {
            return null;
        }
        return this.f14670c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: s */
    public V put(K k10, V v10) {
        h();
        int f10 = f(k10);
        if (f10 >= 0) {
            return this.f14669b.get(f10).setValue(v10);
        }
        j();
        int i10 = -(f10 + 1);
        if (i10 >= this.f14668a) {
            return o().put(k10, v10);
        }
        int size = this.f14669b.size();
        int i11 = this.f14668a;
        if (size == i11) {
            u1<K, V>.e remove = this.f14669b.remove(i11 - 1);
            o().put((K) remove.getKey(), remove.getValue());
        }
        this.f14669b.add(i10, new e(k10, v10));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f14669b.size() + this.f14670c.size();
    }

    /* compiled from: SmallSortedMap.java */
    /* loaded from: classes3.dex */
    private class b implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        private int f14675a;

        /* renamed from: b  reason: collision with root package name */
        private Iterator<Map.Entry<K, V>> f14676b;

        private b() {
            this.f14675a = u1.this.f14669b.size();
        }

        private Iterator<Map.Entry<K, V>> a() {
            if (this.f14676b == null) {
                this.f14676b = u1.this.f14673f.entrySet().iterator();
            }
            return this.f14676b;
        }

        @Override // java.util.Iterator
        /* renamed from: b */
        public Map.Entry<K, V> next() {
            if (!a().hasNext()) {
                List list = u1.this.f14669b;
                int i10 = this.f14675a - 1;
                this.f14675a = i10;
                return (Map.Entry) list.get(i10);
            }
            return a().next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i10 = this.f14675a;
            if ((i10 > 0 && i10 <= u1.this.f14669b.size()) || a().hasNext()) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        /* synthetic */ b(u1 u1Var, a aVar) {
            this();
        }
    }

    /* compiled from: SmallSortedMap.java */
    /* loaded from: classes3.dex */
    private class f implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        private int f14684a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f14685b;

        /* renamed from: c  reason: collision with root package name */
        private Iterator<Map.Entry<K, V>> f14686c;

        private f() {
            this.f14684a = -1;
        }

        private Iterator<Map.Entry<K, V>> a() {
            if (this.f14686c == null) {
                this.f14686c = u1.this.f14670c.entrySet().iterator();
            }
            return this.f14686c;
        }

        @Override // java.util.Iterator
        /* renamed from: b */
        public Map.Entry<K, V> next() {
            this.f14685b = true;
            int i10 = this.f14684a + 1;
            this.f14684a = i10;
            if (i10 < u1.this.f14669b.size()) {
                return (Map.Entry) u1.this.f14669b.get(this.f14684a);
            }
            return a().next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f14684a + 1 < u1.this.f14669b.size()) {
                return true;
            }
            if (!u1.this.f14670c.isEmpty() && a().hasNext()) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f14685b) {
                this.f14685b = false;
                u1.this.h();
                if (this.f14684a < u1.this.f14669b.size()) {
                    u1 u1Var = u1.this;
                    int i10 = this.f14684a;
                    this.f14684a = i10 - 1;
                    u1Var.t(i10);
                    return;
                }
                a().remove();
                return;
            }
            throw new IllegalStateException("remove() was called before next()");
        }

        /* synthetic */ f(u1 u1Var, a aVar) {
            this();
        }
    }

    private u1(int i10) {
        this.f14668a = i10;
        this.f14669b = Collections.emptyList();
        this.f14670c = Collections.emptyMap();
        this.f14673f = Collections.emptyMap();
    }
}
