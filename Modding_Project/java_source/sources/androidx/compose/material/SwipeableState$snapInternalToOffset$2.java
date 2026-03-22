package androidx.compose.material;

import androidx.compose.foundation.gestures.DragScope;
import androidx.compose.runtime.MutableState;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Swipeable.kt */
@Metadata
@d(c = "androidx.compose.material.SwipeableState$snapInternalToOffset$2", f = "Swipeable.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SwipeableState$snapInternalToOffset$2 extends SuspendLambda implements Function2<DragScope, c<? super Unit>, Object> {
    final /* synthetic */ float $target;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SwipeableState<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipeableState$snapInternalToOffset$2(float f10, SwipeableState<T> swipeableState, c<? super SwipeableState$snapInternalToOffset$2> cVar) {
        super(2, cVar);
        this.$target = f10;
        this.this$0 = swipeableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        SwipeableState$snapInternalToOffset$2 swipeableState$snapInternalToOffset$2 = new SwipeableState$snapInternalToOffset$2(this.$target, this.this$0, cVar);
        swipeableState$snapInternalToOffset$2.L$0 = obj;
        return swipeableState$snapInternalToOffset$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull DragScope dragScope, @Nullable c<? super Unit> cVar) {
        return ((SwipeableState$snapInternalToOffset$2) create(dragScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        MutableState mutableState;
        a.f();
        if (this.label == 0) {
            f.b(obj);
            float f10 = this.$target;
            mutableState = ((SwipeableState) this.this$0).absoluteOffset;
            ((DragScope) this.L$0).dragBy(f10 - ((Number) mutableState.getValue()).floatValue());
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
