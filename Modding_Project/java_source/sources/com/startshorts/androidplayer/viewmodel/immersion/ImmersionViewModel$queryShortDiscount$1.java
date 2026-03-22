package com.startshorts.androidplayer.viewmodel.immersion;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.shorts.ShortDiscountSku;
import com.startshorts.androidplayer.bean.shorts.ShortDiscountSkuResult;
import com.startshorts.androidplayer.repo.immersion.ImmersionRepo;
import com.startshorts.androidplayer.viewmodel.immersion.d;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryShortDiscount$1", f = "ImmersionViewModel.kt", l = {719}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class ImmersionViewModel$queryShortDiscount$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48642h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f48643i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ImmersionViewModel f48644j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$queryShortDiscount$1(int i10, ImmersionViewModel immersionViewModel, rs.c<? super ImmersionViewModel$queryShortDiscount$1> cVar) {
        super(2, cVar);
        this.f48643i = i10;
        this.f48644j = immersionViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionViewModel$queryShortDiscount$1(this.f48643i, this.f48644j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionViewModel$queryShortDiscount$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object x10;
        ShortDiscountSku shortDiscountSku;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48642h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                x10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            ImmersionRepo immersionRepo = ImmersionRepo.f44129a;
            int i11 = this.f48643i;
            this.f48642h = 1;
            x10 = immersionRepo.x(i11, this);
            if (x10 == f10) {
                return f10;
            }
        }
        ImmersionViewModel immersionViewModel = this.f48644j;
        int i12 = this.f48643i;
        if (Result.j(x10)) {
            ShortDiscountSkuResult shortDiscountSkuResult = (ShortDiscountSkuResult) x10;
            MutableLiveData<d> Q = immersionViewModel.Q();
            if (shortDiscountSkuResult != null) {
                shortDiscountSku = shortDiscountSkuResult.getValue();
            } else {
                shortDiscountSku = null;
            }
            o.b(Q, new d.g(i12, shortDiscountSku));
        }
        return Unit.f60915a;
    }
}
