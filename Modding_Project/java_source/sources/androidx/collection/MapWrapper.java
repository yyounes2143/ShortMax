package androidx.collection;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ScatterMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MapWrapper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1787:1\n1#2:1788\n*E\n"})
/* loaded from: classes.dex */
public class MapWrapper<K, V> implements Map<K, V>, KMappedMarker {
    @Nullable
    private Entries<K, V> _entries;
    @Nullable
    private Keys<K, V> _keys;
    @Nullable
    private Values<K, V> _values;
    @NotNull
    private final ScatterMap<K, V> parent;

    public MapWrapper(@NotNull ScatterMap<K, V> parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.parent = parent;
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V compute(K k10, BiFunction<? super K, ? super V, ? extends V> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V computeIfAbsent(K k10, Function<? super K, ? extends V> function) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V computeIfPresent(K k10, BiFunction<? super K, ? super V, ? extends V> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.parent.containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.parent.containsValue(obj);
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return Intrinsics.areEqual(this.parent, ((MapWrapper) obj).parent);
        }
        return false;
    }

    @Override // java.util.Map
    @Nullable
    public V get(Object obj) {
        return this.parent.get(obj);
    }

    @NotNull
    public Set<Map.Entry<K, V>> getEntries() {
        Entries<K, V> entries = this._entries;
        if (entries == null) {
            Entries<K, V> entries2 = new Entries<>(this.parent);
            this._entries = entries2;
            return entries2;
        }
        return entries;
    }

    @NotNull
    public Set<K> getKeys() {
        Keys<K, V> keys = this._keys;
        if (keys == null) {
            Keys<K, V> keys2 = new Keys<>(this.parent);
            this._keys = keys2;
            return keys2;
        }
        return keys;
    }

    public int getSize() {
        return this.parent._size;
    }

    @NotNull
    public Collection<V> getValues() {
        Values<K, V> values = this._values;
        if (values == null) {
            Values<K, V> values2 = new Values<>(this.parent);
            this._values = values2;
            return values2;
        }
        return values;
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.parent.hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.parent.isEmpty();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return getKeys();
    }

    @Override // java.util.Map
    public V merge(K k10, V v10, BiFunction<? super V, ? super V, ? extends V> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V put(K k10, V v10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V putIfAbsent(K k10, V v10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V replace(K k10, V v10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void replaceAll(BiFunction<? super K, ? super V, ? extends V> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @NotNull
    public String toString() {
        return this.parent.toString();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return getValues();
    }

    @Override // java.util.Map
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean replace(K k10, V v10, V v11) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
