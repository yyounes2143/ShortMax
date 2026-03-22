package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
/* compiled from: PersistentHashMapContentIterators.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class TrieNodeKeysIterator<K, V> extends TrieNodeBaseIterator<K, V, K> {
    public static final int $stable = 8;

    @Override // java.util.Iterator
    public K next() {
        CommonFunctionsKt.m1490assert(hasNextKey());
        setIndex(getIndex() + 2);
        return (K) getBuffer()[getIndex() - 2];
    }
}
