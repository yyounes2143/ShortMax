package com.startshorts.androidplayer.repo.billing;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingRepo.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.repo.billing.BillingRepo", f = "BillingRepo.kt", l = {587, 601, 604}, m = "handleNotAcknowledgedPurchases")
/* loaded from: classes7.dex */
public final class BillingRepo$handleNotAcknowledgedPurchases$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    boolean f43261h;

    /* renamed from: i  reason: collision with root package name */
    Object f43262i;

    /* renamed from: j  reason: collision with root package name */
    Object f43263j;

    /* renamed from: k  reason: collision with root package name */
    Object f43264k;

    /* renamed from: l  reason: collision with root package name */
    Object f43265l;

    /* renamed from: m  reason: collision with root package name */
    Object f43266m;

    /* renamed from: n  reason: collision with root package name */
    /* synthetic */ Object f43267n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ BillingRepo f43268o;

    /* renamed from: p  reason: collision with root package name */
    int f43269p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingRepo$handleNotAcknowledgedPurchases$1(BillingRepo billingRepo, rs.c<? super BillingRepo$handleNotAcknowledgedPurchases$1> cVar) {
        super(cVar);
        this.f43268o = billingRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43267n = obj;
        this.f43269p |= Integer.MIN_VALUE;
        return this.f43268o.E(false, null, null, this);
    }
}
