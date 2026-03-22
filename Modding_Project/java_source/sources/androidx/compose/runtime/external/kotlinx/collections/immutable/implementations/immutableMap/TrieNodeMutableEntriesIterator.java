package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentHashMapBuilderContentIterators.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class TrieNodeMutableEntriesIterator<K, V> extends TrieNodeBaseIterator<K, V, Map.Entry<K, V>> {
    public static final int $stable = 8;
    @NotNull
    private final PersistentHashMapBuilderEntriesIterator<K, V> parentIterator;

    public TrieNodeMutableEntriesIterator(@NotNull PersistentHashMapBuilderEntriesIterator<K, V> persistentHashMapBuilderEntriesIterator) {
        this.parentIterator = persistentHashMapBuilderEntriesIterator;
    }

    @Override // java.util.Iterator
    @NotNull
    public Map.Entry<K, V> next() {
        CommonFunctionsKt.m1490assert(hasNextKey());
        setIndex(getIndex() + 2);
        return new MutableMapEntry(this.parentIterator, getBuffer()[getIndex() - 2], getBuffer()[getIndex() - 1]);
    }
}
