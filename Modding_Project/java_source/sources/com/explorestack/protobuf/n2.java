package com.explorestack.protobuf;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* compiled from: UnmodifiableLazyStringList.java */
/* loaded from: classes3.dex */
public class n2 extends AbstractList<String> implements n0, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private final n0 f14512a;

    /* compiled from: UnmodifiableLazyStringList.java */
    /* loaded from: classes3.dex */
    class a implements ListIterator<String> {

        /* renamed from: a  reason: collision with root package name */
        ListIterator<String> f14513a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f14514b;

        a(int i10) {
            this.f14514b = i10;
            this.f14513a = n2.this.f14512a.listIterator(i10);
        }

        @Override // java.util.ListIterator
        /* renamed from: a */
        public void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        /* renamed from: b */
        public String next() {
            return this.f14513a.next();
        }

        @Override // java.util.ListIterator
        /* renamed from: c */
        public String previous() {
            return this.f14513a.previous();
        }

        @Override // java.util.ListIterator
        /* renamed from: d */
        public void set(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f14513a.hasNext();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f14513a.hasPrevious();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f14513a.nextIndex();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f14513a.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: UnmodifiableLazyStringList.java */
    /* loaded from: classes3.dex */
    class b implements Iterator<String> {

        /* renamed from: a  reason: collision with root package name */
        Iterator<String> f14516a;

        b() {
            this.f14516a = n2.this.f14512a.iterator();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public String next() {
            return this.f14516a.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14516a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public n2(n0 n0Var) {
        this.f14512a = n0Var;
    }

    @Override // com.explorestack.protobuf.n0
    public void b(ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: c */
    public String get(int i10) {
        return this.f14512a.get(i10);
    }

    @Override // com.explorestack.protobuf.n0
    public ByteString getByteString(int i10) {
        return this.f14512a.getByteString(i10);
    }

    @Override // com.explorestack.protobuf.n0
    public Object getRaw(int i10) {
        return this.f14512a.getRaw(i10);
    }

    @Override // com.explorestack.protobuf.n0
    public List<?> getUnderlyingElements() {
        return this.f14512a.getUnderlyingElements();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<String> iterator() {
        return new b();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<String> listIterator(int i10) {
        return new a(i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f14512a.size();
    }

    @Override // com.explorestack.protobuf.n0
    public n0 getUnmodifiableView() {
        return this;
    }
}
