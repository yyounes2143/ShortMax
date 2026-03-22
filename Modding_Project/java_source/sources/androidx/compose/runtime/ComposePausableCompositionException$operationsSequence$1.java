package androidx.compose.runtime;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PausableComposition.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.ComposePausableCompositionException$operationsSequence$1", f = "PausableComposition.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SAMPLE_RATE}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nPausableComposition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PausableComposition.kt\nandroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1\n+ 2 IntList.kt\nandroidx/collection/IntList\n*L\n1#1,567:1\n65#2:568\n*S KotlinDebug\n*F\n+ 1 PausableComposition.kt\nandroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1\n*L\n502#1:568\n*E\n"})
/* loaded from: classes.dex */
public final class ComposePausableCompositionException$operationsSequence$1 extends RestrictedSuspendLambda implements Function2<kotlin.sequences.i<? super String>, rs.c<? super Unit>, Object> {
    int I$0;
    int I$1;
    int I$2;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ComposePausableCompositionException this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposePausableCompositionException$operationsSequence$1(ComposePausableCompositionException composePausableCompositionException, rs.c<? super ComposePausableCompositionException$operationsSequence$1> cVar) {
        super(2, cVar);
        this.this$0 = composePausableCompositionException;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        ComposePausableCompositionException$operationsSequence$1 composePausableCompositionException$operationsSequence$1 = new ComposePausableCompositionException$operationsSequence$1(this.this$0, cVar);
        composePausableCompositionException$operationsSequence$1.L$0 = obj;
        return composePausableCompositionException$operationsSequence$1;
    }

    /* JADX WARN: Incorrect condition in loop: B:10:0x0041 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ComposePausableCompositionException$operationsSequence$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlin.sequences.i<? super String> iVar, rs.c<? super Unit> cVar) {
        return ((ComposePausableCompositionException$operationsSequence$1) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
