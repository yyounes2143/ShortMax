package com.startshorts.androidplayer.repo.billing;

import ad.m;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import zc.j;
/* compiled from: FakeBillingClient.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.repo.billing.FakeBillingClient$checkNotAcknowledgedPurchases$1", f = "FakeBillingClient.kt", l = {IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class FakeBillingClient$checkNotAcknowledgedPurchases$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43321h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ FakeBillingClient f43322i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FakeBillingClient$checkNotAcknowledgedPurchases$1(FakeBillingClient fakeBillingClient, rs.c<? super FakeBillingClient$checkNotAcknowledgedPurchases$1> cVar) {
        super(2, cVar);
        this.f43322i = fakeBillingClient;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new FakeBillingClient$checkNotAcknowledgedPurchases$1(this.f43322i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((FakeBillingClient$checkNotAcknowledgedPurchases$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        j jVar;
        m b10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43321h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            FakeBillingClient fakeBillingClient = this.f43322i;
            this.f43321h = 1;
            obj = fakeBillingClient.e("", this);
            if (obj == f10) {
                return f10;
            }
        }
        List<zc.f> list = (List) obj;
        if (!list.isEmpty() && (jVar = this.f43322i.f43288h) != null && (b10 = jVar.b()) != null) {
            b10.c(list);
        }
        return Unit.f60915a;
    }
}
