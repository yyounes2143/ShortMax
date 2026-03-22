package androidx.collection;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableMap;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ScatterMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableMapWrapper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1787:1\n1#2:1788\n215#3,2:1789\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableMapWrapper\n*L\n1782#1:1789,2\n*E\n"})
/* loaded from: classes.dex */
final class MutableMapWrapper<K, V> extends MapWrapper<K, V> implements Map<K, V>, KMutableMap {
    @Nullable
    private MutableEntries<K, V> _entries;
    @Nullable
    private MutableKeys<K, V> _keys;
    @Nullable
    private MutableValues<K, V> _values;
    @NotNull
    private final MutableScatterMap<K, V> parent;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableMapWrapper(@NotNull MutableScatterMap<K, V> parent) {
        super(parent);
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.parent = parent;
    }

    @Override // androidx.collection.MapWrapper, java.util.Map
    public void clear() {
        this.parent.clear();
    }

    @Override // androidx.collection.MapWrapper
    @NotNull
    public Set<Map.Entry<K, V>> getEntries() {
        MutableEntries<K, V> mutableEntries = this._entries;
        if (mutableEntries == null) {
            MutableEntries<K, V> mutableEntries2 = new MutableEntries<>(this.parent);
            this._entries = mutableEntries2;
            return mutableEntries2;
        }
        return mutableEntries;
    }

    @Override // androidx.collection.MapWrapper
    @NotNull
    public Set<K> getKeys() {
        MutableKeys<K, V> mutableKeys = this._keys;
        if (mutableKeys == null) {
            MutableKeys<K, V> mutableKeys2 = new MutableKeys<>(this.parent);
            this._keys = mutableKeys2;
            return mutableKeys2;
        }
        return mutableKeys;
    }

    @Override // androidx.collection.MapWrapper
    @NotNull
    public Collection<V> getValues() {
        MutableValues<K, V> mutableValues = this._values;
        if (mutableValues == null) {
            MutableValues<K, V> mutableValues2 = new MutableValues<>(this.parent);
            this._values = mutableValues2;
            return mutableValues2;
        }
        return mutableValues;
    }

    @Override // androidx.collection.MapWrapper, java.util.Map
    @Nullable
    public V put(K k10, V v10) {
        return this.parent.put(k10, v10);
    }

    @Override // androidx.collection.MapWrapper, java.util.Map
    public void putAll(@NotNull Map<? extends K, ? extends V> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        for (Map.Entry<? extends K, ? extends V> entry : from.entrySet()) {
            this.parent.set(entry.getKey(), entry.getValue());
        }
    }

    @Override // androidx.collection.MapWrapper, java.util.Map
    @Nullable
    public V remove(Object obj) {
        return this.parent.remove(obj);
    }
}
