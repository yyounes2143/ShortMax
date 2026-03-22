package androidx.compose.material;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.gestures.DragScope;
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
/* compiled from: Slider.kt */
@Metadata
@d(c = "androidx.compose.material.SliderDraggableState$drag$2", f = "Slider.kt", l = {1156}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class SliderDraggableState$drag$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Function2<DragScope, c<? super Unit>, Object> $block;
    final /* synthetic */ MutatePriority $dragPriority;
    int label;
    final /* synthetic */ SliderDraggableState this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SliderDraggableState$drag$2(SliderDraggableState sliderDraggableState, MutatePriority mutatePriority, Function2<? super DragScope, ? super c<? super Unit>, ? extends Object> function2, c<? super SliderDraggableState$drag$2> cVar) {
        super(2, cVar);
        this.this$0 = sliderDraggableState;
        this.$dragPriority = mutatePriority;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new SliderDraggableState$drag$2(this.this$0, this.$dragPriority, this.$block, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((SliderDraggableState$drag$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        MutatorMutex mutatorMutex;
        DragScope dragScope;
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
            this.this$0.setDragging(true);
            mutatorMutex = this.this$0.scrollMutex;
            dragScope = this.this$0.dragScope;
            MutatePriority mutatePriority = this.$dragPriority;
            Function2<DragScope, c<? super Unit>, Object> function2 = this.$block;
            this.label = 1;
            if (mutatorMutex.mutateWith(dragScope, mutatePriority, function2, this) == f10) {
                return f10;
            }
        }
        this.this$0.setDragging(false);
        return Unit.f60915a;
    }
}
