package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAbstractMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractMap.kt\nkotlin/collections/AbstractMap\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n1755#2,3:154\n1734#2,3:157\n295#2,2:160\n*S KotlinDebug\n*F\n+ 1 AbstractMap.kt\nkotlin/collections/AbstractMap\n*L\n28#1:154,3\n60#1:157,3\n141#1:160,2\n*E\n"})
/* loaded from: classes8.dex */
public abstract class f<K, V> implements Map<K, V>, KMappedMarker {
    @NotNull
    public static final a Companion = new a(null);
    @Nullable
    private volatile Set<? extends K> _keys;
    @Nullable
    private volatile Collection<? extends V> _values;

    /* compiled from: AbstractMap.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAbstractMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractMap.kt\nkotlin/collections/AbstractMap$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,153:1\n1#2:154\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: AbstractMap.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b extends k<K> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f<K, V> f61000a;

        /* compiled from: AbstractMap.kt */
        @Metadata
        /* loaded from: classes8.dex */
        public static final class a implements Iterator<K>, KMappedMarker {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Iterator<Map.Entry<K, V>> f61001a;

            /* JADX WARN: Multi-variable type inference failed */
            a(Iterator<? extends Map.Entry<? extends K, ? extends V>> it) {
                this.f61001a = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f61001a.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                return this.f61001a.next().getKey();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        b(f<K, ? extends V> fVar) {
            this.f61000a = fVar;
        }

        @Override // kotlin.collections.b, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.f61000a.containsKey(obj);
        }

        @Override // kotlin.collections.b
        public int getSize() {
            return this.f61000a.size();
        }

        @Override // kotlin.collections.k, kotlin.collections.b, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<K> iterator() {
            return new a(this.f61000a.entrySet().iterator());
        }
    }

    /* compiled from: AbstractMap.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class c extends kotlin.collections.b<V> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f<K, V> f61002a;

        /* compiled from: AbstractMap.kt */
        @Metadata
        /* loaded from: classes8.dex */
        public static final class a implements Iterator<V>, KMappedMarker {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Iterator<Map.Entry<K, V>> f61003a;

            /* JADX WARN: Multi-variable type inference failed */
            a(Iterator<? extends Map.Entry<? extends K, ? extends V>> it) {
                this.f61003a = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f61003a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                return this.f61003a.next().getValue();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        c(f<K, ? extends V> fVar) {
            this.f61002a = fVar;
        }

        @Override // kotlin.collections.b, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.f61002a.containsValue(obj);
        }

        @Override // kotlin.collections.b
        public int getSize() {
            return this.f61002a.size();
        }

        @Override // kotlin.collections.b, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<V> iterator() {
            return new a(this.f61002a.entrySet().iterator());
        }
    }

    private final Map.Entry<K, V> implFindEntry(K k10) {
        Object obj;
        Iterator<T> it = entrySet().iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((Map.Entry) obj).getKey(), k10)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        return (Map.Entry) obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence toString$lambda$2(f fVar, Map.Entry it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return fVar.toString(it);
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean containsEntry$kotlin_stdlib(@Nullable Map.Entry<?, ?> entry) {
        if (entry == null) {
            return false;
        }
        Object key = entry.getKey();
        Object value = entry.getValue();
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>");
        V v10 = get(key);
        if (!Intrinsics.areEqual(value, v10)) {
            return false;
        }
        if (v10 == null) {
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.containsKey, *>");
            if (!containsKey(key)) {
                return false;
            }
            return true;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        if (implFindEntry(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        Set<Map.Entry<K, V>> entrySet = entrySet();
        if ((entrySet instanceof Collection) && entrySet.isEmpty()) {
            return false;
        }
        Iterator<T> it = entrySet.iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual(((Map.Entry) it.next()).getValue(), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        Set<Map.Entry<K, V>> entrySet = map.entrySet();
        if ((entrySet instanceof Collection) && entrySet.isEmpty()) {
            return true;
        }
        Iterator<T> it = entrySet.iterator();
        while (it.hasNext()) {
            if (!containsEntry$kotlin_stdlib((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    @Nullable
    public V get(Object obj) {
        Map.Entry<K, V> implFindEntry = implFindEntry(obj);
        if (implFindEntry != null) {
            return implFindEntry.getValue();
        }
        return null;
    }

    public abstract Set getEntries();

    @NotNull
    public Set<K> getKeys() {
        if (this._keys == null) {
            this._keys = new b(this);
        }
        Set set = (Set<? extends K>) this._keys;
        Intrinsics.checkNotNull(set);
        return set;
    }

    public int getSize() {
        return entrySet().size();
    }

    @NotNull
    public Collection<V> getValues() {
        if (this._values == null) {
            this._values = new c(this);
        }
        Collection collection = (Collection<? extends V>) this._values;
        Intrinsics.checkNotNull(collection);
        return collection;
    }

    @Override // java.util.Map
    public int hashCode() {
        return entrySet().hashCode();
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
        return getKeys();
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public V put(K k10, V v10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public V remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @NotNull
    public String toString() {
        return CollectionsKt.A0(entrySet(), ", ", "{", "}", 0, null, new Function1() { // from class: kotlin.collections.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CharSequence string$lambda$2;
                string$lambda$2 = f.toString$lambda$2(f.this, (Map.Entry) obj);
                return string$lambda$2;
            }
        }, 24, null);
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return getValues();
    }

    private final String toString(Map.Entry<? extends K, ? extends V> entry) {
        return toString(entry.getKey()) + '=' + toString(entry.getValue());
    }

    private final String toString(Object obj) {
        return obj == this ? "(this Map)" : String.valueOf(obj);
    }
}
