package androidx.compose.foundation.lazy.grid;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.ui.unit.IntOffset;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyGridItemPlacementAnimator.kt */
@Metadata
@d(c = "androidx.compose.foundation.lazy.grid.LazyGridItemPlacementAnimator$getAnimatedOffset$1", f = "LazyGridItemPlacementAnimator.kt", l = {324}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class LazyGridItemPlacementAnimator$getAnimatedOffset$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ PlaceableInfo $item;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyGridItemPlacementAnimator$getAnimatedOffset$1(PlaceableInfo placeableInfo, c<? super LazyGridItemPlacementAnimator$getAnimatedOffset$1> cVar) {
        super(2, cVar);
        this.$item = placeableInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new LazyGridItemPlacementAnimator$getAnimatedOffset$1(this.$item, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((LazyGridItemPlacementAnimator$getAnimatedOffset$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
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
            Animatable<IntOffset, AnimationVector2D> animatedOffset = this.$item.getAnimatedOffset();
            IntOffset m4158boximpl = IntOffset.m4158boximpl(this.$item.m655getTargetOffsetnOccac());
            this.label = 1;
            if (animatedOffset.snapTo(m4158boximpl, this) == f10) {
                return f10;
            }
        }
        this.$item.setInProgress(false);
        return Unit.f60915a;
    }
}
