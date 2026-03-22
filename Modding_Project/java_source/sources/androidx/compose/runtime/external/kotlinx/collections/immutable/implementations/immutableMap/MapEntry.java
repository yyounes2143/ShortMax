package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PersistentHashMapContentIterators.kt */
@StabilityInferred(parameters = 3)
@Metadata
@SourceDebugExtension({"SMAP\nPersistentHashMapContentIterators.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentHashMapContentIterators.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/MapEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,184:1\n1#2:185\n*E\n"})
/* loaded from: classes.dex */
public class MapEntry<K, V> implements Map.Entry<K, V>, KMappedMarker {
    public static final int $stable = 0;
    private final K key;
    private final V value;

    public MapEntry(K k10, V v10) {
        this.key = k10;
        this.value = v10;
    }

    @Override // java.util.Map.Entry
    public boolean equals(@Nullable Object obj) {
        Map.Entry entry;
        if (obj instanceof Map.Entry) {
            entry = (Map.Entry) obj;
        } else {
            entry = null;
        }
        if (entry == null || !Intrinsics.areEqual(entry.getKey(), getKey()) || !Intrinsics.areEqual(entry.getValue(), getValue())) {
            return false;
        }
        return true;
    }

    @Override // java.util.Map.Entry
    public K getKey() {
        return this.key;
    }

    @Override // java.util.Map.Entry
    public V getValue() {
        return this.value;
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
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
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
