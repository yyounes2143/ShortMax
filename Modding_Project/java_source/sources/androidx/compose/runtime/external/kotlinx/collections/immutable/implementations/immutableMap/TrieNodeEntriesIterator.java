package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentHashMapContentIterators.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class TrieNodeEntriesIterator<K, V> extends TrieNodeBaseIterator<K, V, Map.Entry<? extends K, ? extends V>> {
    public static final int $stable = 8;

    @Override // java.util.Iterator
    @NotNull
    public Map.Entry<K, V> next() {
        CommonFunctionsKt.m1490assert(hasNextKey());
        setIndex(getIndex() + 2);
        return new MapEntry(getBuffer()[getIndex() - 2], getBuffer()[getIndex() - 1]);
    }
}
