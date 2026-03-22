package com.startshorts.androidplayer.viewmodel.billing;

import androidx.lifecycle.MutableLiveData;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.payment.TTPInfoResult;
import com.startshorts.androidplayer.repo.payment.PaymentRepo;
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
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.billing.BillingViewModel$queryTTPInfo$1", f = "BillingViewModel.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class BillingViewModel$queryTTPInfo$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48348h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f48349i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Integer f48350j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ BillingViewModel f48351k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingViewModel$queryTTPInfo$1(String str, Integer num, BillingViewModel billingViewModel, c<? super BillingViewModel$queryTTPInfo$1> cVar) {
        super(2, cVar);
        this.f48349i = str;
        this.f48350j = num;
        this.f48351k = billingViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new BillingViewModel$queryTTPInfo$1(this.f48349i, this.f48350j, this.f48351k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((BillingViewModel$queryTTPInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object a10;
        String str;
        Integer num;
        String str2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48348h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                a10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            PaymentRepo paymentRepo = PaymentRepo.f44308a;
            String str3 = this.f48349i;
            Integer num2 = this.f48350j;
            this.f48348h = 1;
            a10 = paymentRepo.a(str3, num2, this);
            if (a10 == f10) {
                return f10;
            }
        }
        BillingViewModel billingViewModel = this.f48351k;
        if (Result.j(a10)) {
            TTPInfoResult tTPInfoResult = (TTPInfoResult) a10;
            MutableLiveData<b> Q = billingViewModel.Q();
            String str4 = null;
            if (tTPInfoResult != null) {
                str = tTPInfoResult.getOrderNo();
            } else {
                str = null;
            }
            if (tTPInfoResult != null) {
                num = tTPInfoResult.getOrderStatus();
            } else {
                num = null;
            }
            if (tTPInfoResult != null) {
                str2 = tTPInfoResult.getCurrencyCode();
            } else {
                str2 = null;
            }
            if (tTPInfoResult != null) {
                str4 = tTPInfoResult.getPrice();
            }
            o.b(Q, new b.o(new TTPInfoResult(num, str, str2, str4)));
        }
        BillingViewModel billingViewModel2 = this.f48351k;
        Throwable g10 = Result.g(a10);
        if (g10 != null) {
            billingViewModel2.z(g10);
        }
        return Unit.f60915a;
    }
}
