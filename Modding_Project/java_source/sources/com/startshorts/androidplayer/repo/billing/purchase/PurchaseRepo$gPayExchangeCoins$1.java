package com.startshorts.androidplayer.repo.billing.purchase;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo", f = "PurchaseRepo.kt", l = {172, 177, 186, 200, 208, 211}, m = "gPayExchangeCoins")
/* loaded from: classes7.dex */
public final class PurchaseRepo$gPayExchangeCoins$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f43396h;

    /* renamed from: i  reason: collision with root package name */
    Object f43397i;

    /* renamed from: j  reason: collision with root package name */
    Object f43398j;

    /* renamed from: k  reason: collision with root package name */
    Object f43399k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f43400l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ PurchaseRepo f43401m;

    /* renamed from: n  reason: collision with root package name */
    int f43402n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRepo$gPayExchangeCoins$1(PurchaseRepo purchaseRepo, c<? super PurchaseRepo$gPayExchangeCoins$1> cVar) {
        super(cVar);
        this.f43401m = purchaseRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43400l = obj;
        this.f43402n |= Integer.MIN_VALUE;
        return this.f43401m.j(null, null, null, null, null, null, this);
    }
}
