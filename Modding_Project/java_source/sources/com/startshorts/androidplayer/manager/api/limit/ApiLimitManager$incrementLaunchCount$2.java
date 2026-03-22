package com.startshorts.androidplayer.manager.api.limit;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ApiLimitManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.api.limit.ApiLimitManager$incrementLaunchCount$2", f = "ApiLimitManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class ApiLimitManager$incrementLaunchCount$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41834h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f41835i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApiLimitManager$incrementLaunchCount$2(String str, c<? super ApiLimitManager$incrementLaunchCount$2> cVar) {
        super(2, cVar);
        this.f41835i = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ApiLimitManager$incrementLaunchCount$2(this.f41835i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ApiLimitManager$incrementLaunchCount$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f41834h == 0) {
            f.b(obj);
            b bVar = b.f68412a;
            int k12 = bVar.k1(this.f41835i) + 1;
            bVar.y4(this.f41835i, k12);
            ApiLimitManager.f41832f = k12;
            ApiLimitManager.f41831e = this.f41835i;
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
