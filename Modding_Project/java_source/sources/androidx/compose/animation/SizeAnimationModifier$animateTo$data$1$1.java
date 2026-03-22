package androidx.compose.animation;

import androidx.compose.animation.SizeAnimationModifier;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationEndReason;
import androidx.compose.animation.core.AnimationResult;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.ui.unit.IntSize;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AnimationModifier.kt */
@Metadata
@d(c = "androidx.compose.animation.SizeAnimationModifier$animateTo$data$1$1", f = "AnimationModifier.kt", l = {121}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class SizeAnimationModifier$animateTo$data$1$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ long $targetSize;
    final /* synthetic */ SizeAnimationModifier.AnimData $this_apply;
    int label;
    final /* synthetic */ SizeAnimationModifier this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SizeAnimationModifier$animateTo$data$1$1(SizeAnimationModifier.AnimData animData, long j10, SizeAnimationModifier sizeAnimationModifier, c<? super SizeAnimationModifier$animateTo$data$1$1> cVar) {
        super(2, cVar);
        this.$this_apply = animData;
        this.$targetSize = j10;
        this.this$0 = sizeAnimationModifier;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new SizeAnimationModifier$animateTo$data$1$1(this.$this_apply, this.$targetSize, this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((SizeAnimationModifier$animateTo$data$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Type inference failed for: r12v8, types: [java.lang.Object] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Function2<IntSize, IntSize, Unit> listener;
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Animatable<IntSize, AnimationVector2D> anim = this.$this_apply.getAnim();
            IntSize m4201boximpl = IntSize.m4201boximpl(this.$targetSize);
            AnimationSpec<IntSize> animSpec = this.this$0.getAnimSpec();
            this.label = 1;
            obj = Animatable.animateTo$default(anim, m4201boximpl, animSpec, null, null, this, 12, null);
            if (obj == f10) {
                return f10;
            }
        }
        AnimationResult animationResult = (AnimationResult) obj;
        if (animationResult.getEndReason() == AnimationEndReason.Finished && (listener = this.this$0.getListener()) != null) {
            listener.invoke(IntSize.m4201boximpl(this.$this_apply.m121getStartSizeYbymL2g()), animationResult.getEndState().getValue());
        }
        return Unit.f60915a;
    }
}
