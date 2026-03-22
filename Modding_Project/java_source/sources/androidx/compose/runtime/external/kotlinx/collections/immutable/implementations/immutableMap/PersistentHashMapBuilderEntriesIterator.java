package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableIterator;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentHashMapBuilderContentIterators.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PersistentHashMapBuilderEntriesIterator<K, V> implements Iterator<Map.Entry<K, V>>, KMutableIterator {
    public static final int $stable = 8;
    @NotNull
    private final PersistentHashMapBuilderBaseIterator<K, V, Map.Entry<K, V>> base;

    public PersistentHashMapBuilderEntriesIterator(@NotNull PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
        for (int i10 = 0; i10 < 8; i10++) {
            trieNodeBaseIteratorArr[i10] = new TrieNodeMutableEntriesIterator(this);
        }
        this.base = new PersistentHashMapBuilderBaseIterator<>(persistentHashMapBuilder, trieNodeBaseIteratorArr);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.base.hasNext();
    }

    @Override // java.util.Iterator
    public void remove() {
        this.base.remove();
    }

    public final void setValue(K k10, V v10) {
        this.base.setValue(k10, v10);
    }

    @Override // java.util.Iterator
    @NotNull
    public Map.Entry<K, V> next() {
        return this.base.next();
    }
}
