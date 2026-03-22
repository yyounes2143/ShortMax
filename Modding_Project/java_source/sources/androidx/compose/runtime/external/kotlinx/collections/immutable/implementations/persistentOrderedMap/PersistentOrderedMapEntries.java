package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.k;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentOrderedMapContentViews.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nPersistentOrderedMapContentViews.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentOrderedMapContentViews.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMapEntries\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"})
/* loaded from: classes.dex */
public final class PersistentOrderedMapEntries<K, V> extends k<Map.Entry<? extends K, ? extends V>> implements ImmutableSet<Map.Entry<? extends K, ? extends V>> {
    public static final int $stable = 8;
    @NotNull
    private final PersistentOrderedMap<K, V> map;

    public PersistentOrderedMapEntries(@NotNull PersistentOrderedMap<K, V> persistentOrderedMap) {
        this.map = persistentOrderedMap;
    }

    @Override // kotlin.collections.b, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return contains((Map.Entry) ((Map.Entry) obj));
        }
        return false;
    }

    @Override // kotlin.collections.b
    public int getSize() {
        return this.map.size();
    }

    @Override // kotlin.collections.k, kotlin.collections.b, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<Map.Entry<K, V>> iterator() {
        return new PersistentOrderedMapEntriesIterator(this.map);
    }

    public boolean contains(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        if (entry == null) {
            return false;
        }
        V v10 = this.map.get(entry.getKey());
        return v10 != null ? Intrinsics.areEqual(v10, entry.getValue()) : entry.getValue() == null && this.map.containsKey(entry.getKey());
    }
}
