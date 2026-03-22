package com.startshorts.androidplayer.viewmodel.purchase;

import androidx.lifecycle.MutableLiveData;
import com.ss.ttvideoengine.model.VideoRef;
import com.startshorts.androidplayer.bean.payment.TTPInfoResult;
import com.startshorts.androidplayer.repo.payment.PaymentRepo;
import com.startshorts.androidplayer.viewmodel.purchase.b;
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
/* compiled from: PurchaseViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel$queryTTPInfo$1", f = "PurchaseViewModel.kt", l = {VideoRef.VALUE_VIDEO_REF_CONST_DEPTH}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class PurchaseViewModel$queryTTPInfo$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49011h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f49012i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Integer f49013j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ PurchaseViewModel f49014k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseViewModel$queryTTPInfo$1(String str, Integer num, PurchaseViewModel purchaseViewModel, c<? super PurchaseViewModel$queryTTPInfo$1> cVar) {
        super(2, cVar);
        this.f49012i = str;
        this.f49013j = num;
        this.f49014k = purchaseViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PurchaseViewModel$queryTTPInfo$1(this.f49012i, this.f49013j, this.f49014k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PurchaseViewModel$queryTTPInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object a10;
        String str;
        Integer num;
        String str2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49011h;
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
            String str3 = this.f49012i;
            Integer num2 = this.f49013j;
            this.f49011h = 1;
            a10 = paymentRepo.a(str3, num2, this);
            if (a10 == f10) {
                return f10;
            }
        }
        PurchaseViewModel purchaseViewModel = this.f49014k;
        if (Result.j(a10)) {
            TTPInfoResult tTPInfoResult = (TTPInfoResult) a10;
            MutableLiveData<b> R = purchaseViewModel.R();
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
            o.b(R, new b.g(new TTPInfoResult(num, str, str2, str4)));
        }
        PurchaseViewModel purchaseViewModel2 = this.f49014k;
        Throwable g10 = Result.g(a10);
        if (g10 != null) {
            purchaseViewModel2.z(g10);
        }
        return Unit.f60915a;
    }
}
