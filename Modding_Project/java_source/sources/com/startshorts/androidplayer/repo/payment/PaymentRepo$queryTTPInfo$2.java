package com.startshorts.androidplayer.repo.payment;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.payment.TTPInfoResult;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PaymentRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.payment.PaymentRepo$queryTTPInfo$2", f = "PaymentRepo.kt", l = {13}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PaymentRepo$queryTTPInfo$2 extends SuspendLambda implements Function1<c<? super ServerResult<TTPInfoResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44312h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f44313i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Integer f44314j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentRepo$queryTTPInfo$2(String str, Integer num, c<? super PaymentRepo$queryTTPInfo$2> cVar) {
        super(1, cVar);
        this.f44313i = str;
        this.f44314j = num;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new PaymentRepo$queryTTPInfo$2(this.f44313i, this.f44314j, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44312h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String str = this.f44313i;
            Integer num = this.f44314j;
            this.f44312h = 1;
            obj = j10.d(str, num, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<TTPInfoResult>> cVar) {
        return ((PaymentRepo$queryTTPInfo$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
