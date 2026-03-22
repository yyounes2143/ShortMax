package com.startshorts.androidplayer.repo.billing.purchase;

import com.startshorts.androidplayer.repo.billing.BillingRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$notifyThirdPartyPayEnable$1", f = "PurchaseRepo.kt", l = {316}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PurchaseRepo$notifyThirdPartyPayEnable$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43420h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PurchaseRepo$notifyThirdPartyPayEnable$1(c<? super PurchaseRepo$notifyThirdPartyPayEnable$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PurchaseRepo$notifyThirdPartyPayEnable$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PurchaseRepo$notifyThirdPartyPayEnable$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43420h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            BillingRepo billingRepo = BillingRepo.f43237a;
            this.f43420h = 1;
            if (billingRepo.d0(2, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
