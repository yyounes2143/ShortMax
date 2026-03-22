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
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS", f = "PurchaseRemoteDS.kt", l = {31}, m = "queryNormalCoinSkuList-0E7RQCE")
/* loaded from: classes7.dex */
public final class PurchaseRemoteDS$queryNormalCoinSkuList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43357h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PurchaseRemoteDS f43358i;

    /* renamed from: j  reason: collision with root package name */
    int f43359j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRemoteDS$queryNormalCoinSkuList$1(PurchaseRemoteDS purchaseRemoteDS, c<? super PurchaseRemoteDS$queryNormalCoinSkuList$1> cVar) {
        super(cVar);
        this.f43358i = purchaseRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43357h = obj;
        this.f43359j |= Integer.MIN_VALUE;
        Object e10 = this.f43358i.e(false, null, this);
        if (e10 == a.f()) {
            return e10;
        }
        return Result.b(e10);
    }
}
