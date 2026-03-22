package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: Recomposer.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.Recomposer$runRecomposeConcurrentlyAndApplyChanges$2", f = "Recomposer.kt", l = {999, 1019, 1020}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2\n+ 2 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 3 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n+ 4 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 5 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 6 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,1894:1\n34#2,4:1895\n496#3:1899\n497#3,5:1901\n495#3,9:1906\n504#3,2:1918\n507#3:1921\n508#3,7:1931\n33#4:1900\n33#4:1927\n33#4:1938\n34#5,3:1915\n38#5:1920\n424#6,5:1922\n429#6,3:1928\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2\n*L\n990#1:1895,4\n1002#1:1899\n1002#1:1901,5\n1002#1:1906,9\n1002#1:1918,2\n1002#1:1921\n1002#1:1931,7\n1002#1:1900\n1003#1:1927\n1014#1:1938\n1002#1:1915,3\n1002#1:1920\n1002#1:1922,5\n1002#1:1928,3\n*E\n"})
/* loaded from: classes.dex */
final class Recomposer$runRecomposeConcurrentlyAndApplyChanges$2 extends SuspendLambda implements at.n<gt.g0, MonotonicFrameClock, rs.c<? super Unit>, Object> {
    final /* synthetic */ CoroutineContext $recomposeCoroutineContext;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ Recomposer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Recomposer$runRecomposeConcurrentlyAndApplyChanges$2(CoroutineContext coroutineContext, Recomposer recomposer, rs.c<? super Recomposer$runRecomposeConcurrentlyAndApplyChanges$2> cVar) {
        super(3, cVar);
        this.$recomposeCoroutineContext = coroutineContext;
        this.this$0 = recomposer;
    }

    @Override // at.n
    public final Object invoke(gt.g0 g0Var, MonotonicFrameClock monotonicFrameClock, rs.c<? super Unit> cVar) {
        Recomposer$runRecomposeConcurrentlyAndApplyChanges$2 recomposer$runRecomposeConcurrentlyAndApplyChanges$2 = new Recomposer$runRecomposeConcurrentlyAndApplyChanges$2(this.$recomposeCoroutineContext, this.this$0, cVar);
        recomposer$runRecomposeConcurrentlyAndApplyChanges$2.L$0 = g0Var;
        recomposer$runRecomposeConcurrentlyAndApplyChanges$2.L$1 = monotonicFrameClock;
        return recomposer$runRecomposeConcurrentlyAndApplyChanges$2.invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01c2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00c6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00bc -> B:12:0x003a). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r21) {
        /*
            Method dump skipped, instructions count: 454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Recomposer$runRecomposeConcurrentlyAndApplyChanges$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
