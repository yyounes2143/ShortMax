package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector1D;
import com.ss.ttm.player.MediaPlayer;
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
/* compiled from: SnackbarHost.kt */
@Metadata
@d(c = "androidx.compose.material.SnackbarHostKt$animatedScale$1", f = "SnackbarHost.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_DECODER_STALL_THRESHOLD}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class SnackbarHostKt$animatedScale$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ AnimationSpec<Float> $animation;
    final /* synthetic */ Animatable<Float, AnimationVector1D> $scale;
    final /* synthetic */ boolean $visible;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnackbarHostKt$animatedScale$1(Animatable<Float, AnimationVector1D> animatable, boolean z10, AnimationSpec<Float> animationSpec, c<? super SnackbarHostKt$animatedScale$1> cVar) {
        super(2, cVar);
        this.$scale = animatable;
        this.$visible = z10;
        this.$animation = animationSpec;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new SnackbarHostKt$animatedScale$1(this.$scale, this.$visible, this.$animation, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((SnackbarHostKt$animatedScale$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            Animatable<Float, AnimationVector1D> animatable = this.$scale;
            if (this.$visible) {
                f10 = 1.0f;
            } else {
                f10 = 0.8f;
            }
            Float c10 = kotlin.coroutines.jvm.internal.a.c(f10);
            AnimationSpec<Float> animationSpec = this.$animation;
            this.label = 1;
            if (Animatable.animateTo$default(animatable, c10, animationSpec, null, null, this, 12, null) == f11) {
                return f11;
            }
        }
        return Unit.f60915a;
    }
}
