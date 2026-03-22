package com.startshorts.androidplayer.repo.billing.subs;

import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import rs.c;
import zc.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRepo$gPayUpgradePremium$2$2", f = "SubsRepo.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SubsRepo$gPayUpgradePremium$2$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43547h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43548i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SubsSku f43549j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ f f43550k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ GPayPriceInfo f43551l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRepo$gPayUpgradePremium$2$2(String str, SubsSku subsSku, f fVar, GPayPriceInfo gPayPriceInfo, c<? super SubsRepo$gPayUpgradePremium$2$2> cVar) {
        super(2, cVar);
        this.f43548i = str;
        this.f43549j = subsSku;
        this.f43550k = fVar;
        this.f43551l = gPayPriceInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SubsRepo$gPayUpgradePremium$2$2(this.f43548i, this.f43549j, this.f43550k, this.f43551l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SubsRepo$gPayUpgradePremium$2$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f43547h == 0) {
            kotlin.f.b(obj);
            BillingRepo.f43237a.b0(this.f43548i, this.f43549j, this.f43550k, this.f43551l, 1);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
