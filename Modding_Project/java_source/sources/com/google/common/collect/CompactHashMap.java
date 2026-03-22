package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class CompactHashMap<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: j  reason: collision with root package name */
    private static final Object f20104j = new Object();

    /* renamed from: a  reason: collision with root package name */
    private transient Object f20105a;

    /* renamed from: b  reason: collision with root package name */
    transient int[] f20106b;

    /* renamed from: c  reason: collision with root package name */
    transient Object[] f20107c;

    /* renamed from: d  reason: collision with root package name */
    transient Object[] f20108d;

    /* renamed from: e  reason: collision with root package name */
    private transient int f20109e;

    /* renamed from: f  reason: collision with root package name */
    private transient int f20110f;

    /* renamed from: g  reason: collision with root package name */
    private transient Set<K> f20111g;

    /* renamed from: h  reason: collision with root package name */
    private transient Set<Map.Entry<K, V>> f20112h;

    /* renamed from: i  reason: collision with root package name */
    private transient Collection<V> f20113i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends CompactHashMap<K, V>.e<K> {
        a() {
            super(CompactHashMap.this, null);
        }

        @Override // com.google.common.collect.CompactHashMap.e
        K b(int i10) {
            return (K) CompactHashMap.this.P(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b extends CompactHashMap<K, V>.e<Map.Entry<K, V>> {
        b() {
            super(CompactHashMap.this, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.CompactHashMap.e
        /* renamed from: d */
        public Map.Entry<K, V> b(int i10) {
            return new g(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c extends CompactHashMap<K, V>.e<V> {
        c() {
            super(CompactHashMap.this, null);
        }

        @Override // com.google.common.collect.CompactHashMap.e
        V b(int i10) {
            return (V) CompactHashMap.this.s0(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d extends AbstractSet<Map.Entry<K, V>> {
        d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map<K, V> F = CompactHashMap.this.F();
            if (F != null) {
                return F.entrySet().contains(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int M = CompactHashMap.this.M(entry.getKey());
            if (M == -1 || !h7.h.a(CompactHashMap.this.s0(M), entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return CompactHashMap.this.H();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map<K, V> F = CompactHashMap.this.F();
            if (F != null) {
                return F.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (!CompactHashMap.this.U()) {
                int K = CompactHashMap.this.K();
                int f10 = com.google.common.collect.f.f(entry.getKey(), entry.getValue(), K, CompactHashMap.this.Y(), CompactHashMap.this.W(), CompactHashMap.this.X(), CompactHashMap.this.Z());
                if (f10 == -1) {
                    return false;
                }
                CompactHashMap.this.S(f10, K);
                CompactHashMap.h(CompactHashMap.this);
                CompactHashMap.this.L();
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class f extends AbstractSet<K> {
        f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return CompactHashMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return CompactHashMap.this.Q();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map<K, V> F = CompactHashMap.this.F();
            if (F != null) {
                return F.keySet().remove(obj);
            }
            if (CompactHashMap.this.V(obj) != CompactHashMap.f20104j) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class g extends com.google.common.collect.b<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final K f20123a;

        /* renamed from: b  reason: collision with root package name */
        private int f20124b;

        g(int i10) {
            this.f20123a = (K) CompactHashMap.this.P(i10);
            this.f20124b = i10;
        }

        private void b() {
            int i10 = this.f20124b;
            if (i10 == -1 || i10 >= CompactHashMap.this.size() || !h7.h.a(this.f20123a, CompactHashMap.this.P(this.f20124b))) {
                this.f20124b = CompactHashMap.this.M(this.f20123a);
            }
        }

        @Override // com.google.common.collect.b, java.util.Map.Entry
        public K getKey() {
            return this.f20123a;
        }

        @Override // com.google.common.collect.b, java.util.Map.Entry
        public V getValue() {
            Map<K, V> F = CompactHashMap.this.F();
            if (F != null) {
                return (V) r.a(F.get(this.f20123a));
            }
            b();
            int i10 = this.f20124b;
            if (i10 != -1) {
                return (V) CompactHashMap.this.s0(i10);
            }
            return (V) r.b();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            Map<K, V> F = CompactHashMap.this.F();
            if (F != null) {
                return (V) r.a(F.put(this.f20123a, v10));
            }
            b();
            int i10 = this.f20124b;
            if (i10 != -1) {
                V v11 = (V) CompactHashMap.this.s0(i10);
                CompactHashMap.this.r0(this.f20124b, v10);
                return v11;
            }
            CompactHashMap.this.put(this.f20123a, v10);
            return (V) r.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class h extends AbstractCollection<V> {
        h() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return CompactHashMap.this.u0();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    CompactHashMap(int i10) {
        N(i10);
    }

    public static <K, V> CompactHashMap<K, V> E(int i10) {
        return new CompactHashMap<>(i10);
    }

    private int G(int i10) {
        return W()[i10];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int K() {
        return (1 << (this.f20109e & 31)) - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int M(Object obj) {
        if (U()) {
            return -1;
        }
        int c10 = k.c(obj);
        int K = K();
        int h10 = com.google.common.collect.f.h(Y(), c10 & K);
        if (h10 == 0) {
            return -1;
        }
        int b10 = com.google.common.collect.f.b(c10, K);
        do {
            int i10 = h10 - 1;
            int G = G(i10);
            if (com.google.common.collect.f.b(G, K) == b10 && h7.h.a(obj, P(i10))) {
                return i10;
            }
            h10 = com.google.common.collect.f.c(G, K);
        } while (h10 != 0);
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public K P(int i10) {
        return (K) X()[i10];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object V(Object obj) {
        if (U()) {
            return f20104j;
        }
        int K = K();
        int f10 = com.google.common.collect.f.f(obj, null, K, Y(), W(), X(), null);
        if (f10 == -1) {
            return f20104j;
        }
        V s02 = s0(f10);
        S(f10, K);
        this.f20110f--;
        L();
        return s02;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] W() {
        int[] iArr = this.f20106b;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] X() {
        Object[] objArr = this.f20107c;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object Y() {
        Object obj = this.f20105a;
        Objects.requireNonNull(obj);
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] Z() {
        Object[] objArr = this.f20108d;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    static /* synthetic */ int h(CompactHashMap compactHashMap) {
        int i10 = compactHashMap.f20110f;
        compactHashMap.f20110f = i10 - 1;
        return i10;
    }

    private void k0(int i10) {
        int min;
        int length = W().length;
        if (i10 > length && (min = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            a0(min);
        }
    }

    private int l0(int i10, int i11, int i12, int i13) {
        Object a10 = com.google.common.collect.f.a(i11);
        int i14 = i11 - 1;
        if (i13 != 0) {
            com.google.common.collect.f.i(a10, i12 & i14, i13 + 1);
        }
        Object Y = Y();
        int[] W = W();
        for (int i15 = 0; i15 <= i10; i15++) {
            int h10 = com.google.common.collect.f.h(Y, i15);
            while (h10 != 0) {
                int i16 = h10 - 1;
                int i17 = W[i16];
                int b10 = com.google.common.collect.f.b(i17, i10) | i15;
                int i18 = b10 & i14;
                int h11 = com.google.common.collect.f.h(a10, i18);
                com.google.common.collect.f.i(a10, i18, h10);
                W[i16] = com.google.common.collect.f.d(b10, h11, i14);
                h10 = com.google.common.collect.f.c(i17, i10);
            }
        }
        this.f20105a = a10;
        p0(i14);
        return i14;
    }

    private void o0(int i10, int i11) {
        W()[i10] = i11;
    }

    private void p0(int i10) {
        this.f20109e = com.google.common.collect.f.d(this.f20109e, 32 - Integer.numberOfLeadingZeros(i10), 31);
    }

    private void q0(int i10, K k10) {
        X()[i10] = k10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r0(int i10, V v10) {
        Z()[i10] = v10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt >= 0) {
            N(readInt);
            for (int i10 = 0; i10 < readInt; i10++) {
                put(objectInputStream.readObject(), objectInputStream.readObject());
            }
            return;
        }
        throw new InvalidObjectException("Invalid size: " + readInt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V s0(int i10) {
        return (V) Z()[i10];
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<Map.Entry<K, V>> H = H();
        while (H.hasNext()) {
            Map.Entry<K, V> next = H.next();
            objectOutputStream.writeObject(next.getKey());
            objectOutputStream.writeObject(next.getValue());
        }
    }

    Set<Map.Entry<K, V>> A() {
        return new d();
    }

    Map<K, V> B(int i10) {
        return new LinkedHashMap(i10, 1.0f);
    }

    Set<K> C() {
        return new f();
    }

    Collection<V> D() {
        return new h();
    }

    Map<K, V> F() {
        Object obj = this.f20105a;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    Iterator<Map.Entry<K, V>> H() {
        Map<K, V> F = F();
        if (F != null) {
            return F.entrySet().iterator();
        }
        return new b();
    }

    int I() {
        if (isEmpty()) {
            return -1;
        }
        return 0;
    }

    int J(int i10) {
        int i11 = i10 + 1;
        if (i11 >= this.f20110f) {
            return -1;
        }
        return i11;
    }

    void L() {
        this.f20109e += 32;
    }

    void N(int i10) {
        boolean z10;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        h7.k.e(z10, "Expected size must be >= 0");
        this.f20109e = Ints.e(i10, 1, 1073741823);
    }

    void O(int i10, K k10, V v10, int i11, int i12) {
        o0(i10, com.google.common.collect.f.d(i11, 0, i12));
        q0(i10, k10);
        r0(i10, v10);
    }

    Iterator<K> Q() {
        Map<K, V> F = F();
        if (F != null) {
            return F.keySet().iterator();
        }
        return new a();
    }

    void S(int i10, int i11) {
        Object Y = Y();
        int[] W = W();
        Object[] X = X();
        Object[] Z = Z();
        int size = size();
        int i12 = size - 1;
        if (i10 < i12) {
            Object obj = X[i12];
            X[i10] = obj;
            Z[i10] = Z[i12];
            X[i12] = null;
            Z[i12] = null;
            W[i10] = W[i12];
            W[i12] = 0;
            int c10 = k.c(obj) & i11;
            int h10 = com.google.common.collect.f.h(Y, c10);
            if (h10 == size) {
                com.google.common.collect.f.i(Y, c10, i10 + 1);
                return;
            }
            while (true) {
                int i13 = h10 - 1;
                int i14 = W[i13];
                int c11 = com.google.common.collect.f.c(i14, i11);
                if (c11 == size) {
                    W[i13] = com.google.common.collect.f.d(i14, i10 + 1, i11);
                    return;
                }
                h10 = c11;
            }
        } else {
            X[i10] = null;
            Z[i10] = null;
            W[i10] = 0;
        }
    }

    boolean U() {
        if (this.f20105a == null) {
            return true;
        }
        return false;
    }

    void a0(int i10) {
        this.f20106b = Arrays.copyOf(W(), i10);
        this.f20107c = Arrays.copyOf(X(), i10);
        this.f20108d = Arrays.copyOf(Z(), i10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        if (U()) {
            return;
        }
        L();
        Map<K, V> F = F();
        if (F != null) {
            this.f20109e = Ints.e(size(), 3, 1073741823);
            F.clear();
            this.f20105a = null;
            this.f20110f = 0;
            return;
        }
        Arrays.fill(X(), 0, this.f20110f, (Object) null);
        Arrays.fill(Z(), 0, this.f20110f, (Object) null);
        com.google.common.collect.f.g(Y());
        Arrays.fill(W(), 0, this.f20110f, 0);
        this.f20110f = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Map<K, V> F = F();
        if (F != null) {
            return F.containsKey(obj);
        }
        if (M(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        Map<K, V> F = F();
        if (F != null) {
            return F.containsValue(obj);
        }
        for (int i10 = 0; i10 < this.f20110f; i10++) {
            if (h7.h.a(obj, s0(i10))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f20112h;
        if (set == null) {
            Set<Map.Entry<K, V>> A = A();
            this.f20112h = A;
            return A;
        }
        return set;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Map<K, V> F = F();
        if (F != null) {
            return F.get(obj);
        }
        int M = M(obj);
        if (M == -1) {
            return null;
        }
        u(M);
        return s0(M);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f20111g;
        if (set == null) {
            Set<K> C = C();
            this.f20111g = C;
            return C;
        }
        return set;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k10, V v10) {
        int l02;
        int i10;
        if (U()) {
            y();
        }
        Map<K, V> F = F();
        if (F != null) {
            return F.put(k10, v10);
        }
        int[] W = W();
        Object[] X = X();
        Object[] Z = Z();
        int i11 = this.f20110f;
        int i12 = i11 + 1;
        int c10 = k.c(k10);
        int K = K();
        int i13 = c10 & K;
        int h10 = com.google.common.collect.f.h(Y(), i13);
        if (h10 == 0) {
            if (i12 > K) {
                l02 = l0(K, com.google.common.collect.f.e(K), c10, i11);
                i10 = l02;
            } else {
                com.google.common.collect.f.i(Y(), i13, i12);
                i10 = K;
            }
        } else {
            int b10 = com.google.common.collect.f.b(c10, K);
            int i14 = 0;
            while (true) {
                int i15 = h10 - 1;
                int i16 = W[i15];
                if (com.google.common.collect.f.b(i16, K) == b10 && h7.h.a(k10, X[i15])) {
                    V v11 = (V) Z[i15];
                    Z[i15] = v10;
                    u(i15);
                    return v11;
                }
                int c11 = com.google.common.collect.f.c(i16, K);
                i14++;
                if (c11 == 0) {
                    if (i14 >= 9) {
                        return z().put(k10, v10);
                    }
                    if (i12 > K) {
                        l02 = l0(K, com.google.common.collect.f.e(K), c10, i11);
                    } else {
                        W[i15] = com.google.common.collect.f.d(i16, i12, K);
                    }
                } else {
                    h10 = c11;
                }
            }
        }
        k0(i12);
        O(i11, k10, v10, c10, i10);
        this.f20110f = i12;
        L();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        Map<K, V> F = F();
        if (F != null) {
            return F.remove(obj);
        }
        V v10 = (V) V(obj);
        if (v10 == f20104j) {
            return null;
        }
        return v10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        Map<K, V> F = F();
        if (F != null) {
            return F.size();
        }
        return this.f20110f;
    }

    Iterator<V> u0() {
        Map<K, V> F = F();
        if (F != null) {
            return F.values().iterator();
        }
        return new c();
    }

    int v(int i10, int i11) {
        return i10 - 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.f20113i;
        if (collection == null) {
            Collection<V> D = D();
            this.f20113i = D;
            return D;
        }
        return collection;
    }

    int y() {
        h7.k.p(U(), "Arrays already allocated");
        int i10 = this.f20109e;
        int j10 = com.google.common.collect.f.j(i10);
        this.f20105a = com.google.common.collect.f.a(j10);
        p0(j10 - 1);
        this.f20106b = new int[i10];
        this.f20107c = new Object[i10];
        this.f20108d = new Object[i10];
        return i10;
    }

    Map<K, V> z() {
        Map<K, V> B = B(K() + 1);
        int I = I();
        while (I >= 0) {
            B.put(P(I), s0(I));
            I = J(I);
        }
        this.f20105a = B;
        this.f20106b = null;
        this.f20107c = null;
        this.f20108d = null;
        L();
        return B;
    }

    /* loaded from: classes5.dex */
    private abstract class e<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        int f20118a;

        /* renamed from: b  reason: collision with root package name */
        int f20119b;

        /* renamed from: c  reason: collision with root package name */
        int f20120c;

        private e() {
            this.f20118a = CompactHashMap.this.f20109e;
            this.f20119b = CompactHashMap.this.I();
            this.f20120c = -1;
        }

        private void a() {
            if (CompactHashMap.this.f20109e == this.f20118a) {
                return;
            }
            throw new ConcurrentModificationException();
        }

        abstract T b(int i10);

        void c() {
            this.f20118a += 32;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f20119b >= 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            a();
            if (hasNext()) {
                int i10 = this.f20119b;
                this.f20120c = i10;
                T b10 = b(i10);
                this.f20119b = CompactHashMap.this.J(this.f20119b);
                return b10;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            boolean z10;
            a();
            if (this.f20120c >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            com.google.common.collect.d.c(z10);
            c();
            CompactHashMap compactHashMap = CompactHashMap.this;
            compactHashMap.remove(compactHashMap.P(this.f20120c));
            this.f20119b = CompactHashMap.this.v(this.f20119b, this.f20120c);
            this.f20120c = -1;
        }

        /* synthetic */ e(CompactHashMap compactHashMap, a aVar) {
            this();
        }
    }

    void u(int i10) {
    }
}
