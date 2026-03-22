package androidx.compose.ui.input.pointer;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SuspendingPointerInputFilter.kt */
@Metadata
@d(c = "androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt$pointerInput$6$2$1", f = "SuspendingPointerInputFilter.kt", l = {336}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SuspendingPointerInputFilterKt$pointerInput$6$2$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Function2<PointerInputScope, c<? super Unit>, Object> $block;
    final /* synthetic */ SuspendingPointerInputFilter $filter;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SuspendingPointerInputFilterKt$pointerInput$6$2$1(SuspendingPointerInputFilter suspendingPointerInputFilter, Function2<? super PointerInputScope, ? super c<? super Unit>, ? extends Object> function2, c<? super SuspendingPointerInputFilterKt$pointerInput$6$2$1> cVar) {
        super(2, cVar);
        this.$filter = suspendingPointerInputFilter;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        SuspendingPointerInputFilterKt$pointerInput$6$2$1 suspendingPointerInputFilterKt$pointerInput$6$2$1 = new SuspendingPointerInputFilterKt$pointerInput$6$2$1(this.$filter, this.$block, cVar);
        suspendingPointerInputFilterKt$pointerInput$6$2$1.L$0 = obj;
        return suspendingPointerInputFilterKt$pointerInput$6$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((SuspendingPointerInputFilterKt$pointerInput$6$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            this.$filter.setCoroutineScope((g0) this.L$0);
            Function2<PointerInputScope, c<? super Unit>, Object> function2 = this.$block;
            SuspendingPointerInputFilter suspendingPointerInputFilter = this.$filter;
            this.label = 1;
            if (function2.invoke(suspendingPointerInputFilter, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
