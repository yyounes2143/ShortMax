package com.startshorts.androidplayer.manager.api.limit;

import gt.g0;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ApiLimitManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.api.limit.ApiLimitManager$checkShouldLimit$1", f = "ApiLimitManager.kt", l = {55, 57}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class ApiLimitManager$checkShouldLimit$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41833h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ApiLimitManager$checkShouldLimit$1(c<? super ApiLimitManager$checkShouldLimit$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ApiLimitManager$checkShouldLimit$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ApiLimitManager$checkShouldLimit$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AtomicBoolean atomicBoolean;
        Object g10;
        Object f10 = a.f();
        int i10 = this.f41833h;
        try {
        } catch (CancellationException e10) {
            throw e10;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
        } else {
            f.b(obj);
            this.f41833h = 1;
            if (DelayKt.b(2000L, this) == f10) {
                return f10;
            }
        }
        atomicBoolean = ApiLimitManager.f41828b;
        if (atomicBoolean.compareAndSet(false, true)) {
            ApiLimitManager apiLimitManager = ApiLimitManager.f41827a;
            this.f41833h = 2;
            g10 = apiLimitManager.g(this);
            if (g10 == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
