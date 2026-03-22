package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.k;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentOrderedMapContentViews.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PersistentOrderedMapKeys<K, V> extends k<K> implements ImmutableSet<K> {
    public static final int $stable = 8;
    @NotNull
    private final PersistentOrderedMap<K, V> map;

    public PersistentOrderedMapKeys(@NotNull PersistentOrderedMap<K, V> persistentOrderedMap) {
        this.map = persistentOrderedMap;
    }

    @Override // kotlin.collections.b, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // kotlin.collections.b
    public int getSize() {
        return this.map.size();
    }

    @Override // kotlin.collections.k, kotlin.collections.b, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<K> iterator() {
        return new PersistentOrderedMapKeysIterator(this.map);
    }
}
