package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.k;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentHashMapContentViews.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nPersistentHashMapContentViews.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentHashMapContentViews.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapEntries\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,52:1\n1#2:53\n*E\n"})
/* loaded from: classes.dex */
public final class PersistentHashMapEntries<K, V> extends k<Map.Entry<? extends K, ? extends V>> implements ImmutableSet<Map.Entry<? extends K, ? extends V>> {
    public static final int $stable = 8;
    @NotNull
    private final PersistentHashMap<K, V> map;

    public PersistentHashMapEntries(@NotNull PersistentHashMap<K, V> persistentHashMap) {
        this.map = persistentHashMap;
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
        return new PersistentHashMapEntriesIterator(this.map.getNode$runtime());
    }

    public boolean contains(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        if (entry == null) {
            return false;
        }
        V v10 = this.map.get(entry.getKey());
        return v10 != null ? Intrinsics.areEqual(v10, entry.getValue()) : entry.getValue() == null && this.map.containsKey(entry.getKey());
    }
}
