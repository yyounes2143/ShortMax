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
/* compiled from: Scrollable.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.ScrollDraggableState$drag$2", f = "Scrollable.kt", l = {445}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class ScrollDraggableState$drag$2 extends SuspendLambda implements Function2<ScrollScope, c<? super Unit>, Object> {
    final /* synthetic */ Function2<PointerAwareDragScope, c<? super Unit>, Object> $block;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ScrollDraggableState this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ScrollDraggableState$drag$2(ScrollDraggableState scrollDraggableState, Function2<? super PointerAwareDragScope, ? super c<? super Unit>, ? extends Object> function2, c<? super ScrollDraggableState$drag$2> cVar) {
        super(2, cVar);
        this.this$0 = scrollDraggableState;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        ScrollDraggableState$drag$2 scrollDraggableState$drag$2 = new ScrollDraggableState$drag$2(this.this$0, this.$block, cVar);
        scrollDraggableState$drag$2.L$0 = obj;
        return scrollDraggableState$drag$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull ScrollScope scrollScope, @Nullable c<? super Unit> cVar) {
        return ((ScrollDraggableState$drag$2) create(scrollScope, cVar)).invokeSuspend(Unit.f60915a);
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
            this.this$0.setLatestScrollScope((ScrollScope) this.L$0);
            Function2<PointerAwareDragScope, c<? super Unit>, Object> function2 = this.$block;
            ScrollDraggableState scrollDraggableState = this.this$0;
            this.label = 1;
            if (function2.invoke(scrollDraggableState, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
