package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector1D;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: SnackbarHost.kt */
@Metadata
@d(c = "androidx.compose.material.SnackbarHostKt$animatedOpacity$2", f = "SnackbarHost.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_AE_LU_RANG}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class SnackbarHostKt$animatedOpacity$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Animatable<Float, AnimationVector1D> $alpha;
    final /* synthetic */ AnimationSpec<Float> $animation;
    final /* synthetic */ Function0<Unit> $onAnimationFinish;
    final /* synthetic */ boolean $visible;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnackbarHostKt$animatedOpacity$2(Animatable<Float, AnimationVector1D> animatable, boolean z10, AnimationSpec<Float> animationSpec, Function0<Unit> function0, c<? super SnackbarHostKt$animatedOpacity$2> cVar) {
        super(2, cVar);
        this.$alpha = animatable;
        this.$visible = z10;
        this.$animation = animationSpec;
        this.$onAnimationFinish = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new SnackbarHostKt$animatedOpacity$2(this.$alpha, this.$visible, this.$animation, this.$onAnimationFinish, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((SnackbarHostKt$animatedOpacity$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        float f10;
        Object f11 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Animatable<Float, AnimationVector1D> animatable = this.$alpha;
            if (this.$visible) {
                f10 = 1.0f;
            } else {
                f10 = 0.0f;
            }
            Float c10 = kotlin.coroutines.jvm.internal.a.c(f10);
            AnimationSpec<Float> animationSpec = this.$animation;
            this.label = 1;
            if (Animatable.animateTo$default(animatable, c10, animationSpec, null, null, this, 12, null) == f11) {
                return f11;
            }
        }
        this.$onAnimationFinish.invoke();
        return Unit.f60915a;
    }
}
