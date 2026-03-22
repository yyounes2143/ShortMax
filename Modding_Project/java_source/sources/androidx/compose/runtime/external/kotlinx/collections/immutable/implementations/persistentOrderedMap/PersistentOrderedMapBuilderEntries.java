package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.AbstractMapBuilderEntries;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentOrderedMapBuilderContentViews.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nPersistentOrderedMapBuilderContentViews.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentOrderedMapBuilderContentViews.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMapBuilderEntries\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"})
/* loaded from: classes.dex */
public final class PersistentOrderedMapBuilderEntries<K, V> extends AbstractMapBuilderEntries<Map.Entry<K, V>, K, V> {
    public static final int $stable = 8;
    @NotNull
    private final PersistentOrderedMapBuilder<K, V> builder;

    public PersistentOrderedMapBuilderEntries(@NotNull PersistentOrderedMapBuilder<K, V> persistentOrderedMapBuilder) {
        this.builder = persistentOrderedMapBuilder;
    }

    @Override // kotlin.collections.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return add((Map.Entry) ((Map.Entry) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.builder.clear();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.AbstractMapBuilderEntries
    public boolean containsEntry(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        V v10 = this.builder.get(entry.getKey());
        if (v10 != null) {
            return Intrinsics.areEqual(v10, entry.getValue());
        }
        if (entry.getValue() == null && this.builder.containsKey(entry.getKey())) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.j
    public int getSize() {
        return this.builder.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    @NotNull
    public Iterator<Map.Entry<K, V>> iterator() {
        return new PersistentOrderedMapBuilderEntriesIterator(this.builder);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.AbstractMapBuilderEntries
    public boolean removeEntry(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        return this.builder.remove(entry.getKey(), entry.getValue());
    }

    public boolean add(@NotNull Map.Entry<K, V> entry) {
        throw new UnsupportedOperationException();
    }
}
