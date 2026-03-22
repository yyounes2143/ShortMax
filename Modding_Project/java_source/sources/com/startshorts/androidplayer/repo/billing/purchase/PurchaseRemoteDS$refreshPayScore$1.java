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
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS", f = "PurchaseRemoteDS.kt", l = {106}, m = "refreshPayScore-IoAF18A")
/* loaded from: classes7.dex */
public final class PurchaseRemoteDS$refreshPayScore$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43362h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PurchaseRemoteDS f43363i;

    /* renamed from: j  reason: collision with root package name */
    int f43364j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRemoteDS$refreshPayScore$1(PurchaseRemoteDS purchaseRemoteDS, c<? super PurchaseRemoteDS$refreshPayScore$1> cVar) {
        super(cVar);
        this.f43363i = purchaseRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43362h = obj;
        this.f43364j |= Integer.MIN_VALUE;
        Object f10 = this.f43363i.f(this);
        if (f10 == a.f()) {
            return f10;
        }
        return Result.b(f10);
    }
}
