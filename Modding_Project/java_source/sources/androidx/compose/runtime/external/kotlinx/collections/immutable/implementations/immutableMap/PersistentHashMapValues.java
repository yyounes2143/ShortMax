package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableCollection;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.b;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentHashMapContentViews.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PersistentHashMapValues<K, V> extends b<V> implements ImmutableCollection<V> {
    public static final int $stable = 8;
    @NotNull
    private final PersistentHashMap<K, V> map;

    public PersistentHashMapValues(@NotNull PersistentHashMap<K, V> persistentHashMap) {
        this.map = persistentHashMap;
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
        return new PersistentHashMapValuesIterator(this.map.getNode$runtime());
    }
}
