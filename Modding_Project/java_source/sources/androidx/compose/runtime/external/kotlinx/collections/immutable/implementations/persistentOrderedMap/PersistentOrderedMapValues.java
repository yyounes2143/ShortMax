package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableCollection;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.b;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentOrderedMapContentViews.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PersistentOrderedMapValues<K, V> extends b<V> implements ImmutableCollection<V> {
    public static final int $stable = 8;
    @NotNull
    private final PersistentOrderedMap<K, V> map;

    public PersistentOrderedMapValues(@NotNull PersistentOrderedMap<K, V> persistentOrderedMap) {
        this.map = persistentOrderedMap;
    }

    @Override // kotlin.collections.b, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.map.containsValue(obj);
    }

    @Override // kotlin.collections.b
    public int getSize() {
        return this.map.size();
    }

    @Override // kotlin.collections.b, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<V> iterator() {
        return new PersistentOrderedMapValuesIterator(this.map);
    }
}
