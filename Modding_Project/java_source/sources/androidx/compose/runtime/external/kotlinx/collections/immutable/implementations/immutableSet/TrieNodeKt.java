package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.functions.Function1;
/* compiled from: TrieNode.kt */
@Metadata
/* loaded from: classes.dex */
public final class TrieNodeKt {
    public static final int LOG_MAX_BRANCHING_FACTOR = 5;
    public static final int MAX_BRANCHING_FACTOR = 32;
    public static final int MAX_BRANCHING_FACTOR_MINUS_ONE = 31;
    public static final int MAX_SHIFT = 30;

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E> Object[] addElementAtIndex(Object[] objArr, int i10, E e10) {
        Object[] objArr2 = new Object[objArr.length + 1];
        n.u(objArr, objArr2, 0, 0, i10, 6, null);
        n.n(objArr, objArr2, i10 + 1, i10, objArr.length);
        objArr2[i10] = e10;
        return objArr2;
    }

    private static final int filterTo(Object[] objArr, Object[] objArr2, int i10, Function1<Object, Boolean> function1) {
        boolean z10;
        int i11 = 0;
        for (int i12 = 0; i12 < objArr.length; i12++) {
            boolean z11 = true;
            if (i11 <= i12) {
                z10 = true;
            } else {
                z10 = false;
            }
            CommonFunctionsKt.m1490assert(z10);
            if (function1.invoke(objArr[i12]).booleanValue()) {
                objArr2[i10 + i11] = objArr[i12];
                i11++;
                if (i10 + i11 > objArr2.length) {
                    z11 = false;
                }
                CommonFunctionsKt.m1490assert(z11);
            }
        }
        return i11;
    }

    static /* synthetic */ int filterTo$default(Object[] objArr, Object[] objArr2, int i10, Function1 function1, int i11, Object obj) {
        boolean z10;
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            function1 = new Function1<Object, Boolean>() { // from class: androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNodeKt$filterTo$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(Object obj2) {
                    return Boolean.valueOf(obj2 != TrieNode.Companion.getEMPTY$runtime());
                }
            };
        }
        int i12 = 0;
        for (int i13 = 0; i13 < objArr.length; i13++) {
            boolean z11 = true;
            if (i12 <= i13) {
                z10 = true;
            } else {
                z10 = false;
            }
            CommonFunctionsKt.m1490assert(z10);
            if (((Boolean) function1.invoke(objArr[i13])).booleanValue()) {
                objArr2[i10 + i12] = objArr[i13];
                i12++;
                if (i10 + i12 > objArr2.length) {
                    z11 = false;
                }
                CommonFunctionsKt.m1490assert(z11);
            }
        }
        return i12;
    }

    public static final int indexSegment(int i10, int i11) {
        return (i10 >> i11) & 31;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object[] removeCellAtIndex(Object[] objArr, int i10) {
        Object[] objArr2 = new Object[objArr.length - 1];
        n.u(objArr, objArr2, 0, 0, i10, 6, null);
        n.n(objArr, objArr2, i10, i10 + 1, objArr.length);
        return objArr2;
    }
}
