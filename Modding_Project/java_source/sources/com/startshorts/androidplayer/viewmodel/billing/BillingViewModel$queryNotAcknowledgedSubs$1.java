package com.startshorts.androidplayer.viewmodel.billing;

import android.os.Bundle;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.viewmodel.billing.b;
import gt.g0;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import le.h;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.billing.BillingViewModel$queryNotAcknowledgedSubs$1", f = "BillingViewModel.kt", l = {548, 561}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class BillingViewModel$queryNotAcknowledgedSubs$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48345h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BillingViewModel f48346i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f48347j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingViewModel$queryNotAcknowledgedSubs$1(BillingViewModel billingViewModel, String str, c<? super BillingViewModel$queryNotAcknowledgedSubs$1> cVar) {
        super(2, cVar);
        this.f48346i = billingViewModel;
        this.f48347j = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new BillingViewModel$queryNotAcknowledgedSubs$1(this.f48346i, this.f48347j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((BillingViewModel$queryNotAcknowledgedSubs$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String N;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48345h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    o.b(this.f48346i.Q(), new b.h((AcknowledgePurchaseResult) obj));
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
        } else {
            f.b(obj);
            BillingRepo billingRepo = BillingRepo.f43237a;
            N = this.f48346i.N();
            String b10 = h.f62164a.b();
            this.f48345h = 1;
            obj = billingRepo.s(N, b10, this);
            if (obj == f10) {
                return f10;
            }
        }
        List<zc.f> list = (List) obj;
        List<zc.f> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            BillingRepo billingRepo2 = BillingRepo.f43237a;
            String str = this.f48347j;
            this.f48345h = 2;
            obj = billingRepo2.E(false, str, list, this);
            if (obj == f10) {
                return f10;
            }
            o.b(this.f48346i.Q(), new b.h((AcknowledgePurchaseResult) obj));
            return Unit.f60915a;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        String str2 = this.f48347j;
        bundle.putString("type", "manual");
        bundle.putString("genre", "subscription");
        bundle.putString("result", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        bundle.putString("scene", str2);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "restore_result", bundle, 0L, 4, null);
        o.b(this.f48346i.Q(), b.j.f48407a);
        return Unit.f60915a;
    }
}
