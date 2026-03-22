package com.startshorts.androidplayer.repo.push;

import com.startshorts.androidplayer.bean.notification.RecommendShortsNotification;
import com.startshorts.androidplayer.utils.DeviceUtil;
import eh.b;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PushRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.push.PushRepo$addRecommendShortsNotificationCache$1", f = "PushRepo.kt", l = {192}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PushRepo$addRecommendShortsNotificationCache$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f44390h;

    /* renamed from: i  reason: collision with root package name */
    int f44391i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PushRepo$addRecommendShortsNotificationCache$1(c<? super PushRepo$addRecommendShortsNotificationCache$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PushRepo$addRecommendShortsNotificationCache$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PushRepo$addRecommendShortsNotificationCache$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        PushRemoteDS q10;
        String str;
        Object obj2;
        b p10;
        Object f10 = a.f();
        int i10 = this.f44391i;
        if (i10 != 0) {
            if (i10 == 1) {
                str = (String) this.f44390h;
                f.b(obj);
                obj2 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            PushRepo.f44384k = true;
            String e10 = DeviceUtil.f48146a.e();
            q10 = PushRepo.f44374a.q();
            this.f44390h = e10;
            this.f44391i = 1;
            Object f11 = q10.f(this);
            if (f11 == f10) {
                return f10;
            }
            str = e10;
            obj2 = f11;
        }
        if (Result.i(obj2)) {
            obj2 = null;
        }
        RecommendShortsNotification recommendShortsNotification = (RecommendShortsNotification) obj2;
        if (recommendShortsNotification != null && Intrinsics.areEqual(str, DeviceUtil.f48146a.e())) {
            p10 = PushRepo.f44374a.p();
            p10.b(recommendShortsNotification);
        }
        PushRepo.f44384k = false;
        return Unit.f60915a;
    }
}
