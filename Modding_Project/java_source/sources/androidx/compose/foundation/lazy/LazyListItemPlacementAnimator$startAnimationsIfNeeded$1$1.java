package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.ui.unit.IntOffset;
import gt.g0;
import java.util.concurrent.CancellationException;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyListItemPlacementAnimator.kt */
@Metadata
@d(c = "androidx.compose.foundation.lazy.LazyListItemPlacementAnimator$startAnimationsIfNeeded$1$1", f = "LazyListItemPlacementAnimator.kt", l = {400}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class LazyListItemPlacementAnimator$startAnimationsIfNeeded$1$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ FiniteAnimationSpec<IntOffset> $animationSpec;
    final /* synthetic */ PlaceableInfo $placeableInfo;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyListItemPlacementAnimator$startAnimationsIfNeeded$1$1(PlaceableInfo placeableInfo, FiniteAnimationSpec<IntOffset> finiteAnimationSpec, c<? super LazyListItemPlacementAnimator$startAnimationsIfNeeded$1$1> cVar) {
        super(2, cVar);
        this.$placeableInfo = placeableInfo;
        this.$animationSpec = finiteAnimationSpec;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new LazyListItemPlacementAnimator$startAnimationsIfNeeded$1$1(this.$placeableInfo, this.$animationSpec, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((LazyListItemPlacementAnimator$startAnimationsIfNeeded$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        AnimationSpec animationSpec;
        Object f10 = a.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                if (this.$placeableInfo.getAnimatedOffset().isRunning()) {
                    FiniteAnimationSpec<IntOffset> finiteAnimationSpec = this.$animationSpec;
                    if (!(finiteAnimationSpec instanceof SpringSpec)) {
                        animationSpec = LazyListItemPlacementAnimatorKt.InterruptionSpec;
                    } else {
                        animationSpec = (SpringSpec) finiteAnimationSpec;
                    }
                } else {
                    animationSpec = this.$animationSpec;
                }
                AnimationSpec animationSpec2 = animationSpec;
                Animatable<IntOffset, AnimationVector2D> animatedOffset = this.$placeableInfo.getAnimatedOffset();
                IntOffset m4158boximpl = IntOffset.m4158boximpl(this.$placeableInfo.m579getTargetOffsetnOccac());
                this.label = 1;
                if (Animatable.animateTo$default(animatedOffset, m4158boximpl, animationSpec2, null, null, this, 12, null) == f10) {
                    return f10;
                }
            }
            this.$placeableInfo.setInProgress(false);
        } catch (CancellationException unused) {
        }
        return Unit.f60915a;
    }
}
