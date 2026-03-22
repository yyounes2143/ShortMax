package androidx.compose.foundation.text.selection;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.ui.geometry.Offset;
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
/* compiled from: SelectionMagnifier.kt */
@Metadata
@d(c = "androidx.compose.foundation.text.selection.SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$2$emit$2", f = "SelectionMagnifier.kt", l = {102}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$2$emit$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Animatable<Offset, AnimationVector2D> $animatable;
    final /* synthetic */ long $targetValue;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$2$emit$2(Animatable<Offset, AnimationVector2D> animatable, long j10, c<? super SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$2$emit$2> cVar) {
        super(2, cVar);
        this.$animatable = animatable;
        this.$targetValue = j10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$2$emit$2(this.$animatable, this.$targetValue, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$2$emit$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        SpringSpec springSpec;
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
            Animatable<Offset, AnimationVector2D> animatable = this.$animatable;
            Offset m1595boximpl = Offset.m1595boximpl(this.$targetValue);
            springSpec = SelectionMagnifierKt.MagnifierSpringSpec;
            this.label = 1;
            if (Animatable.animateTo$default(animatable, m1595boximpl, springSpec, null, null, this, 12, null) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
