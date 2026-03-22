package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: MonotonicFrameClock.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.FallbackFrameClock$withFrameNanos$2", f = "MonotonicFrameClock.android.kt", l = {40}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class FallbackFrameClock$withFrameNanos$2<R> extends SuspendLambda implements Function2<gt.g0, rs.c<? super R>, Object> {
    final /* synthetic */ Function1<Long, R> $onFrame;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FallbackFrameClock$withFrameNanos$2(Function1<? super Long, ? extends R> function1, rs.c<? super FallbackFrameClock$withFrameNanos$2> cVar) {
        super(2, cVar);
        this.$onFrame = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new FallbackFrameClock$withFrameNanos$2(this.$onFrame, cVar);
    }

    public final Object invoke(gt.g0 g0Var, rs.c<? super R> cVar) {
        return ((FallbackFrameClock$withFrameNanos$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            this.label = 1;
            if (DelayKt.b(16L, this) == f10) {
                return f10;
            }
        }
        return this.$onFrame.invoke(kotlin.coroutines.jvm.internal.a.e(System.nanoTime()));
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(gt.g0 g0Var, Object obj) {
        return invoke(g0Var, (rs.c) ((rs.c) obj));
    }
}
