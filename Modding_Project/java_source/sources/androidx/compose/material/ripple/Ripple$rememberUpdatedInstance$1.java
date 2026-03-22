package androidx.compose.material.ripple;

import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kt.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Ripple.kt */
@Metadata
@d(c = "androidx.compose.material.ripple.Ripple$rememberUpdatedInstance$1", f = "Ripple.kt", l = {356}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class Ripple$rememberUpdatedInstance$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ RippleIndicationInstance $instance;
    final /* synthetic */ InteractionSource $interactionSource;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ripple$rememberUpdatedInstance$1(InteractionSource interactionSource, RippleIndicationInstance rippleIndicationInstance, c<? super Ripple$rememberUpdatedInstance$1> cVar) {
        super(2, cVar);
        this.$interactionSource = interactionSource;
        this.$instance = rippleIndicationInstance;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        Ripple$rememberUpdatedInstance$1 ripple$rememberUpdatedInstance$1 = new Ripple$rememberUpdatedInstance$1(this.$interactionSource, this.$instance, cVar);
        ripple$rememberUpdatedInstance$1.L$0 = obj;
        return ripple$rememberUpdatedInstance$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((Ripple$rememberUpdatedInstance$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
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
            final g0 g0Var = (g0) this.L$0;
            b<Interaction> interactions = this.$interactionSource.getInteractions();
            final RippleIndicationInstance rippleIndicationInstance = this.$instance;
            kt.c<Interaction> cVar = new kt.c<Interaction>() { // from class: androidx.compose.material.ripple.Ripple$rememberUpdatedInstance$1$invokeSuspend$$inlined$collect$1
                @Override // kt.c
                @Nullable
                public Object emit(Interaction interaction, @NotNull c<? super Unit> cVar2) {
                    Interaction interaction2 = interaction;
                    if (interaction2 instanceof PressInteraction.Press) {
                        RippleIndicationInstance.this.addRipple((PressInteraction.Press) interaction2, g0Var);
                    } else if (interaction2 instanceof PressInteraction.Release) {
                        RippleIndicationInstance.this.removeRipple(((PressInteraction.Release) interaction2).getPress());
                    } else if (interaction2 instanceof PressInteraction.Cancel) {
                        RippleIndicationInstance.this.removeRipple(((PressInteraction.Cancel) interaction2).getPress());
                    } else {
                        RippleIndicationInstance.this.updateStateLayer$material_ripple_release(interaction2, g0Var);
                    }
                    return Unit.f60915a;
                }
            };
            this.label = 1;
            if (interactions.collect(cVar, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
