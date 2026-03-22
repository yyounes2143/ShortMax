package com.startshorts.androidplayer.repo.billing.purchase;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS", f = "PurchaseRemoteDS.kt", l = {77}, m = "gPayBatchUnlockExchangeCoins-hUnOzRk")
/* loaded from: classes7.dex */
public final class PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43333h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PurchaseRemoteDS f43334i;

    /* renamed from: j  reason: collision with root package name */
    int f43335j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$1(PurchaseRemoteDS purchaseRemoteDS, c<? super PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$1> cVar) {
        super(cVar);
        this.f43334i = purchaseRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43333h = obj;
        this.f43335j |= Integer.MIN_VALUE;
        Object a10 = this.f43334i.a(null, null, null, null, null, this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
