package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Ripple.kt */
@Metadata
@d(c = "androidx.compose.material.ripple.StateLayer$handleInteraction$2", f = "Ripple.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BUFFER_THRESHOLD_CONTROL}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class StateLayer$handleInteraction$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ AnimationSpec<Float> $outgoingAnimationSpec;
    int label;
    final /* synthetic */ StateLayer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateLayer$handleInteraction$2(StateLayer stateLayer, AnimationSpec<Float> animationSpec, c<? super StateLayer$handleInteraction$2> cVar) {
        super(2, cVar);
        this.this$0 = stateLayer;
        this.$outgoingAnimationSpec = animationSpec;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new StateLayer$handleInteraction$2(this.this$0, this.$outgoingAnimationSpec, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((StateLayer$handleInteraction$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Animatable animatable;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            animatable = this.this$0.animatedAlpha;
            Float c10 = kotlin.coroutines.jvm.internal.a.c(0.0f);
            AnimationSpec<Float> animationSpec = this.$outgoingAnimationSpec;
            this.label = 1;
            if (Animatable.animateTo$default(animatable, c10, animationSpec, null, null, this, 12, null) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
