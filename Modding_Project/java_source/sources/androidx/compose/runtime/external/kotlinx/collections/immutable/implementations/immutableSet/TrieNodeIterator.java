package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentHashSetIterator.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class TrieNodeIterator<E> {
    public static final int $stable = 8;
    @NotNull
    private Object[] buffer = TrieNode.Companion.getEMPTY$runtime().getBuffer();
    private int index;

    public static /* synthetic */ void reset$default(TrieNodeIterator trieNodeIterator, Object[] objArr, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        trieNodeIterator.reset(objArr, i10);
    }

    public final E currentElement() {
        CommonFunctionsKt.m1490assert(hasNextElement());
        return (E) this.buffer[this.index];
    }

    @NotNull
    public final TrieNode<? extends E> currentNode() {
        CommonFunctionsKt.m1490assert(hasNextNode());
        Object obj = this.buffer[this.index];
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNodeIterator>");
        return (TrieNode) obj;
    }

    public final boolean hasNextCell() {
        if (this.index < this.buffer.length) {
            return true;
        }
        return false;
    }

    public final boolean hasNextElement() {
        if (hasNextCell() && !(this.buffer[this.index] instanceof TrieNode)) {
            return true;
        }
        return false;
    }

    public final boolean hasNextNode() {
        if (hasNextCell() && (this.buffer[this.index] instanceof TrieNode)) {
            return true;
        }
        return false;
    }

    public final void moveToNextCell() {
        CommonFunctionsKt.m1490assert(hasNextCell());
        this.index++;
    }

    public final E nextElement() {
        CommonFunctionsKt.m1490assert(hasNextElement());
        Object[] objArr = this.buffer;
        int i10 = this.index;
        this.index = i10 + 1;
        return (E) objArr[i10];
    }

    public final void reset(@NotNull Object[] objArr, int i10) {
        this.buffer = objArr;
        this.index = i10;
    }
}
