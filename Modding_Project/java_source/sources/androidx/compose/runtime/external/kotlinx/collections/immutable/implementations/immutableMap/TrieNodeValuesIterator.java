package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
/* compiled from: PersistentHashMapContentIterators.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class TrieNodeValuesIterator<K, V> extends TrieNodeBaseIterator<K, V, V> {
    public static final int $stable = 8;

    @Override // java.util.Iterator
    public V next() {
        CommonFunctionsKt.m1490assert(hasNextKey());
        setIndex(getIndex() + 2);
        return (V) getBuffer()[getIndex() - 1];
    }
}
