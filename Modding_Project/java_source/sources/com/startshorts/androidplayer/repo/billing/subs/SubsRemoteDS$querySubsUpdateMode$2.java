package com.startshorts.androidplayer.repo.billing.subs;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.subs.SubsPrice;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.subs.SubsUpdateMode;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS$querySubsUpdateMode$2", f = "SubsRemoteDS.kt", l = {139}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SubsRemoteDS$querySubsUpdateMode$2 extends SuspendLambda implements Function1<c<? super ServerResult<SubsUpdateMode>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43478h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsSku f43479i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SubsPrice f43480j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRemoteDS$querySubsUpdateMode$2(SubsSku subsSku, SubsPrice subsPrice, c<? super SubsRemoteDS$querySubsUpdateMode$2> cVar) {
        super(1, cVar);
        this.f43479i = subsSku;
        this.f43480j = subsPrice;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new SubsRemoteDS$querySubsUpdateMode$2(this.f43479i, this.f43480j, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z10;
        long originPriceAmountMicros;
        String originCurrencyCode;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43478h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            if (this.f43479i.enableDiscount() && this.f43480j.getDiscountPriceAmountMicros() != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            SubsPrice subsPrice = this.f43480j;
            if (z10) {
                originPriceAmountMicros = subsPrice.getDiscountPriceAmountMicros();
            } else {
                originPriceAmountMicros = subsPrice.getOriginPriceAmountMicros();
            }
            long j10 = originPriceAmountMicros;
            if (z10) {
                originCurrencyCode = this.f43480j.getDiscountCurrencyCode();
            } else {
                originCurrencyCode = this.f43480j.getOriginCurrencyCode();
            }
            String str = originCurrencyCode;
            k.a j11 = k.f41787a.j();
            String productId = this.f43479i.getProductId();
            this.f43478h = 1;
            obj = j11.B(productId, j10, str, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<SubsUpdateMode>> cVar) {
        return ((SubsRemoteDS$querySubsUpdateMode$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
