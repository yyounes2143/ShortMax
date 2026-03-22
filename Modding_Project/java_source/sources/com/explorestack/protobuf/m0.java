package com.explorestack.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* compiled from: LazyStringArrayList.java */
/* loaded from: classes3.dex */
public class m0 extends c<String> implements n0, RandomAccess {

    /* renamed from: c  reason: collision with root package name */
    private static final m0 f14458c;

    /* renamed from: d  reason: collision with root package name */
    public static final n0 f14459d;

    /* renamed from: b  reason: collision with root package name */
    private final List<Object> f14460b;

    static {
        m0 m0Var = new m0();
        f14458c = m0Var;
        m0Var.makeImmutable();
        f14459d = m0Var;
    }

    public m0() {
        this(10);
    }

    private static ByteString d(Object obj) {
        if (obj instanceof ByteString) {
            return (ByteString) obj;
        }
        if (obj instanceof String) {
            return ByteString.copyFromUtf8((String) obj);
        }
        return ByteString.copyFrom((byte[]) obj);
    }

    private static String e(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            return ((ByteString) obj).toStringUtf8();
        }
        return i0.m((byte[]) obj);
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.explorestack.protobuf.n0
    public void b(ByteString byteString) {
        a();
        this.f14460b.add(byteString);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: c */
    public void add(int i10, String str) {
        a();
        this.f14460b.add(i10, str);
        ((AbstractList) this).modCount++;
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        a();
        this.f14460b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: f */
    public String get(int i10) {
        Object obj = this.f14460b.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f14460b.set(i10, stringUtf8);
            }
            return stringUtf8;
        }
        byte[] bArr = (byte[]) obj;
        String m10 = i0.m(bArr);
        if (i0.j(bArr)) {
            this.f14460b.set(i10, m10);
        }
        return m10;
    }

    @Override // com.explorestack.protobuf.i0.j, com.explorestack.protobuf.i0.f
    /* renamed from: g */
    public m0 mutableCopyWithCapacity(int i10) {
        if (i10 >= size()) {
            ArrayList arrayList = new ArrayList(i10);
            arrayList.addAll(this.f14460b);
            return new m0(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.explorestack.protobuf.n0
    public ByteString getByteString(int i10) {
        Object obj = this.f14460b.get(i10);
        ByteString d10 = d(obj);
        if (d10 != obj) {
            this.f14460b.set(i10, d10);
        }
        return d10;
    }

    @Override // com.explorestack.protobuf.n0
    public Object getRaw(int i10) {
        return this.f14460b.get(i10);
    }

    @Override // com.explorestack.protobuf.n0
    public List<?> getUnderlyingElements() {
        return Collections.unmodifiableList(this.f14460b);
    }

    @Override // com.explorestack.protobuf.n0
    public n0 getUnmodifiableView() {
        if (isModifiable()) {
            return new n2(this);
        }
        return this;
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractList, java.util.List
    /* renamed from: h */
    public String remove(int i10) {
        a();
        Object remove = this.f14460b.remove(i10);
        ((AbstractList) this).modCount++;
        return e(remove);
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: i */
    public String set(int i10, String str) {
        a();
        return e(this.f14460b.set(i10, str));
    }

    @Override // com.explorestack.protobuf.c, com.explorestack.protobuf.i0.j
    public /* bridge */ /* synthetic */ boolean isModifiable() {
        return super.isModifiable();
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f14460b.size();
    }

    public m0(int i10) {
        this(new ArrayList(i10));
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractList, java.util.List
    public boolean addAll(int i10, Collection<? extends String> collection) {
        a();
        if (collection instanceof n0) {
            collection = ((n0) collection).getUnderlyingElements();
        }
        boolean addAll = this.f14460b.addAll(i10, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    public m0(n0 n0Var) {
        this.f14460b = new ArrayList(n0Var.size());
        addAll(n0Var);
    }

    private m0(ArrayList<Object> arrayList) {
        this.f14460b = arrayList;
    }
}
