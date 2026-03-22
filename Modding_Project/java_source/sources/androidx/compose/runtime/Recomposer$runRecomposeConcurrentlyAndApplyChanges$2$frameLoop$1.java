package androidx.compose.runtime;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: Recomposer.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1", f = "Recomposer.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_UPGRADE_TIME_THRESHOLD}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ ProduceFrameSignal $frameSignal;
    final /* synthetic */ MonotonicFrameClock $parentFrameClock;
    int label;
    final /* synthetic */ Recomposer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1(Recomposer recomposer, MonotonicFrameClock monotonicFrameClock, ProduceFrameSignal produceFrameSignal, rs.c<? super Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1> cVar) {
        super(2, cVar);
        this.this$0 = recomposer;
        this.$parentFrameClock = monotonicFrameClock;
        this.$frameSignal = produceFrameSignal;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1(this.this$0, this.$parentFrameClock, this.$frameSignal, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object runFrameLoop;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            Recomposer recomposer = this.this$0;
            MonotonicFrameClock monotonicFrameClock = this.$parentFrameClock;
            ProduceFrameSignal produceFrameSignal = this.$frameSignal;
            this.label = 1;
            runFrameLoop = recomposer.runFrameLoop(monotonicFrameClock, produceFrameSignal, this);
            if (runFrameLoop == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
