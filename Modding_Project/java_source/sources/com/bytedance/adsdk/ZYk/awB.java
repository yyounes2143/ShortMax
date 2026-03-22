package com.bytedance.adsdk.ZYk;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes3.dex */
abstract class awB<K, V> {
    awB<K, V>.ZYk ZYk;

    /* loaded from: classes3.dex */
    final class ZYk implements Set<K> {
        ZYk() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k10) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            awB.this.tB();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (awB.this.oJ(obj) >= 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return awB.oJ(awB.this.ZYk(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return awB.oJ(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int hashCode;
            int i10 = 0;
            for (int oJ = awB.this.oJ() - 1; oJ >= 0; oJ--) {
                Object oJ2 = awB.this.oJ(oJ, 0);
                if (oJ2 == null) {
                    hashCode = 0;
                } else {
                    hashCode = oJ2.hashCode();
                }
                i10 += hashCode;
            }
            return i10;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            if (awB.this.oJ() == 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new oJ(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int oJ = awB.this.oJ(obj);
            if (oJ >= 0) {
                awB.this.oJ(oJ);
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return awB.ZYk(awB.this.ZYk(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return awB.tB(awB.this.ZYk(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return awB.this.oJ();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return awB.this.ZYk(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) awB.this.oJ(tArr, 0);
        }
    }

    /* loaded from: classes3.dex */
    final class oJ<T> implements Iterator<T> {
        int ZYk;
        boolean ex = false;
        final int oJ;
        int tB;

        oJ(int i10) {
            this.oJ = i10;
            this.ZYk = awB.this.oJ();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.tB < this.ZYk) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T t10 = (T) awB.this.oJ(this.tB, this.oJ);
                this.tB++;
                this.ex = true;
                return t10;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.ex) {
                int i10 = this.tB - 1;
                this.tB = i10;
                this.ZYk--;
                this.ex = false;
                awB.this.oJ(i10);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public static <K, V> boolean ZYk(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    public static <K, V> boolean oJ(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <K, V> boolean tB(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    protected abstract Map<K, V> ZYk();

    public Set<K> ex() {
        if (this.ZYk == null) {
            this.ZYk = new ZYk();
        }
        return this.ZYk;
    }

    protected abstract int oJ();

    protected abstract int oJ(Object obj);

    protected abstract Object oJ(int i10, int i11);

    protected abstract void oJ(int i10);

    protected abstract void tB();

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T[] oJ(T[] tArr, int i10) {
        int oJ2 = oJ();
        if (tArr.length < oJ2) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), oJ2));
        }
        for (int i11 = 0; i11 < oJ2; i11++) {
            tArr[i11] = oJ(i11, i10);
        }
        if (tArr.length > oJ2) {
            tArr[oJ2] = null;
        }
        return tArr;
    }

    public Object[] ZYk(int i10) {
        int oJ2 = oJ();
        Object[] objArr = new Object[oJ2];
        for (int i11 = 0; i11 < oJ2; i11++) {
            objArr[i11] = oJ(i11, i10);
        }
        return objArr;
    }

    public static <T> boolean oJ(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }
}
