package com.startshorts.androidplayer.viewmodel.purchase;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.subs.SubsPrice;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.subs.SubsUpdateMode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.repo.billing.subs.SubsRepo;
import com.startshorts.androidplayer.viewmodel.purchase.b;
import fk.u;
import gt.g0;
import jk.k;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
import zc.e;
/* compiled from: PurchaseViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel$querySubsUpdateMode$1", f = "PurchaseViewModel.kt", l = {417}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class PurchaseViewModel$querySubsUpdateMode$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49006h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsSku f49007i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Context f49008j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ PurchaseViewModel f49009k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ SubsSku f49010l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseViewModel$querySubsUpdateMode$1(SubsSku subsSku, Context context, PurchaseViewModel purchaseViewModel, SubsSku subsSku2, c<? super PurchaseViewModel$querySubsUpdateMode$1> cVar) {
        super(2, cVar);
        this.f49007i = subsSku;
        this.f49008j = context;
        this.f49009k = purchaseViewModel;
        this.f49010l = subsSku2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PurchaseViewModel$querySubsUpdateMode$1(this.f49007i, this.f49008j, this.f49009k, this.f49010l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PurchaseViewModel$querySubsUpdateMode$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        e eVar;
        SubsPrice subsPrice;
        Object p10;
        String str;
        float f10;
        String str2;
        Object f11 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49006h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                p10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            if (BillingRepo.f43237a.C()) {
                String originPriceText = this.f49007i.getOriginPriceText();
                if (originPriceText == null) {
                    str = "";
                } else {
                    str = originPriceText;
                }
                long payAmount = this.f49007i.getPayAmount() * ((float) TTVideoEngineInterface.PLAYER_TIME_BASE);
                String discountPriceText = this.f49007i.getDiscountPriceText();
                if (discountPriceText == null) {
                    str2 = "";
                } else {
                    str2 = discountPriceText;
                }
                subsPrice = new SubsPrice("USD", str, payAmount, "USD", str2, this.f49007i.getFirstAmount() * f10, 1);
            } else {
                Object skuDetails = this.f49007i.getSkuDetails();
                if (skuDetails instanceof e) {
                    eVar = (e) skuDetails;
                } else {
                    eVar = null;
                }
                if (eVar != null) {
                    subsPrice = k.j(eVar);
                } else {
                    subsPrice = null;
                }
            }
            if (subsPrice == null) {
                Logger.f41511a.e("PurchaseViewModel", "querySubsUpdateMode failed -> clickedSkuPrice is null");
                return Unit.f60915a;
            }
            SubsRepo subsRepo = SubsRepo.f43486a;
            Context context = this.f49008j;
            SubsSku subsSku = this.f49007i;
            this.f49006h = 1;
            p10 = subsRepo.p(context, subsSku, subsPrice, this);
            if (p10 == f11) {
                return f11;
            }
        }
        PurchaseViewModel purchaseViewModel = this.f49009k;
        SubsSku subsSku2 = this.f49007i;
        SubsSku subsSku3 = this.f49010l;
        if (Result.j(p10)) {
            SubsUpdateMode subsUpdateMode = (SubsUpdateMode) p10;
            MutableLiveData<b> R = purchaseViewModel.R();
            if (subsUpdateMode == null) {
                subsUpdateMode = new SubsUpdateMode(2, null, null, 4, null);
            }
            o.b(R, new b.f(subsSku2, subsSku3, subsUpdateMode));
        }
        PurchaseViewModel purchaseViewModel2 = this.f49009k;
        Throwable g10 = Result.g(p10);
        if (g10 != null) {
            u.k(u.f51776a, purchaseViewModel2.p(purchaseViewModel2.s(g10)).getMsg(), 0, 2, null);
        }
        return Unit.f60915a;
    }
}
