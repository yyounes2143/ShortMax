package com.startshorts.androidplayer.viewmodel.subs;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.subs.SubsPrice;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.subs.SubsUpdateMode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.repo.billing.subs.SubsRepo;
import com.startshorts.androidplayer.viewmodel.subs.b;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.subs.SubsViewModel$querySubsUpdateMode$1", f = "SubsViewModel.kt", l = {258}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SubsViewModel$querySubsUpdateMode$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49414h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsSku f49415i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Context f49416j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ SubsViewModel f49417k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ SubsSku f49418l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsViewModel$querySubsUpdateMode$1(SubsSku subsSku, Context context, SubsViewModel subsViewModel, SubsSku subsSku2, c<? super SubsViewModel$querySubsUpdateMode$1> cVar) {
        super(2, cVar);
        this.f49415i = subsSku;
        this.f49416j = context;
        this.f49417k = subsViewModel;
        this.f49418l = subsSku2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SubsViewModel$querySubsUpdateMode$1(this.f49415i, this.f49416j, this.f49417k, this.f49418l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SubsViewModel$querySubsUpdateMode$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
        int i10 = this.f49414h;
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
                String originPriceText = this.f49415i.getOriginPriceText();
                if (originPriceText == null) {
                    str = "";
                } else {
                    str = originPriceText;
                }
                long payAmount = this.f49415i.getPayAmount() * ((float) TTVideoEngineInterface.PLAYER_TIME_BASE);
                String discountPriceText = this.f49415i.getDiscountPriceText();
                if (discountPriceText == null) {
                    str2 = "";
                } else {
                    str2 = discountPriceText;
                }
                subsPrice = new SubsPrice("USD", str, payAmount, "USD", str2, this.f49415i.getFirstAmount() * f10, 1);
            } else {
                Object skuDetails = this.f49415i.getSkuDetails();
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
                Logger.f41511a.e("SubsViewModel", "querySubsUpdateMode failed -> clickedSkuPrice is null");
                return Unit.f60915a;
            }
            SubsRepo subsRepo = SubsRepo.f43486a;
            Context context = this.f49416j;
            SubsSku subsSku = this.f49415i;
            this.f49414h = 1;
            p10 = subsRepo.p(context, subsSku, subsPrice, this);
            if (p10 == f11) {
                return f11;
            }
        }
        SubsViewModel subsViewModel = this.f49417k;
        SubsSku subsSku2 = this.f49415i;
        SubsSku subsSku3 = this.f49418l;
        if (Result.j(p10)) {
            SubsUpdateMode subsUpdateMode = (SubsUpdateMode) p10;
            MutableLiveData<b> H = subsViewModel.H();
            if (subsUpdateMode == null) {
                subsUpdateMode = new SubsUpdateMode(2, null, null, 4, null);
            }
            o.b(H, new b.d(subsSku2, subsSku3, subsUpdateMode));
        }
        SubsViewModel subsViewModel2 = this.f49417k;
        Throwable g10 = Result.g(p10);
        if (g10 != null) {
            u.k(u.f51776a, subsViewModel2.p(subsViewModel2.s(g10)).getMsg(), 0, 2, null);
        }
        return Unit.f60915a;
    }
}
