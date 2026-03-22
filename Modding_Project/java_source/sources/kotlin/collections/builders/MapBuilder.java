package kotlin.collections.builders;

import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MapBuilder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,747:1\n1#2:748\n*E\n"})
/* loaded from: classes8.dex */
public final class MapBuilder<K, V> implements Map<K, V>, Serializable, KMutableMap {
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final a f60958n = new a(null);
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private static final MapBuilder f60959o;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private K[] f60960a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private V[] f60961b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private int[] f60962c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private int[] f60963d;

    /* renamed from: e  reason: collision with root package name */
    private int f60964e;

    /* renamed from: f  reason: collision with root package name */
    private int f60965f;

    /* renamed from: g  reason: collision with root package name */
    private int f60966g;

    /* renamed from: h  reason: collision with root package name */
    private int f60967h;

    /* renamed from: i  reason: collision with root package name */
    private int f60968i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private kotlin.collections.builders.b<K> f60969j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private kotlin.collections.builders.c<V> f60970k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private kotlin.collections.builders.a<K, V> f60971l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f60972m;

    /* compiled from: MapBuilder.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int c(int i10) {
            return Integer.highestOneBit(kotlin.ranges.e.e(i10, 1) * 3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int d(int i10) {
            return Integer.numberOfLeadingZeros(i10) + 1;
        }

        @NotNull
        public final MapBuilder e() {
            return MapBuilder.f60959o;
        }

        private a() {
        }
    }

    /* compiled from: MapBuilder.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b<K, V> extends d<K, V> implements Iterator<Map.Entry<K, V>>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull MapBuilder<K, V> map) {
            super(map);
            Intrinsics.checkNotNullParameter(map, "map");
        }

        @Override // java.util.Iterator
        @NotNull
        /* renamed from: i */
        public c<K, V> next() {
            a();
            if (b() < ((MapBuilder) d()).f60965f) {
                int b10 = b();
                f(b10 + 1);
                h(b10);
                c<K, V> cVar = new c<>(d(), c());
                e();
                return cVar;
            }
            throw new NoSuchElementException();
        }

        public final void j(@NotNull StringBuilder sb2) {
            Intrinsics.checkNotNullParameter(sb2, "sb");
            if (b() < ((MapBuilder) d()).f60965f) {
                int b10 = b();
                f(b10 + 1);
                h(b10);
                Object obj = ((MapBuilder) d()).f60960a[c()];
                if (obj == d()) {
                    sb2.append("(this Map)");
                } else {
                    sb2.append(obj);
                }
                sb2.append('=');
                Object[] objArr = ((MapBuilder) d()).f60961b;
                Intrinsics.checkNotNull(objArr);
                Object obj2 = objArr[c()];
                if (obj2 == d()) {
                    sb2.append("(this Map)");
                } else {
                    sb2.append(obj2);
                }
                e();
                return;
            }
            throw new NoSuchElementException();
        }

        public final int k() {
            int i10;
            if (b() < ((MapBuilder) d()).f60965f) {
                int b10 = b();
                f(b10 + 1);
                h(b10);
                Object obj = ((MapBuilder) d()).f60960a[c()];
                int i11 = 0;
                if (obj != null) {
                    i10 = obj.hashCode();
                } else {
                    i10 = 0;
                }
                Object[] objArr = ((MapBuilder) d()).f60961b;
                Intrinsics.checkNotNull(objArr);
                Object obj2 = objArr[c()];
                if (obj2 != null) {
                    i11 = obj2.hashCode();
                }
                int i12 = i10 ^ i11;
                e();
                return i12;
            }
            throw new NoSuchElementException();
        }
    }

    /* compiled from: MapBuilder.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class c<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final MapBuilder<K, V> f60973a;

        /* renamed from: b  reason: collision with root package name */
        private final int f60974b;

        /* renamed from: c  reason: collision with root package name */
        private final int f60975c;

        public c(@NotNull MapBuilder<K, V> map, int i10) {
            Intrinsics.checkNotNullParameter(map, "map");
            this.f60973a = map;
            this.f60974b = i10;
            this.f60975c = ((MapBuilder) map).f60967h;
        }

        private final void a() {
            if (((MapBuilder) this.f60973a).f60967h == this.f60975c) {
                return;
            }
            throw new ConcurrentModificationException("The backing map has been modified after this entry was obtained.");
        }

        @Override // java.util.Map.Entry
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (Intrinsics.areEqual(entry.getKey(), getKey()) && Intrinsics.areEqual(entry.getValue(), getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            a();
            return (K) ((MapBuilder) this.f60973a).f60960a[this.f60974b];
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            a();
            Object[] objArr = ((MapBuilder) this.f60973a).f60961b;
            Intrinsics.checkNotNull(objArr);
            return (V) objArr[this.f60974b];
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int i10;
            K key = getKey();
            int i11 = 0;
            if (key != null) {
                i10 = key.hashCode();
            } else {
                i10 = 0;
            }
            V value = getValue();
            if (value != null) {
                i11 = value.hashCode();
            }
            return i10 ^ i11;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            a();
            this.f60973a.s();
            Object[] q10 = this.f60973a.q();
            int i10 = this.f60974b;
            V v11 = (V) q10[i10];
            q10[i10] = v10;
            return v11;
        }

        @NotNull
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getKey());
            sb2.append('=');
            sb2.append(getValue());
            return sb2.toString();
        }
    }

    /* compiled from: MapBuilder.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,747:1\n1#2:748\n*E\n"})
    /* loaded from: classes8.dex */
    public static class d<K, V> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final MapBuilder<K, V> f60976a;

        /* renamed from: b  reason: collision with root package name */
        private int f60977b;

        /* renamed from: c  reason: collision with root package name */
        private int f60978c;

        /* renamed from: d  reason: collision with root package name */
        private int f60979d;

        public d(@NotNull MapBuilder<K, V> map) {
            Intrinsics.checkNotNullParameter(map, "map");
            this.f60976a = map;
            this.f60978c = -1;
            this.f60979d = ((MapBuilder) map).f60967h;
            e();
        }

        public final void a() {
            if (((MapBuilder) this.f60976a).f60967h == this.f60979d) {
                return;
            }
            throw new ConcurrentModificationException();
        }

        public final int b() {
            return this.f60977b;
        }

        public final int c() {
            return this.f60978c;
        }

        @NotNull
        public final MapBuilder<K, V> d() {
            return this.f60976a;
        }

        public final void e() {
            while (this.f60977b < ((MapBuilder) this.f60976a).f60965f) {
                int[] iArr = ((MapBuilder) this.f60976a).f60962c;
                int i10 = this.f60977b;
                if (iArr[i10] < 0) {
                    this.f60977b = i10 + 1;
                } else {
                    return;
                }
            }
        }

        public final void f(int i10) {
            this.f60977b = i10;
        }

        public final void h(int i10) {
            this.f60978c = i10;
        }

        public final boolean hasNext() {
            if (this.f60977b < ((MapBuilder) this.f60976a).f60965f) {
                return true;
            }
            return false;
        }

        public final void remove() {
            a();
            if (this.f60978c != -1) {
                this.f60976a.s();
                this.f60976a.V(this.f60978c);
                this.f60978c = -1;
                this.f60979d = ((MapBuilder) this.f60976a).f60967h;
                return;
            }
            throw new IllegalStateException("Call next() before removing element from the iterator.");
        }
    }

    /* compiled from: MapBuilder.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class e<K, V> extends d<K, V> implements Iterator<K>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull MapBuilder<K, V> map) {
            super(map);
            Intrinsics.checkNotNullParameter(map, "map");
        }

        @Override // java.util.Iterator
        public K next() {
            a();
            if (b() < ((MapBuilder) d()).f60965f) {
                int b10 = b();
                f(b10 + 1);
                h(b10);
                K k10 = (K) ((MapBuilder) d()).f60960a[c()];
                e();
                return k10;
            }
            throw new NoSuchElementException();
        }
    }

    /* compiled from: MapBuilder.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class f<K, V> extends d<K, V> implements Iterator<V>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull MapBuilder<K, V> map) {
            super(map);
            Intrinsics.checkNotNullParameter(map, "map");
        }

        @Override // java.util.Iterator
        public V next() {
            a();
            if (b() < ((MapBuilder) d()).f60965f) {
                int b10 = b();
                f(b10 + 1);
                h(b10);
                Object[] objArr = ((MapBuilder) d()).f60961b;
                Intrinsics.checkNotNull(objArr);
                V v10 = (V) objArr[c()];
                e();
                return v10;
            }
            throw new NoSuchElementException();
        }
    }

    static {
        MapBuilder mapBuilder = new MapBuilder(0);
        mapBuilder.f60972m = true;
        f60959o = mapBuilder;
    }

    private MapBuilder(K[] kArr, V[] vArr, int[] iArr, int[] iArr2, int i10, int i11) {
        this.f60960a = kArr;
        this.f60961b = vArr;
        this.f60962c = iArr;
        this.f60963d = iArr2;
        this.f60964e = i10;
        this.f60965f = i11;
        this.f60966g = f60958n.d(G());
    }

    private final void A(int i10) {
        if (Z(i10)) {
            t(true);
        } else {
            z(this.f60965f + i10);
        }
    }

    private final int C(K k10) {
        int K = K(k10);
        int i10 = this.f60964e;
        while (true) {
            int i11 = this.f60963d[K];
            if (i11 == 0) {
                return -1;
            }
            if (i11 > 0) {
                int i12 = i11 - 1;
                if (Intrinsics.areEqual(this.f60960a[i12], k10)) {
                    return i12;
                }
            }
            i10--;
            if (i10 < 0) {
                return -1;
            }
            int i13 = K - 1;
            if (K == 0) {
                K = G() - 1;
            } else {
                K = i13;
            }
        }
    }

    private final int D(V v10) {
        int i10 = this.f60965f;
        while (true) {
            i10--;
            if (i10 < 0) {
                return -1;
            }
            if (this.f60962c[i10] >= 0) {
                V[] vArr = this.f60961b;
                Intrinsics.checkNotNull(vArr);
                if (Intrinsics.areEqual(vArr[i10], v10)) {
                    return i10;
                }
            }
        }
    }

    private final int G() {
        return this.f60963d.length;
    }

    private final int K(K k10) {
        int i10;
        if (k10 != null) {
            i10 = k10.hashCode();
        } else {
            i10 = 0;
        }
        return (i10 * (-1640531527)) >>> this.f60966g;
    }

    private final boolean N(Collection<? extends Map.Entry<? extends K, ? extends V>> collection) {
        boolean z10 = false;
        if (collection.isEmpty()) {
            return false;
        }
        A(collection.size());
        for (Map.Entry<? extends K, ? extends V> entry : collection) {
            if (O(entry)) {
                z10 = true;
            }
        }
        return z10;
    }

    private final boolean O(Map.Entry<? extends K, ? extends V> entry) {
        int n10 = n(entry.getKey());
        V[] q10 = q();
        if (n10 >= 0) {
            q10[n10] = entry.getValue();
            return true;
        }
        int i10 = (-n10) - 1;
        if (!Intrinsics.areEqual(entry.getValue(), q10[i10])) {
            q10[i10] = entry.getValue();
            return true;
        }
        return false;
    }

    private final boolean P(int i10) {
        int K = K(this.f60960a[i10]);
        int i11 = this.f60964e;
        while (true) {
            int[] iArr = this.f60963d;
            if (iArr[K] == 0) {
                iArr[K] = i10 + 1;
                this.f60962c[i10] = K;
                return true;
            }
            i11--;
            if (i11 < 0) {
                return false;
            }
            int i12 = K - 1;
            if (K == 0) {
                K = G() - 1;
            } else {
                K = i12;
            }
        }
    }

    private final void Q() {
        this.f60967h++;
    }

    private final void S(int i10) {
        Q();
        int i11 = 0;
        if (this.f60965f > size()) {
            t(false);
        }
        this.f60963d = new int[i10];
        this.f60966g = f60958n.d(i10);
        while (i11 < this.f60965f) {
            int i12 = i11 + 1;
            if (P(i11)) {
                i11 = i12;
            } else {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V(int i10) {
        ns.b.f(this.f60960a, i10);
        V[] vArr = this.f60961b;
        if (vArr != null) {
            ns.b.f(vArr, i10);
        }
        W(this.f60962c[i10]);
        this.f60962c[i10] = -1;
        this.f60968i = size() - 1;
        Q();
    }

    private final void W(int i10) {
        int j10 = kotlin.ranges.e.j(this.f60964e * 2, G() / 2);
        int i11 = 0;
        int i12 = i10;
        do {
            int i13 = i10 - 1;
            if (i10 == 0) {
                i10 = G() - 1;
            } else {
                i10 = i13;
            }
            i11++;
            if (i11 > this.f60964e) {
                this.f60963d[i12] = 0;
                return;
            }
            int[] iArr = this.f60963d;
            int i14 = iArr[i10];
            if (i14 == 0) {
                iArr[i12] = 0;
                return;
            }
            if (i14 < 0) {
                iArr[i12] = -1;
            } else {
                int i15 = i14 - 1;
                if (((K(this.f60960a[i15]) - i10) & (G() - 1)) >= i11) {
                    this.f60963d[i12] = i14;
                    this.f60962c[i15] = i12;
                }
                j10--;
            }
            i12 = i10;
            i11 = 0;
            j10--;
        } while (j10 >= 0);
        this.f60963d[i12] = -1;
    }

    private final boolean Z(int i10) {
        int E = E();
        int i11 = this.f60965f;
        int i12 = E - i11;
        int size = i11 - size();
        if (i12 < i10 && i12 + size >= i10 && size >= E() / 4) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V[] q() {
        V[] vArr = this.f60961b;
        if (vArr != null) {
            return vArr;
        }
        V[] vArr2 = (V[]) ns.b.d(E());
        this.f60961b = vArr2;
        return vArr2;
    }

    private final void t(boolean z10) {
        int i10;
        V[] vArr = this.f60961b;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i10 = this.f60965f;
            if (i11 >= i10) {
                break;
            }
            int[] iArr = this.f60962c;
            int i13 = iArr[i11];
            if (i13 >= 0) {
                K[] kArr = this.f60960a;
                kArr[i12] = kArr[i11];
                if (vArr != null) {
                    vArr[i12] = vArr[i11];
                }
                if (z10) {
                    iArr[i12] = i13;
                    this.f60963d[i13] = i12 + 1;
                }
                i12++;
            }
            i11++;
        }
        ns.b.g(this.f60960a, i12, i10);
        if (vArr != null) {
            ns.b.g(vArr, i12, this.f60965f);
        }
        this.f60965f = i12;
    }

    private final Object writeReplace() {
        if (this.f60972m) {
            return new SerializedMap(this);
        }
        throw new NotSerializableException("The map cannot be serialized while it is being built.");
    }

    private final boolean y(Map<?, ?> map) {
        if (size() == map.size() && u(map.entrySet())) {
            return true;
        }
        return false;
    }

    private final void z(int i10) {
        V[] vArr;
        if (i10 >= 0) {
            if (i10 > E()) {
                int e10 = kotlin.collections.d.Companion.e(E(), i10);
                this.f60960a = (K[]) ns.b.e(this.f60960a, e10);
                V[] vArr2 = this.f60961b;
                if (vArr2 != null) {
                    vArr = (V[]) ns.b.e(vArr2, e10);
                } else {
                    vArr = null;
                }
                this.f60961b = vArr;
                int[] copyOf = Arrays.copyOf(this.f60962c, e10);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                this.f60962c = copyOf;
                int c10 = f60958n.c(e10);
                if (c10 > G()) {
                    S(c10);
                    return;
                }
                return;
            }
            return;
        }
        throw new OutOfMemoryError();
    }

    @NotNull
    public final b<K, V> B() {
        return new b<>(this);
    }

    public final int E() {
        return this.f60960a.length;
    }

    @NotNull
    public Set<Map.Entry<K, V>> F() {
        kotlin.collections.builders.a<K, V> aVar = this.f60971l;
        if (aVar == null) {
            kotlin.collections.builders.a<K, V> aVar2 = new kotlin.collections.builders.a<>(this);
            this.f60971l = aVar2;
            return aVar2;
        }
        return aVar;
    }

    @NotNull
    public Set<K> H() {
        kotlin.collections.builders.b<K> bVar = this.f60969j;
        if (bVar == null) {
            kotlin.collections.builders.b<K> bVar2 = new kotlin.collections.builders.b<>(this);
            this.f60969j = bVar2;
            return bVar2;
        }
        return bVar;
    }

    public int I() {
        return this.f60968i;
    }

    @NotNull
    public Collection<V> J() {
        kotlin.collections.builders.c<V> cVar = this.f60970k;
        if (cVar == null) {
            kotlin.collections.builders.c<V> cVar2 = new kotlin.collections.builders.c<>(this);
            this.f60970k = cVar2;
            return cVar2;
        }
        return cVar;
    }

    public final boolean L() {
        return this.f60972m;
    }

    @NotNull
    public final e<K, V> M() {
        return new e<>(this);
    }

    public final boolean U(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        s();
        int C = C(entry.getKey());
        if (C < 0) {
            return false;
        }
        V[] vArr = this.f60961b;
        Intrinsics.checkNotNull(vArr);
        if (!Intrinsics.areEqual(vArr[C], entry.getValue())) {
            return false;
        }
        V(C);
        return true;
    }

    public final boolean X(K k10) {
        s();
        int C = C(k10);
        if (C < 0) {
            return false;
        }
        V(C);
        return true;
    }

    public final boolean Y(V v10) {
        s();
        int D = D(v10);
        if (D < 0) {
            return false;
        }
        V(D);
        return true;
    }

    @NotNull
    public final f<K, V> a0() {
        return new f<>(this);
    }

    @Override // java.util.Map
    public void clear() {
        s();
        int i10 = this.f60965f - 1;
        if (i10 >= 0) {
            int i11 = 0;
            while (true) {
                int[] iArr = this.f60962c;
                int i12 = iArr[i11];
                if (i12 >= 0) {
                    this.f60963d[i12] = 0;
                    iArr[i11] = -1;
                }
                if (i11 == i10) {
                    break;
                }
                i11++;
            }
        }
        ns.b.g(this.f60960a, 0, this.f60965f);
        V[] vArr = this.f60961b;
        if (vArr != null) {
            ns.b.g(vArr, 0, this.f60965f);
        }
        this.f60968i = 0;
        this.f60965f = 0;
        Q();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        if (C(obj) >= 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        if (D(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return F();
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        if (obj != this && (!(obj instanceof Map) || !y((Map) obj))) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    @Nullable
    public V get(Object obj) {
        int C = C(obj);
        if (C < 0) {
            return null;
        }
        V[] vArr = this.f60961b;
        Intrinsics.checkNotNull(vArr);
        return vArr[C];
    }

    @Override // java.util.Map
    public int hashCode() {
        b<K, V> B = B();
        int i10 = 0;
        while (B.hasNext()) {
            i10 += B.k();
        }
        return i10;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return H();
    }

    public final int n(K k10) {
        s();
        while (true) {
            int K = K(k10);
            int j10 = kotlin.ranges.e.j(this.f60964e * 2, G() / 2);
            int i10 = 0;
            while (true) {
                int i11 = this.f60963d[K];
                if (i11 <= 0) {
                    if (this.f60965f >= E()) {
                        A(1);
                    } else {
                        int i12 = this.f60965f;
                        int i13 = i12 + 1;
                        this.f60965f = i13;
                        this.f60960a[i12] = k10;
                        this.f60962c[i12] = K;
                        this.f60963d[K] = i13;
                        this.f60968i = size() + 1;
                        Q();
                        if (i10 > this.f60964e) {
                            this.f60964e = i10;
                        }
                        return i12;
                    }
                } else if (Intrinsics.areEqual(this.f60960a[i11 - 1], k10)) {
                    return -i11;
                } else {
                    i10++;
                    if (i10 > j10) {
                        S(G() * 2);
                        break;
                    }
                    int i14 = K - 1;
                    if (K == 0) {
                        K = G() - 1;
                    } else {
                        K = i14;
                    }
                }
            }
        }
    }

    @Override // java.util.Map
    @Nullable
    public V put(K k10, V v10) {
        s();
        int n10 = n(k10);
        V[] q10 = q();
        if (n10 < 0) {
            int i10 = (-n10) - 1;
            V v11 = q10[i10];
            q10[i10] = v10;
            return v11;
        }
        q10[n10] = v10;
        return null;
    }

    @Override // java.util.Map
    public void putAll(@NotNull Map<? extends K, ? extends V> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        s();
        N(from.entrySet());
    }

    @NotNull
    public final Map<K, V> r() {
        s();
        this.f60972m = true;
        if (size() > 0) {
            return this;
        }
        MapBuilder mapBuilder = f60959o;
        Intrinsics.checkNotNull(mapBuilder, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>");
        return mapBuilder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    @Nullable
    public V remove(Object obj) {
        s();
        int C = C(obj);
        if (C < 0) {
            return null;
        }
        V[] vArr = this.f60961b;
        Intrinsics.checkNotNull(vArr);
        V v10 = vArr[C];
        V(C);
        return v10;
    }

    public final void s() {
        if (!this.f60972m) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return I();
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder((size() * 3) + 2);
        sb2.append("{");
        b<K, V> B = B();
        int i10 = 0;
        while (B.hasNext()) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            B.j(sb2);
            i10++;
        }
        sb2.append("}");
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public final boolean u(@NotNull Collection<?> m10) {
        Intrinsics.checkNotNullParameter(m10, "m");
        for (Object obj : m10) {
            if (obj != null) {
                try {
                    if (!v((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean v(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        int C = C(entry.getKey());
        if (C < 0) {
            return false;
        }
        V[] vArr = this.f60961b;
        Intrinsics.checkNotNull(vArr);
        return Intrinsics.areEqual(vArr[C], entry.getValue());
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return J();
    }

    public MapBuilder() {
        this(8);
    }

    public MapBuilder(int i10) {
        this(ns.b.d(i10), null, new int[i10], new int[f60958n.c(i10)], 2, 0);
    }
}
