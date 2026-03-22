package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TrieNode.kt */
@Metadata
/* loaded from: classes.dex */
public final class TrieNodeKt {
    public static final int ENTRY_SIZE = 2;
    public static final int LOG_MAX_BRANCHING_FACTOR = 5;
    public static final int MAX_BRANCHING_FACTOR = 32;
    public static final int MAX_BRANCHING_FACTOR_MINUS_ONE = 31;
    public static final int MAX_SHIFT = 30;

    public static final /* synthetic */ Object[] access$insertEntryAtIndex(Object[] objArr, int i10, Object obj, Object obj2) {
        return insertEntryAtIndex(objArr, i10, obj, obj2);
    }

    public static final /* synthetic */ Object[] access$removeEntryAtIndex(Object[] objArr, int i10) {
        return removeEntryAtIndex(objArr, i10);
    }

    public static final /* synthetic */ Object[] access$removeNodeAtIndex(Object[] objArr, int i10) {
        return removeNodeAtIndex(objArr, i10);
    }

    public static final /* synthetic */ Object[] access$replaceEntryWithNode(Object[] objArr, int i10, int i11, TrieNode trieNode) {
        return replaceEntryWithNode(objArr, i10, i11, trieNode);
    }

    public static final /* synthetic */ Object[] access$replaceNodeWithEntry(Object[] objArr, int i10, int i11, Object obj, Object obj2) {
        return replaceNodeWithEntry(objArr, i10, i11, obj, obj2);
    }

    public static final int indexSegment(int i10, int i11) {
        return (i10 >> i11) & 31;
    }

    public static final <K, V> Object[] insertEntryAtIndex(Object[] objArr, int i10, K k10, V v10) {
        Object[] objArr2 = new Object[objArr.length + 2];
        n.u(objArr, objArr2, 0, 0, i10, 6, null);
        n.n(objArr, objArr2, i10 + 2, i10, objArr.length);
        objArr2[i10] = k10;
        objArr2[i10 + 1] = v10;
        return objArr2;
    }

    public static final Object[] removeEntryAtIndex(Object[] objArr, int i10) {
        Object[] objArr2 = new Object[objArr.length - 2];
        n.u(objArr, objArr2, 0, 0, i10, 6, null);
        n.n(objArr, objArr2, i10, i10 + 2, objArr.length);
        return objArr2;
    }

    public static final Object[] removeNodeAtIndex(Object[] objArr, int i10) {
        Object[] objArr2 = new Object[objArr.length - 1];
        n.u(objArr, objArr2, 0, 0, i10, 6, null);
        n.n(objArr, objArr2, i10, i10 + 1, objArr.length);
        return objArr2;
    }

    public static final Object[] replaceEntryWithNode(Object[] objArr, int i10, int i11, TrieNode<?, ?> trieNode) {
        Object[] objArr2 = new Object[objArr.length - 1];
        n.u(objArr, objArr2, 0, 0, i10, 6, null);
        n.n(objArr, objArr2, i10, i10 + 2, i11);
        objArr2[i11 - 2] = trieNode;
        n.n(objArr, objArr2, i11 - 1, i11, objArr.length);
        return objArr2;
    }

    public static final <K, V> Object[] replaceNodeWithEntry(Object[] objArr, int i10, int i11, K k10, V v10) {
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length + 1);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        n.n(copyOf, copyOf, i10 + 2, i10 + 1, objArr.length);
        n.n(copyOf, copyOf, i11 + 2, i11, i10);
        copyOf[i11] = k10;
        copyOf[i11 + 1] = v10;
        return copyOf;
    }
}
