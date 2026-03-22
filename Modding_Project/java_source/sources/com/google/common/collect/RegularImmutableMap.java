package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class RegularImmutableMap<K, V> extends ImmutableMap<K, V> {

    /* renamed from: h  reason: collision with root package name */
    static final ImmutableMap<Object, Object> f20242h = new RegularImmutableMap(null, new Object[0], 0);

    /* renamed from: e  reason: collision with root package name */
    private final transient Object f20243e;

    /* renamed from: f  reason: collision with root package name */
    final transient Object[] f20244f;

    /* renamed from: g  reason: collision with root package name */
    private final transient int f20245g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class EntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {

        /* renamed from: c  reason: collision with root package name */
        private final transient ImmutableMap<K, V> f20246c;

        /* renamed from: d  reason: collision with root package name */
        private final transient Object[] f20247d;

        /* renamed from: e  reason: collision with root package name */
        private final transient int f20248e;

        /* renamed from: f  reason: collision with root package name */
        private final transient int f20249f;

        EntrySet(ImmutableMap<K, V> immutableMap, Object[] objArr, int i10, int i11) {
            this.f20246c = immutableMap;
            this.f20247d = objArr;
            this.f20248e = i10;
            this.f20249f = i11;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value == null || !value.equals(this.f20246c.get(key))) {
                return false;
            }
            return true;
        }

        @Override // com.google.common.collect.ImmutableCollection
        int e(Object[] objArr, int i10) {
            return d().e(objArr, i10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean i() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        /* renamed from: j */
        public y<Map.Entry<K, V>> iterator() {
            return d().iterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f20249f;
        }

        @Override // com.google.common.collect.ImmutableSet
        ImmutableList<Map.Entry<K, V>> v() {
            return new ImmutableList<Map.Entry<K, V>>() { // from class: com.google.common.collect.RegularImmutableMap.EntrySet.1
                @Override // java.util.List
                /* renamed from: K */
                public Map.Entry<K, V> get(int i10) {
                    h7.k.h(i10, EntrySet.this.f20249f);
                    int i11 = i10 * 2;
                    Object obj = EntrySet.this.f20247d[EntrySet.this.f20248e + i11];
                    Objects.requireNonNull(obj);
                    Object obj2 = EntrySet.this.f20247d[i11 + (EntrySet.this.f20248e ^ 1)];
                    Objects.requireNonNull(obj2);
                    return new AbstractMap.SimpleImmutableEntry(obj, obj2);
                }

                @Override // com.google.common.collect.ImmutableCollection
                public boolean i() {
                    return true;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return EntrySet.this.f20249f;
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
                public Object writeReplace() {
                    return super.writeReplace();
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    /* loaded from: classes5.dex */
    static final class KeySet<K> extends ImmutableSet<K> {

        /* renamed from: c  reason: collision with root package name */
        private final transient ImmutableMap<K, ?> f20251c;

        /* renamed from: d  reason: collision with root package name */
        private final transient ImmutableList<K> f20252d;

        KeySet(ImmutableMap<K, ?> immutableMap, ImmutableList<K> immutableList) {
            this.f20251c = immutableMap;
            this.f20252d = immutableList;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (this.f20251c.get(obj) != null) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public ImmutableList<K> d() {
            return this.f20252d;
        }

        @Override // com.google.common.collect.ImmutableCollection
        int e(Object[] objArr, int i10) {
            return d().e(objArr, i10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean i() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        /* renamed from: j */
        public y<K> iterator() {
            return d().iterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f20251c.size();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    /* loaded from: classes5.dex */
    static final class KeysOrValuesAsList extends ImmutableList<Object> {

        /* renamed from: c  reason: collision with root package name */
        private final transient Object[] f20253c;

        /* renamed from: d  reason: collision with root package name */
        private final transient int f20254d;

        /* renamed from: e  reason: collision with root package name */
        private final transient int f20255e;

        KeysOrValuesAsList(Object[] objArr, int i10, int i11) {
            this.f20253c = objArr;
            this.f20254d = i10;
            this.f20255e = i11;
        }

        @Override // java.util.List
        public Object get(int i10) {
            h7.k.h(i10, this.f20255e);
            Object obj = this.f20253c[(i10 * 2) + this.f20254d];
            Objects.requireNonNull(obj);
            return obj;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean i() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f20255e;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    private RegularImmutableMap(Object obj, Object[] objArr, int i10) {
        this.f20243e = obj;
        this.f20244f = objArr;
        this.f20245g = i10;
    }

    static Object A(Object obj, Object[] objArr, int i10, int i11, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (i10 == 1) {
            Object obj3 = objArr[i11];
            Objects.requireNonNull(obj3);
            if (!obj3.equals(obj2)) {
                return null;
            }
            Object obj4 = objArr[i11 ^ 1];
            Objects.requireNonNull(obj4);
            return obj4;
        } else if (obj == null) {
            return null;
        } else {
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                int length = bArr.length - 1;
                int b10 = k.b(obj2.hashCode());
                while (true) {
                    int i12 = b10 & length;
                    int i13 = bArr[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                    if (i13 == 255) {
                        return null;
                    }
                    if (obj2.equals(objArr[i13])) {
                        return objArr[i13 ^ 1];
                    }
                    b10 = i12 + 1;
                }
            } else if (obj instanceof short[]) {
                short[] sArr = (short[]) obj;
                int length2 = sArr.length - 1;
                int b11 = k.b(obj2.hashCode());
                while (true) {
                    int i14 = b11 & length2;
                    int i15 = sArr[i14] & 65535;
                    if (i15 == 65535) {
                        return null;
                    }
                    if (obj2.equals(objArr[i15])) {
                        return objArr[i15 ^ 1];
                    }
                    b11 = i14 + 1;
                }
            } else {
                int[] iArr = (int[]) obj;
                int length3 = iArr.length - 1;
                int b12 = k.b(obj2.hashCode());
                while (true) {
                    int i16 = b12 & length3;
                    int i17 = iArr[i16];
                    if (i17 == -1) {
                        return null;
                    }
                    if (obj2.equals(objArr[i17])) {
                        return objArr[i17 ^ 1];
                    }
                    b12 = i16 + 1;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> RegularImmutableMap<K, V> v(int i10, Object[] objArr) {
        return y(i10, objArr, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> RegularImmutableMap<K, V> y(int i10, Object[] objArr, ImmutableMap.a<K, V> aVar) {
        if (i10 == 0) {
            return (RegularImmutableMap) f20242h;
        }
        if (i10 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[1];
            Objects.requireNonNull(obj2);
            d.a(obj, obj2);
            return new RegularImmutableMap<>(null, objArr, 1);
        }
        h7.k.l(i10, objArr.length >> 1);
        Object z10 = z(objArr, i10, ImmutableSet.r(i10), 0);
        if (z10 instanceof Object[]) {
            Object[] objArr2 = (Object[]) z10;
            ImmutableMap.a.C0302a c0302a = (ImmutableMap.a.C0302a) objArr2[2];
            if (aVar != null) {
                aVar.f20151e = c0302a;
                Object obj3 = objArr2[0];
                int intValue = ((Integer) objArr2[1]).intValue();
                objArr = Arrays.copyOf(objArr, intValue * 2);
                z10 = obj3;
                i10 = intValue;
            } else {
                throw c0302a.a();
            }
        }
        return new RegularImmutableMap<>(z10, objArr, i10);
    }

    private static Object z(Object[] objArr, int i10, int i11, int i12) {
        ImmutableMap.a.C0302a c0302a = null;
        if (i10 == 1) {
            Object obj = objArr[i12];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[i12 ^ 1];
            Objects.requireNonNull(obj2);
            d.a(obj, obj2);
            return null;
        }
        int i13 = i11 - 1;
        int i14 = -1;
        if (i11 <= 128) {
            byte[] bArr = new byte[i11];
            Arrays.fill(bArr, (byte) -1);
            int i15 = 0;
            for (int i16 = 0; i16 < i10; i16++) {
                int i17 = (i16 * 2) + i12;
                int i18 = (i15 * 2) + i12;
                Object obj3 = objArr[i17];
                Objects.requireNonNull(obj3);
                Object obj4 = objArr[i17 ^ 1];
                Objects.requireNonNull(obj4);
                d.a(obj3, obj4);
                int b10 = k.b(obj3.hashCode());
                while (true) {
                    int i19 = b10 & i13;
                    int i20 = bArr[i19] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                    if (i20 == 255) {
                        bArr[i19] = (byte) i18;
                        if (i15 < i16) {
                            objArr[i18] = obj3;
                            objArr[i18 ^ 1] = obj4;
                        }
                        i15++;
                    } else if (obj3.equals(objArr[i20])) {
                        int i21 = i20 ^ 1;
                        Object obj5 = objArr[i21];
                        Objects.requireNonNull(obj5);
                        c0302a = new ImmutableMap.a.C0302a(obj3, obj4, obj5);
                        objArr[i21] = obj4;
                        break;
                    } else {
                        b10 = i19 + 1;
                    }
                }
            }
            return i15 == i10 ? bArr : new Object[]{bArr, Integer.valueOf(i15), c0302a};
        } else if (i11 <= 32768) {
            short[] sArr = new short[i11];
            Arrays.fill(sArr, (short) -1);
            int i22 = 0;
            for (int i23 = 0; i23 < i10; i23++) {
                int i24 = (i23 * 2) + i12;
                int i25 = (i22 * 2) + i12;
                Object obj6 = objArr[i24];
                Objects.requireNonNull(obj6);
                Object obj7 = objArr[i24 ^ 1];
                Objects.requireNonNull(obj7);
                d.a(obj6, obj7);
                int b11 = k.b(obj6.hashCode());
                while (true) {
                    int i26 = b11 & i13;
                    int i27 = sArr[i26] & 65535;
                    if (i27 == 65535) {
                        sArr[i26] = (short) i25;
                        if (i22 < i23) {
                            objArr[i25] = obj6;
                            objArr[i25 ^ 1] = obj7;
                        }
                        i22++;
                    } else if (obj6.equals(objArr[i27])) {
                        int i28 = i27 ^ 1;
                        Object obj8 = objArr[i28];
                        Objects.requireNonNull(obj8);
                        c0302a = new ImmutableMap.a.C0302a(obj6, obj7, obj8);
                        objArr[i28] = obj7;
                        break;
                    } else {
                        b11 = i26 + 1;
                    }
                }
            }
            return i22 == i10 ? sArr : new Object[]{sArr, Integer.valueOf(i22), c0302a};
        } else {
            int[] iArr = new int[i11];
            Arrays.fill(iArr, -1);
            int i29 = 0;
            int i30 = 0;
            while (i29 < i10) {
                int i31 = (i29 * 2) + i12;
                int i32 = (i30 * 2) + i12;
                Object obj9 = objArr[i31];
                Objects.requireNonNull(obj9);
                Object obj10 = objArr[i31 ^ 1];
                Objects.requireNonNull(obj10);
                d.a(obj9, obj10);
                int b12 = k.b(obj9.hashCode());
                while (true) {
                    int i33 = b12 & i13;
                    int i34 = iArr[i33];
                    if (i34 == i14) {
                        iArr[i33] = i32;
                        if (i30 < i29) {
                            objArr[i32] = obj9;
                            objArr[i32 ^ 1] = obj10;
                        }
                        i30++;
                    } else if (obj9.equals(objArr[i34])) {
                        int i35 = i34 ^ 1;
                        Object obj11 = objArr[i35];
                        Objects.requireNonNull(obj11);
                        c0302a = new ImmutableMap.a.C0302a(obj9, obj10, obj11);
                        objArr[i35] = obj10;
                        break;
                    } else {
                        b12 = i33 + 1;
                        i14 = -1;
                    }
                }
                i29++;
                i14 = -1;
            }
            return i30 == i10 ? iArr : new Object[]{iArr, Integer.valueOf(i30), c0302a};
        }
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> f() {
        return new EntrySet(this, this.f20244f, 0, this.f20245g);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        V v10 = (V) A(this.f20243e, this.f20244f, this.f20245g, 0, obj);
        if (v10 == null) {
            return null;
        }
        return v10;
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> h() {
        return new KeySet(this, new KeysOrValuesAsList(this.f20244f, 0, this.f20245g));
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableCollection<V> i() {
        return new KeysOrValuesAsList(this.f20244f, 1, this.f20245g);
    }

    @Override // com.google.common.collect.ImmutableMap
    boolean k() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.f20245g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public Object writeReplace() {
        return super.writeReplace();
    }
}
