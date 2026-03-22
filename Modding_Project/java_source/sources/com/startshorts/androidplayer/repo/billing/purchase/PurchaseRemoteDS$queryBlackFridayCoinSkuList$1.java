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
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS", f = "PurchaseRemoteDS.kt", l = {41}, m = "queryBlackFridayCoinSkuList-IoAF18A")
/* loaded from: classes7.dex */
public final class PurchaseRemoteDS$queryBlackFridayCoinSkuList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43353h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PurchaseRemoteDS f43354i;

    /* renamed from: j  reason: collision with root package name */
    int f43355j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRemoteDS$queryBlackFridayCoinSkuList$1(PurchaseRemoteDS purchaseRemoteDS, c<? super PurchaseRemoteDS$queryBlackFridayCoinSkuList$1> cVar) {
        super(cVar);
        this.f43354i = purchaseRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43353h = obj;
        this.f43355j |= Integer.MIN_VALUE;
        Object d10 = this.f43354i.d(this);
        if (d10 == a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
