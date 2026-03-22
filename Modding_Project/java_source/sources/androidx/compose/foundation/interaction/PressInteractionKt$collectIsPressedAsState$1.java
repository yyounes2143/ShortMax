package androidx.compose.foundation.interaction;

import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.MutableState;
import gt.g0;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kt.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: PressInteraction.kt */
@Metadata
@d(c = "androidx.compose.foundation.interaction.PressInteractionKt$collectIsPressedAsState$1", f = "PressInteraction.kt", l = {85}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class PressInteractionKt$collectIsPressedAsState$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ MutableState<Boolean> $isPressed;
    final /* synthetic */ InteractionSource $this_collectIsPressedAsState;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PressInteractionKt$collectIsPressedAsState$1(InteractionSource interactionSource, MutableState<Boolean> mutableState, c<? super PressInteractionKt$collectIsPressedAsState$1> cVar) {
        super(2, cVar);
        this.$this_collectIsPressedAsState = interactionSource;
        this.$isPressed = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new PressInteractionKt$collectIsPressedAsState$1(this.$this_collectIsPressedAsState, this.$isPressed, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((PressInteractionKt$collectIsPressedAsState$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            final ArrayList arrayList = new ArrayList();
            b<Interaction> interactions = this.$this_collectIsPressedAsState.getInteractions();
            final MutableState<Boolean> mutableState = this.$isPressed;
            kt.c<Interaction> cVar = new kt.c<Interaction>() { // from class: androidx.compose.foundation.interaction.PressInteractionKt$collectIsPressedAsState$1.1
                @Override // kt.c
                public /* bridge */ /* synthetic */ Object emit(Interaction interaction, c cVar2) {
                    return emit2(interaction, (c<? super Unit>) cVar2);
                }

                @Nullable
                /* renamed from: emit  reason: avoid collision after fix types in other method */
                public final Object emit2(@NotNull Interaction interaction, @NotNull c<? super Unit> cVar2) {
                    if (interaction instanceof PressInteraction.Press) {
                        arrayList.add(interaction);
                    } else if (interaction instanceof PressInteraction.Release) {
                        arrayList.remove(((PressInteraction.Release) interaction).getPress());
                    } else if (interaction instanceof PressInteraction.Cancel) {
                        arrayList.remove(((PressInteraction.Cancel) interaction).getPress());
                    }
                    mutableState.setValue(kotlin.coroutines.jvm.internal.a.a(!arrayList.isEmpty()));
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
