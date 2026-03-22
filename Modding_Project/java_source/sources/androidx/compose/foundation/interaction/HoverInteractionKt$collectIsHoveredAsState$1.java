package androidx.compose.foundation.interaction;

import androidx.compose.foundation.interaction.HoverInteraction;
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
/* compiled from: HoverInteraction.kt */
@Metadata
@d(c = "androidx.compose.foundation.interaction.HoverInteractionKt$collectIsHoveredAsState$1", f = "HoverInteraction.kt", l = {69}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class HoverInteractionKt$collectIsHoveredAsState$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ MutableState<Boolean> $isHovered;
    final /* synthetic */ InteractionSource $this_collectIsHoveredAsState;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HoverInteractionKt$collectIsHoveredAsState$1(InteractionSource interactionSource, MutableState<Boolean> mutableState, c<? super HoverInteractionKt$collectIsHoveredAsState$1> cVar) {
        super(2, cVar);
        this.$this_collectIsHoveredAsState = interactionSource;
        this.$isHovered = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new HoverInteractionKt$collectIsHoveredAsState$1(this.$this_collectIsHoveredAsState, this.$isHovered, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((HoverInteractionKt$collectIsHoveredAsState$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            b<Interaction> interactions = this.$this_collectIsHoveredAsState.getInteractions();
            final MutableState<Boolean> mutableState = this.$isHovered;
            kt.c<Interaction> cVar = new kt.c<Interaction>() { // from class: androidx.compose.foundation.interaction.HoverInteractionKt$collectIsHoveredAsState$1.1
                @Override // kt.c
                public /* bridge */ /* synthetic */ Object emit(Interaction interaction, c cVar2) {
                    return emit2(interaction, (c<? super Unit>) cVar2);
                }

                @Nullable
                /* renamed from: emit  reason: avoid collision after fix types in other method */
                public final Object emit2(@NotNull Interaction interaction, @NotNull c<? super Unit> cVar2) {
                    if (interaction instanceof HoverInteraction.Enter) {
                        arrayList.add(interaction);
                    } else if (interaction instanceof HoverInteraction.Exit) {
                        arrayList.remove(((HoverInteraction.Exit) interaction).getEnter());
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
