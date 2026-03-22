package com.google.protobuf;

import com.google.protobuf.FieldSet;
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
/* loaded from: classes5.dex */
public class o0<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private List<o0<K, V>.e> entryList;
    private boolean isImmutable;
    private volatile o0<K, V>.c lazyDescendingEntrySet;
    private volatile o0<K, V>.g lazyEntrySet;
    private final int maxArraySize;
    private Map<K, V> overflowEntries;
    private Map<K, V> overflowEntriesDescending;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
    /* compiled from: SmallSortedMap.java */
    /* loaded from: classes5.dex */
    public class a<FieldDescriptorType> extends o0<FieldDescriptorType, Object> {
        a(int i10) {
            super(i10, null);
        }

        @Override // com.google.protobuf.o0
        public void makeImmutable() {
            if (!isImmutable()) {
                for (int i10 = 0; i10 < getNumArrayEntries(); i10++) {
                    Map.Entry<FieldDescriptorType, Object> arrayEntryAt = getArrayEntryAt(i10);
                    if (((FieldSet.FieldDescriptorLite) arrayEntryAt.getKey()).isRepeated()) {
                        arrayEntryAt.setValue(Collections.unmodifiableList((List) arrayEntryAt.getValue()));
                    }
                }
                for (Map.Entry<FieldDescriptorType, Object> entry : getOverflowEntries()) {
                    if (((FieldSet.FieldDescriptorLite) entry.getKey()).isRepeated()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            super.makeImmutable();
        }

        @Override // com.google.protobuf.o0, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return super.put((a<FieldDescriptorType>) ((Comparable) obj), (Comparable) obj2);
        }
    }

    /* compiled from: SmallSortedMap.java */
    /* loaded from: classes5.dex */
    private class b implements Iterator<Map.Entry<K, V>> {
        private Iterator<Map.Entry<K, V>> lazyOverflowIterator;
        private int pos;

        private b() {
            this.pos = o0.this.entryList.size();
        }

        private Iterator<Map.Entry<K, V>> getOverflowIterator() {
            if (this.lazyOverflowIterator == null) {
                this.lazyOverflowIterator = o0.this.overflowEntriesDescending.entrySet().iterator();
            }
            return this.lazyOverflowIterator;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i10 = this.pos;
            if ((i10 > 0 && i10 <= o0.this.entryList.size()) || getOverflowIterator().hasNext()) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (!getOverflowIterator().hasNext()) {
                List list = o0.this.entryList;
                int i10 = this.pos - 1;
                this.pos = i10;
                return (Map.Entry) list.get(i10);
            }
            return getOverflowIterator().next();
        }

        /* synthetic */ b(o0 o0Var, a aVar) {
            this();
        }
    }

    /* compiled from: SmallSortedMap.java */
    /* loaded from: classes5.dex */
    private class c extends o0<K, V>.g {
        private c() {
            super(o0.this, null);
        }

        @Override // com.google.protobuf.o0.g, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new b(o0.this, null);
        }

        /* synthetic */ c(o0 o0Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SmallSortedMap.java */
    /* loaded from: classes5.dex */
    public static class d {
        private static final Iterator<Object> ITERATOR = new a();
        private static final Iterable<Object> ITERABLE = new b();

        /* compiled from: SmallSortedMap.java */
        /* loaded from: classes5.dex */
        class a implements Iterator<Object> {
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
        /* loaded from: classes5.dex */
        class b implements Iterable<Object> {
            b() {
            }

            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return d.ITERATOR;
            }
        }

        private d() {
        }

        static <T> Iterable<T> iterable() {
            return (Iterable<T>) ITERABLE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SmallSortedMap.java */
    /* loaded from: classes5.dex */
    public class e implements Map.Entry<K, V>, Comparable<o0<K, V>.e> {
        private final K key;
        private V value;

        e(o0 o0Var, Map.Entry<K, V> entry) {
            this(entry.getKey(), entry.getValue());
        }

        @Override // java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return compareTo((e) ((e) obj));
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return equals(this.key, entry.getKey()) && equals(this.value, entry.getValue());
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.value;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int hashCode;
            K k10 = this.key;
            int i10 = 0;
            if (k10 == null) {
                hashCode = 0;
            } else {
                hashCode = k10.hashCode();
            }
            V v10 = this.value;
            if (v10 != null) {
                i10 = v10.hashCode();
            }
            return hashCode ^ i10;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            o0.this.checkMutable();
            V v11 = this.value;
            this.value = v10;
            return v11;
        }

        public String toString() {
            return this.key + ContainerUtils.KEY_VALUE_DELIMITER + this.value;
        }

        e(K k10, V v10) {
            this.key = k10;
            this.value = v10;
        }

        public int compareTo(o0<K, V>.e eVar) {
            return getKey().compareTo(eVar.getKey());
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.key;
        }

        private boolean equals(Object obj, Object obj2) {
            if (obj == null) {
                return obj2 == null;
            }
            return obj.equals(obj2);
        }
    }

    /* compiled from: SmallSortedMap.java */
    /* loaded from: classes5.dex */
    private class f implements Iterator<Map.Entry<K, V>> {
        private Iterator<Map.Entry<K, V>> lazyOverflowIterator;
        private boolean nextCalledBeforeRemove;
        private int pos;

        private f() {
            this.pos = -1;
        }

        private Iterator<Map.Entry<K, V>> getOverflowIterator() {
            if (this.lazyOverflowIterator == null) {
                this.lazyOverflowIterator = o0.this.overflowEntries.entrySet().iterator();
            }
            return this.lazyOverflowIterator;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.pos + 1 < o0.this.entryList.size()) {
                return true;
            }
            if (!o0.this.overflowEntries.isEmpty() && getOverflowIterator().hasNext()) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.nextCalledBeforeRemove) {
                this.nextCalledBeforeRemove = false;
                o0.this.checkMutable();
                if (this.pos < o0.this.entryList.size()) {
                    o0 o0Var = o0.this;
                    int i10 = this.pos;
                    this.pos = i10 - 1;
                    o0Var.removeArrayEntryAt(i10);
                    return;
                }
                getOverflowIterator().remove();
                return;
            }
            throw new IllegalStateException("remove() was called before next()");
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            this.nextCalledBeforeRemove = true;
            int i10 = this.pos + 1;
            this.pos = i10;
            if (i10 < o0.this.entryList.size()) {
                return (Map.Entry) o0.this.entryList.get(this.pos);
            }
            return getOverflowIterator().next();
        }

        /* synthetic */ f(o0 o0Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SmallSortedMap.java */
    /* loaded from: classes5.dex */
    public class g extends AbstractSet<Map.Entry<K, V>> {
        private g() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public /* bridge */ /* synthetic */ boolean add(Object obj) {
            return add((Map.Entry) ((Map.Entry) obj));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            o0.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = o0.this.get(entry.getKey());
            Object value = entry.getValue();
            if (obj2 != value && (obj2 == null || !obj2.equals(value))) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new f(o0.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (contains(entry)) {
                o0.this.remove(entry.getKey());
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return o0.this.size();
        }

        /* synthetic */ g(o0 o0Var, a aVar) {
            this();
        }

        public boolean add(Map.Entry<K, V> entry) {
            if (contains(entry)) {
                return false;
            }
            o0.this.put((o0) entry.getKey(), (K) entry.getValue());
            return true;
        }
    }

    /* synthetic */ o0(int i10, a aVar) {
        this(i10);
    }

    private int binarySearchInArray(K k10) {
        int i10;
        int size = this.entryList.size();
        int i11 = size - 1;
        if (i11 >= 0) {
            int compareTo = k10.compareTo(this.entryList.get(i11).getKey());
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
            int compareTo2 = k10.compareTo(this.entryList.get(i13).getKey());
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
    public void checkMutable() {
        if (!this.isImmutable) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    private void ensureEntryArrayMutable() {
        checkMutable();
        if (this.entryList.isEmpty() && !(this.entryList instanceof ArrayList)) {
            this.entryList = new ArrayList(this.maxArraySize);
        }
    }

    private SortedMap<K, V> getOverflowEntriesMutable() {
        checkMutable();
        if (this.overflowEntries.isEmpty() && !(this.overflowEntries instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.overflowEntries = treeMap;
            this.overflowEntriesDescending = treeMap.descendingMap();
        }
        return (SortedMap) this.overflowEntries;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <FieldDescriptorType extends FieldSet.FieldDescriptorLite<FieldDescriptorType>> o0<FieldDescriptorType, Object> newFieldMap(int i10) {
        return new a(i10);
    }

    static <K extends Comparable<K>, V> o0<K, V> newInstanceForTest(int i10) {
        return new o0<>(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V removeArrayEntryAt(int i10) {
        checkMutable();
        V value = this.entryList.remove(i10).getValue();
        if (!this.overflowEntries.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = getOverflowEntriesMutable().entrySet().iterator();
            this.entryList.add(new e(this, it.next()));
            it.remove();
        }
        return value;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        checkMutable();
        if (!this.entryList.isEmpty()) {
            this.entryList.clear();
        }
        if (!this.overflowEntries.isEmpty()) {
            this.overflowEntries.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        if (binarySearchInArray(comparable) < 0 && !this.overflowEntries.containsKey(comparable)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<Map.Entry<K, V>> descendingEntrySet() {
        if (this.lazyDescendingEntrySet == null) {
            this.lazyDescendingEntrySet = new c(this, null);
        }
        return this.lazyDescendingEntrySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.lazyEntrySet == null) {
            this.lazyEntrySet = new g(this, null);
        }
        return this.lazyEntrySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o0)) {
            return super.equals(obj);
        }
        o0 o0Var = (o0) obj;
        int size = size();
        if (size != o0Var.size()) {
            return false;
        }
        int numArrayEntries = getNumArrayEntries();
        if (numArrayEntries != o0Var.getNumArrayEntries()) {
            return entrySet().equals(o0Var.entrySet());
        }
        for (int i10 = 0; i10 < numArrayEntries; i10++) {
            if (!getArrayEntryAt(i10).equals(o0Var.getArrayEntryAt(i10))) {
                return false;
            }
        }
        if (numArrayEntries == size) {
            return true;
        }
        return this.overflowEntries.equals(o0Var.overflowEntries);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int binarySearchInArray = binarySearchInArray(comparable);
        if (binarySearchInArray >= 0) {
            return this.entryList.get(binarySearchInArray).getValue();
        }
        return this.overflowEntries.get(comparable);
    }

    public Map.Entry<K, V> getArrayEntryAt(int i10) {
        return this.entryList.get(i10);
    }

    public int getNumArrayEntries() {
        return this.entryList.size();
    }

    public int getNumOverflowEntries() {
        return this.overflowEntries.size();
    }

    public Iterable<Map.Entry<K, V>> getOverflowEntries() {
        if (this.overflowEntries.isEmpty()) {
            return d.iterable();
        }
        return this.overflowEntries.entrySet();
    }

    Iterable<Map.Entry<K, V>> getOverflowEntriesDescending() {
        if (this.overflowEntriesDescending.isEmpty()) {
            return d.iterable();
        }
        return this.overflowEntriesDescending.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int numArrayEntries = getNumArrayEntries();
        int i10 = 0;
        for (int i11 = 0; i11 < numArrayEntries; i11++) {
            i10 += this.entryList.get(i11).hashCode();
        }
        if (getNumOverflowEntries() > 0) {
            return i10 + this.overflowEntries.hashCode();
        }
        return i10;
    }

    public boolean isImmutable() {
        return this.isImmutable;
    }

    public void makeImmutable() {
        Map<K, V> unmodifiableMap;
        Map<K, V> unmodifiableMap2;
        if (!this.isImmutable) {
            if (this.overflowEntries.isEmpty()) {
                unmodifiableMap = Collections.emptyMap();
            } else {
                unmodifiableMap = Collections.unmodifiableMap(this.overflowEntries);
            }
            this.overflowEntries = unmodifiableMap;
            if (this.overflowEntriesDescending.isEmpty()) {
                unmodifiableMap2 = Collections.emptyMap();
            } else {
                unmodifiableMap2 = Collections.unmodifiableMap(this.overflowEntriesDescending);
            }
            this.overflowEntriesDescending = unmodifiableMap2;
            this.isImmutable = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((o0<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        checkMutable();
        Comparable comparable = (Comparable) obj;
        int binarySearchInArray = binarySearchInArray(comparable);
        if (binarySearchInArray >= 0) {
            return (V) removeArrayEntryAt(binarySearchInArray);
        }
        if (this.overflowEntries.isEmpty()) {
            return null;
        }
        return this.overflowEntries.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.entryList.size() + this.overflowEntries.size();
    }

    private o0(int i10) {
        this.maxArraySize = i10;
        this.entryList = Collections.emptyList();
        this.overflowEntries = Collections.emptyMap();
        this.overflowEntriesDescending = Collections.emptyMap();
    }

    public V put(K k10, V v10) {
        checkMutable();
        int binarySearchInArray = binarySearchInArray(k10);
        if (binarySearchInArray >= 0) {
            return this.entryList.get(binarySearchInArray).setValue(v10);
        }
        ensureEntryArrayMutable();
        int i10 = -(binarySearchInArray + 1);
        if (i10 >= this.maxArraySize) {
            return getOverflowEntriesMutable().put(k10, v10);
        }
        int size = this.entryList.size();
        int i11 = this.maxArraySize;
        if (size == i11) {
            o0<K, V>.e remove = this.entryList.remove(i11 - 1);
            getOverflowEntriesMutable().put((K) remove.getKey(), remove.getValue());
        }
        this.entryList.add(i10, new e(k10, v10));
        return null;
    }
}
