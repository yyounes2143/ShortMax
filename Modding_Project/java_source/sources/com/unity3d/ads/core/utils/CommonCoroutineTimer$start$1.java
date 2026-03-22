package com.unity3d.ads.core.utils;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: CommonCoroutineTimer.kt */
@Metadata
@d(c = "com.unity3d.ads.core.utils.CommonCoroutineTimer$start$1", f = "CommonCoroutineTimer.kt", l = {21, 24}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class CommonCoroutineTimer$start$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $action;
    final /* synthetic */ long $delayStartMillis;
    final /* synthetic */ long $repeatMillis;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonCoroutineTimer$start$1(long j10, Function0<Unit> function0, long j11, c<? super CommonCoroutineTimer$start$1> cVar) {
        super(2, cVar);
        this.$delayStartMillis = j10;
        this.$action = function0;
        this.$repeatMillis = j11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        CommonCoroutineTimer$start$1 commonCoroutineTimer$start$1 = new CommonCoroutineTimer$start$1(this.$delayStartMillis, this.$action, this.$repeatMillis, cVar);
        commonCoroutineTimer$start$1.L$0 = obj;
        return commonCoroutineTimer$start$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((CommonCoroutineTimer$start$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        g0 g0Var;
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1 && i10 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            g0Var = (g0) this.L$0;
            f.b(obj);
        } else {
            f.b(obj);
            g0Var = (g0) this.L$0;
            long j10 = this.$delayStartMillis;
            this.L$0 = g0Var;
            this.label = 1;
            if (DelayKt.b(j10, this) == f10) {
                return f10;
            }
        }
        while (i.h(g0Var)) {
            this.$action.invoke();
            long j11 = this.$repeatMillis;
            this.L$0 = g0Var;
            this.label = 2;
            if (DelayKt.b(j11, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
