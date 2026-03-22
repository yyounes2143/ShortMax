package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.geometry.Offset;
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
@d(c = "androidx.compose.material.DefaultButtonElevation$elevation$3", f = "Button.kt", l = {561}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class DefaultButtonElevation$elevation$3 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Animatable<Dp, AnimationVector1D> $animatable;
    final /* synthetic */ Interaction $interaction;
    final /* synthetic */ float $target;
    int label;
    final /* synthetic */ DefaultButtonElevation this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultButtonElevation$elevation$3(Animatable<Dp, AnimationVector1D> animatable, DefaultButtonElevation defaultButtonElevation, float f10, Interaction interaction, c<? super DefaultButtonElevation$elevation$3> cVar) {
        super(2, cVar);
        this.$animatable = animatable;
        this.this$0 = defaultButtonElevation;
        this.$target = f10;
        this.$interaction = interaction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new DefaultButtonElevation$elevation$3(this.$animatable, this.this$0, this.$target, this.$interaction, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((DefaultButtonElevation$elevation$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        float f10;
        float f11;
        float f12;
        Object f13 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            float m4063unboximpl = this.$animatable.getTargetValue().m4063unboximpl();
            f10 = this.this$0.pressedElevation;
            Interaction interaction = null;
            if (!Dp.m4054equalsimpl0(m4063unboximpl, f10)) {
                f11 = this.this$0.hoveredElevation;
                if (!Dp.m4054equalsimpl0(m4063unboximpl, f11)) {
                    f12 = this.this$0.focusedElevation;
                    if (Dp.m4054equalsimpl0(m4063unboximpl, f12)) {
                        interaction = new FocusInteraction.Focus();
                    }
                } else {
                    interaction = new HoverInteraction.Enter();
                }
            } else {
                interaction = new PressInteraction.Press(Offset.Companion.m1622getZeroF1C5BW0(), null);
            }
            Animatable<Dp, AnimationVector1D> animatable = this.$animatable;
            float f14 = this.$target;
            Interaction interaction2 = this.$interaction;
            this.label = 1;
            if (ElevationKt.m1068animateElevationrAjV9yQ(animatable, f14, interaction, interaction2, this) == f13) {
                return f13;
            }
        }
        return Unit.f60915a;
    }
}
