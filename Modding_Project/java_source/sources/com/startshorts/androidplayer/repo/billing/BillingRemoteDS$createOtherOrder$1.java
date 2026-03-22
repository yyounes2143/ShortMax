package com.startshorts.androidplayer.repo.billing;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingRemoteDS.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.repo.billing.BillingRemoteDS", f = "BillingRemoteDS.kt", l = {609}, m = "createOtherOrder-LiYkppA")
/* loaded from: classes7.dex */
public final class BillingRemoteDS$createOtherOrder$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43219h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BillingRemoteDS f43220i;

    /* renamed from: j  reason: collision with root package name */
    int f43221j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingRemoteDS$createOtherOrder$1(BillingRemoteDS billingRemoteDS, rs.c<? super BillingRemoteDS$createOtherOrder$1> cVar) {
        super(cVar);
        this.f43220i = billingRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43219h = obj;
        this.f43221j |= Integer.MIN_VALUE;
        Object z10 = this.f43220i.z(null, null, 0, null, null, null, null, null, null, this);
        if (z10 == kotlin.coroutines.intrinsics.a.f()) {
            return z10;
        }
        return Result.b(z10);
    }
}
