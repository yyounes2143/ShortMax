package com.applovin.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.RandomAccess;
import java.util.Set;
/* loaded from: classes2.dex */
public class j4 implements Set, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList f8175a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final HashSet f8176b = new HashSet();

    @Override // java.util.Set, java.util.Collection
    /* renamed from: a */
    public boolean add(Comparable comparable) {
        if (contains(comparable)) {
            return false;
        }
        if (!isEmpty() && comparable.compareTo(a()) <= 0) {
            this.f8175a.add(b(comparable), comparable);
        } else {
            this.f8175a.add(comparable);
        }
        return this.f8176b.add(comparable);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection collection) {
        Iterator it = collection.iterator();
        while (true) {
            boolean z10 = false;
            while (it.hasNext()) {
                if (add((Comparable) it.next()) || z10) {
                    z10 = true;
                }
            }
            return z10;
        }
    }

    public Comparable b(int i10) {
        Comparable comparable = (Comparable) this.f8175a.remove(i10);
        this.f8176b.remove(comparable);
        return comparable;
    }

    public int c(Comparable comparable) {
        int binarySearch = Collections.binarySearch(this.f8175a, comparable);
        if (binarySearch < 0) {
            return ~binarySearch;
        }
        Comparable a10 = a(binarySearch);
        while (binarySearch < size() && a10 == a(binarySearch)) {
            binarySearch++;
        }
        return binarySearch;
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        this.f8175a.clear();
        this.f8176b.clear();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return this.f8176b.contains(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection collection) {
        return this.f8176b.containsAll(collection);
    }

    public int d(Comparable comparable) {
        if (comparable != null && contains(comparable)) {
            return b(comparable);
        }
        return -1;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.f8175a.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return this.f8175a.iterator();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        int d10 = d((Comparable) obj);
        if (d10 == -1) {
            return false;
        }
        this.f8175a.remove(d10);
        return this.f8176b.remove(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection collection) {
        while (true) {
            boolean z10 = false;
            for (Object obj : collection) {
                if (remove(obj) || z10) {
                    z10 = true;
                }
            }
            return z10;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection collection) {
        boolean z10 = false;
        for (int size = size() - 1; size >= 0; size--) {
            Comparable comparable = (Comparable) this.f8175a.get(size);
            if (!collection.contains(comparable)) {
                this.f8175a.remove(size);
                this.f8176b.remove(comparable);
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.Set, java.util.Collection
    public int size() {
        return this.f8175a.size();
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return this.f8175a.toArray();
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray(Object[] objArr) {
        return this.f8175a.toArray(objArr);
    }

    public int b(Comparable comparable) {
        int binarySearch = Collections.binarySearch(this.f8175a, comparable);
        if (binarySearch < 0) {
            return ~binarySearch;
        }
        Comparable a10 = a(binarySearch);
        while (binarySearch >= 0 && a10 == a(binarySearch)) {
            binarySearch--;
        }
        return binarySearch + 1;
    }

    public Comparable a(int i10) {
        return (Comparable) this.f8175a.get(i10);
    }

    public void a(int i10, Comparable comparable) {
        this.f8176b.remove((Comparable) this.f8175a.get(i10));
        this.f8175a.set(i10, comparable);
        this.f8176b.add(comparable);
    }

    public Comparable a() {
        return (Comparable) this.f8175a.get(size() - 1);
    }
}
