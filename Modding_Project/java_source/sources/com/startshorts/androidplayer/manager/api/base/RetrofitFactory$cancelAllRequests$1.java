package com.startshorts.androidplayer.manager.api.base;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import okhttp3.Dispatcher;
import okhttp3.OkHttpClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RetrofitFactory.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.api.base.RetrofitFactory$cancelAllRequests$1", f = "RetrofitFactory.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class RetrofitFactory$cancelAllRequests$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41779h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RetrofitFactory$cancelAllRequests$1(rs.c<? super RetrofitFactory$cancelAllRequests$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RetrofitFactory$cancelAllRequests$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RetrofitFactory$cancelAllRequests$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Dispatcher p10;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f41779h == 0) {
            kotlin.f.b(obj);
            OkHttpClient okHttpClient = RetrofitFactory.f41777b;
            if (okHttpClient != null && (p10 = okHttpClient.p()) != null) {
                p10.a();
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
