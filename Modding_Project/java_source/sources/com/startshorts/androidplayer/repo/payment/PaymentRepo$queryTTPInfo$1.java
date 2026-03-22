package com.startshorts.androidplayer.repo.payment;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PaymentRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.payment.PaymentRepo", f = "PaymentRepo.kt", l = {12}, m = "queryTTPInfo-0E7RQCE")
/* loaded from: classes7.dex */
public final class PaymentRepo$queryTTPInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44309h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PaymentRepo f44310i;

    /* renamed from: j  reason: collision with root package name */
    int f44311j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentRepo$queryTTPInfo$1(PaymentRepo paymentRepo, c<? super PaymentRepo$queryTTPInfo$1> cVar) {
        super(cVar);
        this.f44310i = paymentRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44309h = obj;
        this.f44311j |= Integer.MIN_VALUE;
        Object a10 = this.f44310i.a(null, null, this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
