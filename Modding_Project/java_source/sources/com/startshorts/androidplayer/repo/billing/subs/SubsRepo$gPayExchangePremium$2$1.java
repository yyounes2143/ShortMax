package com.startshorts.androidplayer.repo.billing.subs;

import com.startshorts.androidplayer.bean.subs.GPayExchangePremiumResult;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRepo$gPayExchangePremium$2$1", f = "SubsRepo.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SubsRepo$gPayExchangePremium$2$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43517h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43518i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ GPayExchangePremiumResult.RechargeUserInfo f43519j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRepo$gPayExchangePremium$2$1(String str, GPayExchangePremiumResult.RechargeUserInfo rechargeUserInfo, c<? super SubsRepo$gPayExchangePremium$2$1> cVar) {
        super(2, cVar);
        this.f43518i = str;
        this.f43519j = rechargeUserInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SubsRepo$gPayExchangePremium$2$1(this.f43518i, this.f43519j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SubsRepo$gPayExchangePremium$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f43517h == 0) {
            f.b(obj);
            BillingRepo.f43237a.c0(this.f43518i, this.f43519j);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
