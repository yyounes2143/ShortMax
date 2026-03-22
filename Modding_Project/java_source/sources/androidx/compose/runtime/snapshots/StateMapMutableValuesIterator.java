package androidx.compose.runtime.snapshots;

import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableIterator;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotStateMap.kt */
@Metadata
/* loaded from: classes.dex */
final class StateMapMutableValuesIterator<K, V> extends StateMapMutableIterator<K, V> implements Iterator<V>, KMutableIterator {
    public StateMapMutableValuesIterator(@NotNull SnapshotStateMap<K, V> snapshotStateMap, @NotNull Iterator<? extends Map.Entry<? extends K, ? extends V>> it) {
        super(snapshotStateMap, it);
    }

    @Override // java.util.Iterator
    public V next() {
        Map.Entry<K, V> next = getNext();
        if (next != null) {
            advance();
            return next.getValue();
        }
        throw new IllegalStateException();
    }
}
