package com.startshorts.androidplayer.viewmodel.billing;

import android.content.Context;
import com.startshorts.androidplayer.bean.order.OtherOrderResp;
import com.startshorts.androidplayer.bean.order.OtherOrderResult;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.billing.b;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.billing.BillingViewModel$createOtherOrder$1", f = "BillingViewModel.kt", l = {568}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class BillingViewModel$createOtherOrder$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48332h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ a.d f48333i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ BillingViewModel f48334j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingViewModel$createOtherOrder$1(a.d dVar, BillingViewModel billingViewModel, c<? super BillingViewModel$createOtherOrder$1> cVar) {
        super(2, cVar);
        this.f48333i = dVar;
        this.f48334j = billingViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new BillingViewModel$createOtherOrder$1(this.f48333i, this.f48334j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((BillingViewModel$createOtherOrder$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object v10;
        String str;
        OtherOrderResp thirdResp;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48332h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                v10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            BillingRepo billingRepo = BillingRepo.f43237a;
            Context b10 = this.f48333i.b();
            int a10 = this.f48333i.a();
            String h10 = this.f48333i.h();
            String f11 = this.f48333i.f();
            String i11 = this.f48333i.i();
            String g10 = this.f48333i.g();
            String e10 = this.f48333i.e();
            String d10 = this.f48333i.d();
            String c10 = this.f48333i.c();
            this.f48332h = 1;
            v10 = billingRepo.v(b10, d10, a10, h10, f11, i11, g10, e10, c10, this);
            if (v10 == f10) {
                return f10;
            }
        }
        BillingViewModel billingViewModel = this.f48334j;
        if (Result.j(v10)) {
            OtherOrderResult otherOrderResult = (OtherOrderResult) v10;
            if (otherOrderResult != null && (thirdResp = otherOrderResult.getThirdResp()) != null) {
                str = thirdResp.getStatus();
            } else {
                str = null;
            }
            o.b(billingViewModel.Q(), new b.a(Intrinsics.areEqual(str, OtherOrderResp.STATUS_COMPLETED), otherOrderResult));
        }
        BillingViewModel billingViewModel2 = this.f48334j;
        if (Result.g(v10) != null) {
            o.b(billingViewModel2.Q(), new b.a(false, null));
        }
        return Unit.f60915a;
    }
}
