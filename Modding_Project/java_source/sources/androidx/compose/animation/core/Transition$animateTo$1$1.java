package androidx.compose.animation.core;

import androidx.compose.runtime.MonotonicFrameClockKt;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Transition.kt */
@Metadata
@d(c = "androidx.compose.animation.core.Transition$animateTo$1$1", f = "Transition.kt", l = {434}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class Transition$animateTo$1$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ Transition<S> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Transition$animateTo$1$1(Transition<S> transition, c<? super Transition$animateTo$1$1> cVar) {
        super(2, cVar);
        this.this$0 = transition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        Transition$animateTo$1$1 transition$animateTo$1$1 = new Transition$animateTo$1$1(this.this$0, cVar);
        transition$animateTo$1$1.L$0 = obj;
        return transition$animateTo$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((Transition$animateTo$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        g0 g0Var;
        Function1<Long, Unit> function1;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                g0Var = (g0) this.L$0;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            g0Var = (g0) this.L$0;
        }
        do {
            final float durationScale = SuspendAnimationKt.getDurationScale(g0Var.getCoroutineContext());
            final Transition<S> transition = this.this$0;
            function1 = new Function1<Long, Unit>() { // from class: androidx.compose.animation.core.Transition$animateTo$1$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Long l10) {
                    invoke(l10.longValue());
                    return Unit.f60915a;
                }

                public final void invoke(long j10) {
                    if (transition.isSeeking()) {
                        return;
                    }
                    transition.onFrame$animation_core_release(j10, durationScale);
                }
            };
            this.L$0 = g0Var;
            this.label = 1;
        } while (MonotonicFrameClockKt.withFrameNanos(function1, this) != f10);
        return f10;
    }
}
