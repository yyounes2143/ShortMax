package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentOrderedMapContentIterators.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PersistentOrderedMapEntriesIterator<K, V> implements Iterator<Map.Entry<? extends K, ? extends V>>, KMappedMarker {
    public static final int $stable = 8;
    @NotNull
    private final PersistentOrderedMapLinksIterator<K, V> internal;

    public PersistentOrderedMapEntriesIterator(@NotNull PersistentOrderedMap<K, V> persistentOrderedMap) {
        this.internal = new PersistentOrderedMapLinksIterator<>(persistentOrderedMap.getFirstKey$runtime(), persistentOrderedMap.getHashMap$runtime());
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.internal.hasNext();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    @NotNull
    public Map.Entry<K, V> next() {
        return new MapEntry(this.internal.getNextKey$runtime(), this.internal.next().getValue());
    }
}
