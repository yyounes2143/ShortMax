package androidx.compose.foundation.gestures;

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
/* compiled from: Draggable.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.IgnorePointerDraggableState$drag$2", f = "Draggable.kt", l = {478}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class IgnorePointerDraggableState$drag$2 extends SuspendLambda implements Function2<DragScope, c<? super Unit>, Object> {
    final /* synthetic */ Function2<PointerAwareDragScope, c<? super Unit>, Object> $block;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ IgnorePointerDraggableState this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public IgnorePointerDraggableState$drag$2(IgnorePointerDraggableState ignorePointerDraggableState, Function2<? super PointerAwareDragScope, ? super c<? super Unit>, ? extends Object> function2, c<? super IgnorePointerDraggableState$drag$2> cVar) {
        super(2, cVar);
        this.this$0 = ignorePointerDraggableState;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        IgnorePointerDraggableState$drag$2 ignorePointerDraggableState$drag$2 = new IgnorePointerDraggableState$drag$2(this.this$0, this.$block, cVar);
        ignorePointerDraggableState$drag$2.L$0 = obj;
        return ignorePointerDraggableState$drag$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull DragScope dragScope, @Nullable c<? super Unit> cVar) {
        return ((IgnorePointerDraggableState$drag$2) create(dragScope, cVar)).invokeSuspend(Unit.f60915a);
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
            this.this$0.setLatestConsumptionScope((DragScope) this.L$0);
            Function2<PointerAwareDragScope, c<? super Unit>, Object> function2 = this.$block;
            IgnorePointerDraggableState ignorePointerDraggableState = this.this$0;
            this.label = 1;
            if (function2.invoke(ignorePointerDraggableState, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
