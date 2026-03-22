package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.g;
import kotlin.jvm.internal.markers.KMutableCollection;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentHashMapBuilderContentViews.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PersistentHashMapBuilderValues<K, V> extends g<V> implements Collection<V>, KMutableCollection {
    public static final int $stable = 8;
    @NotNull
    private final PersistentHashMapBuilder<K, V> builder;

    public PersistentHashMapBuilderValues(@NotNull PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        this.builder = persistentHashMapBuilder;
    }

    @Override // kotlin.collections.g, java.util.AbstractCollection, java.util.Collection
    public boolean add(V v10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.builder.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.builder.containsValue(obj);
    }

    @Override // kotlin.collections.g
    public int getSize() {
        return this.builder.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<V> iterator() {
        return new PersistentHashMapBuilderValuesIterator(this.builder);
    }
}
