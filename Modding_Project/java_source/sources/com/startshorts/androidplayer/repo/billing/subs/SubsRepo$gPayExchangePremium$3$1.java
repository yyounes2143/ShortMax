package com.startshorts.androidplayer.repo.billing.subs;

import com.startshorts.androidplayer.bean.subs.SubsSku;
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
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRepo$gPayExchangePremium$3$1", f = "SubsRepo.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SubsRepo$gPayExchangePremium$3$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43525h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43526i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SubsSku f43527j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Throwable f43528k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRepo$gPayExchangePremium$3$1(String str, SubsSku subsSku, Throwable th2, c<? super SubsRepo$gPayExchangePremium$3$1> cVar) {
        super(2, cVar);
        this.f43526i = str;
        this.f43527j = subsSku;
        this.f43528k = th2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SubsRepo$gPayExchangePremium$3$1(this.f43526i, this.f43527j, this.f43528k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SubsRepo$gPayExchangePremium$3$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f43525h == 0) {
            f.b(obj);
            BillingRepo.f43237a.Y(this.f43526i, this.f43527j.getSkuId(), this.f43528k.getMessage());
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
