package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentHashMapContentIterators.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public abstract class TrieNodeBaseIterator<K, V, T> implements Iterator<T>, KMappedMarker {
    public static final int $stable = 8;
    @NotNull
    private Object[] buffer = TrieNode.Companion.getEMPTY$runtime().getBuffer$runtime();
    private int dataSize;
    private int index;

    public final K currentKey() {
        CommonFunctionsKt.m1490assert(hasNextKey());
        return (K) this.buffer[this.index];
    }

    @NotNull
    public final TrieNode<? extends K, ? extends V> currentNode() {
        CommonFunctionsKt.m1490assert(hasNextNode());
        Object obj = this.buffer[this.index];
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator>");
        return (TrieNode) obj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final Object[] getBuffer() {
        return this.buffer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getIndex() {
        return this.index;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return hasNextKey();
    }

    public final boolean hasNextKey() {
        if (this.index < this.dataSize) {
            return true;
        }
        return false;
    }

    public final boolean hasNextNode() {
        boolean z10;
        if (this.index >= this.dataSize) {
            z10 = true;
        } else {
            z10 = false;
        }
        CommonFunctionsKt.m1490assert(z10);
        if (this.index >= this.buffer.length) {
            return false;
        }
        return true;
    }

    public final void moveToNextKey() {
        CommonFunctionsKt.m1490assert(hasNextKey());
        this.index += 2;
    }

    public final void moveToNextNode() {
        CommonFunctionsKt.m1490assert(hasNextNode());
        this.index++;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void reset(@NotNull Object[] objArr, int i10, int i11) {
        this.buffer = objArr;
        this.dataSize = i10;
        this.index = i11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setIndex(int i10) {
        this.index = i10;
    }

    public final void reset(@NotNull Object[] objArr, int i10) {
        reset(objArr, i10, 0);
    }
}
