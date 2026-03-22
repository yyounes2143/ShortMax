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
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo", f = "PurchaseRepo.kt", l = {97}, m = "queryBlackFridayCoinSkuList-IoAF18A")
/* loaded from: classes7.dex */
public final class PurchaseRepo$queryBlackFridayCoinSkuList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43421h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PurchaseRepo f43422i;

    /* renamed from: j  reason: collision with root package name */
    int f43423j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRepo$queryBlackFridayCoinSkuList$1(PurchaseRepo purchaseRepo, c<? super PurchaseRepo$queryBlackFridayCoinSkuList$1> cVar) {
        super(cVar);
        this.f43422i = purchaseRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43421h = obj;
        this.f43423j |= Integer.MIN_VALUE;
        Object r10 = this.f43422i.r(this);
        if (r10 == a.f()) {
            return r10;
        }
        return Result.b(r10);
    }
}
