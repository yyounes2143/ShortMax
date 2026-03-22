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
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS", f = "PurchaseRemoteDS.kt", l = {50}, m = "gPayExchangeCoins-hUnOzRk")
/* loaded from: classes7.dex */
public final class PurchaseRemoteDS$gPayExchangeCoins$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43345h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PurchaseRemoteDS f43346i;

    /* renamed from: j  reason: collision with root package name */
    int f43347j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRemoteDS$gPayExchangeCoins$1(PurchaseRemoteDS purchaseRemoteDS, c<? super PurchaseRemoteDS$gPayExchangeCoins$1> cVar) {
        super(cVar);
        this.f43346i = purchaseRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43345h = obj;
        this.f43347j |= Integer.MIN_VALUE;
        Object c10 = this.f43346i.c(null, null, null, null, null, this);
        if (c10 == a.f()) {
            return c10;
        }
        return Result.b(c10);
    }
}
