package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.jvm.internal.markers.KMutableSet;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentHashMapBuilderContentViews.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PersistentHashMapBuilderKeys<K, V> extends j<K> implements Set<K>, KMutableSet {
    public static final int $stable = 8;
    @NotNull
    private final PersistentHashMapBuilder<K, V> builder;

    public PersistentHashMapBuilderKeys(@NotNull PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        this.builder = persistentHashMapBuilder;
    }

    @Override // kotlin.collections.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(K k10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.builder.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.builder.containsKey(obj);
    }

    @Override // kotlin.collections.j
    public int getSize() {
        return this.builder.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    @NotNull
    public Iterator<K> iterator() {
        return new PersistentHashMapBuilderKeysIterator(this.builder);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        if (this.builder.containsKey(obj)) {
            this.builder.remove(obj);
            return true;
        }
        return false;
    }
}
