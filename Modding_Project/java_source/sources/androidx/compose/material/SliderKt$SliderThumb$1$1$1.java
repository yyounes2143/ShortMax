package androidx.compose.material;

import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import gt.g0;
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
/* compiled from: Slider.kt */
@Metadata
@d(c = "androidx.compose.material.SliderKt$SliderThumb$1$1$1", f = "Slider.kt", l = {682}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class SliderKt$SliderThumb$1$1$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ SnapshotStateList<Interaction> $interactions;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SliderKt$SliderThumb$1$1$1(MutableInteractionSource mutableInteractionSource, SnapshotStateList<Interaction> snapshotStateList, c<? super SliderKt$SliderThumb$1$1$1> cVar) {
        super(2, cVar);
        this.$interactionSource = mutableInteractionSource;
        this.$interactions = snapshotStateList;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new SliderKt$SliderThumb$1$1$1(this.$interactionSource, this.$interactions, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((SliderKt$SliderThumb$1$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            b<Interaction> interactions = this.$interactionSource.getInteractions();
            final SnapshotStateList<Interaction> snapshotStateList = this.$interactions;
            kt.c<Interaction> cVar = new kt.c<Interaction>() { // from class: androidx.compose.material.SliderKt$SliderThumb$1$1$1.1
                @Override // kt.c
                public /* bridge */ /* synthetic */ Object emit(Interaction interaction, c cVar2) {
                    return emit2(interaction, (c<? super Unit>) cVar2);
                }

                @Nullable
                /* renamed from: emit  reason: avoid collision after fix types in other method */
                public final Object emit2(@NotNull Interaction interaction, @NotNull c<? super Unit> cVar2) {
                    if (interaction instanceof PressInteraction.Press) {
                        snapshotStateList.add(interaction);
                    } else if (interaction instanceof PressInteraction.Release) {
                        snapshotStateList.remove(((PressInteraction.Release) interaction).getPress());
                    } else if (interaction instanceof PressInteraction.Cancel) {
                        snapshotStateList.remove(((PressInteraction.Cancel) interaction).getPress());
                    } else if (interaction instanceof DragInteraction.Start) {
                        snapshotStateList.add(interaction);
                    } else if (interaction instanceof DragInteraction.Stop) {
                        snapshotStateList.remove(((DragInteraction.Stop) interaction).getStart());
                    } else if (interaction instanceof DragInteraction.Cancel) {
                        snapshotStateList.remove(((DragInteraction.Cancel) interaction).getStart());
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
