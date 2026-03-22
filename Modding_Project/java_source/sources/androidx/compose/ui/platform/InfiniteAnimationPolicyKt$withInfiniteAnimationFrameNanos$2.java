package androidx.compose.ui.platform;

import androidx.compose.runtime.MonotonicFrameClockKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: InfiniteAnimationPolicy.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.ui.platform.InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2", f = "InfiniteAnimationPolicy.kt", l = {65}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2<R> extends SuspendLambda implements Function1<rs.c<? super R>, Object> {
    final /* synthetic */ Function1<Long, R> $onFrame;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2(Function1<? super Long, ? extends R> function1, rs.c<? super InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2> cVar) {
        super(1, cVar);
        this.$onFrame = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@NotNull rs.c<?> cVar) {
        return new InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2(this.$onFrame, cVar);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return invoke((rs.c) ((rs.c) obj));
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
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
            Function1<Long, R> function1 = this.$onFrame;
            this.label = 1;
            obj = MonotonicFrameClockKt.withFrameNanos(function1, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Nullable
    public final Object invoke(@Nullable rs.c<? super R> cVar) {
        return ((InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
