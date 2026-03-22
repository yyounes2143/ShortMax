package com.startshorts.androidplayer.utils;

import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.BillingUtil$preNormalCoinSkuList$1", f = "BillingUtil.kt", l = {39}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class BillingUtil$preNormalCoinSkuList$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48071h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BillingUtil$preNormalCoinSkuList$1(c<? super BillingUtil$preNormalCoinSkuList$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new BillingUtil$preNormalCoinSkuList$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((BillingUtil$preNormalCoinSkuList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48071h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            PurchaseRepo purchaseRepo = PurchaseRepo.f43366a;
            this.f48071h = 1;
            if (PurchaseRepo.t(purchaseRepo, true, false, "topup", this, 2, null) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
