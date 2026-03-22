package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.ui.unit.Dp;
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
/* compiled from: Button.kt */
@Metadata
@d(c = "androidx.compose.material.DefaultButtonElevation$elevation$2", f = "Button.kt", l = {551}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class DefaultButtonElevation$elevation$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Animatable<Dp, AnimationVector1D> $animatable;
    final /* synthetic */ float $target;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultButtonElevation$elevation$2(Animatable<Dp, AnimationVector1D> animatable, float f10, c<? super DefaultButtonElevation$elevation$2> cVar) {
        super(2, cVar);
        this.$animatable = animatable;
        this.$target = f10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new DefaultButtonElevation$elevation$2(this.$animatable, this.$target, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((DefaultButtonElevation$elevation$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            Animatable<Dp, AnimationVector1D> animatable = this.$animatable;
            Dp m4047boximpl = Dp.m4047boximpl(this.$target);
            this.label = 1;
            if (animatable.snapTo(m4047boximpl, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
