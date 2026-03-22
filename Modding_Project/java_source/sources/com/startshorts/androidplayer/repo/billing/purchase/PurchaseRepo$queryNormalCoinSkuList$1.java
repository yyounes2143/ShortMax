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
/* compiled from: PurchaseRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo", f = "PurchaseRepo.kt", l = {58}, m = "queryNormalCoinSkuList-BWLJW6A")
/* loaded from: classes7.dex */
public final class PurchaseRepo$queryNormalCoinSkuList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    boolean f43424h;

    /* renamed from: i  reason: collision with root package name */
    Object f43425i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f43426j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ PurchaseRepo f43427k;

    /* renamed from: l  reason: collision with root package name */
    int f43428l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRepo$queryNormalCoinSkuList$1(PurchaseRepo purchaseRepo, c<? super PurchaseRepo$queryNormalCoinSkuList$1> cVar) {
        super(cVar);
        this.f43427k = purchaseRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43426j = obj;
        this.f43428l |= Integer.MIN_VALUE;
        Object s10 = this.f43427k.s(false, false, null, this);
        if (s10 == a.f()) {
            return s10;
        }
        return Result.b(s10);
    }
}
