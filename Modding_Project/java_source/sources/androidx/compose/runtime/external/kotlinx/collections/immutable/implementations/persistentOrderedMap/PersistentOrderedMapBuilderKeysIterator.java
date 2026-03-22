package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableIterator;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentOrderedMapBuilderContentIterators.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PersistentOrderedMapBuilderKeysIterator<K, V> implements Iterator<K>, KMutableIterator {
    public static final int $stable = 8;
    @NotNull
    private final PersistentOrderedMapBuilderLinksIterator<K, V> internal;

    public PersistentOrderedMapBuilderKeysIterator(@NotNull PersistentOrderedMapBuilder<K, V> persistentOrderedMapBuilder) {
        this.internal = new PersistentOrderedMapBuilderLinksIterator<>(persistentOrderedMapBuilder.getFirstKey$runtime(), persistentOrderedMapBuilder);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.internal.hasNext();
    }

    @Override // java.util.Iterator
    public K next() {
        this.internal.next();
        return (K) this.internal.getLastIteratedKey$runtime();
    }

    @Override // java.util.Iterator
    public void remove() {
        this.internal.remove();
    }
}
