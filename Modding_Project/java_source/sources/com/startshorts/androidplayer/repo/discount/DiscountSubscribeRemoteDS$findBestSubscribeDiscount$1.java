package com.startshorts.androidplayer.repo.discount;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscountSubscribeRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.discount.DiscountSubscribeRemoteDS", f = "DiscountSubscribeRemoteDS.kt", l = {20}, m = "findBestSubscribeDiscount-IoAF18A")
/* loaded from: classes7.dex */
public final class DiscountSubscribeRemoteDS$findBestSubscribeDiscount$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43883h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscountSubscribeRemoteDS f43884i;

    /* renamed from: j  reason: collision with root package name */
    int f43885j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscountSubscribeRemoteDS$findBestSubscribeDiscount$1(DiscountSubscribeRemoteDS discountSubscribeRemoteDS, c<? super DiscountSubscribeRemoteDS$findBestSubscribeDiscount$1> cVar) {
        super(cVar);
        this.f43884i = discountSubscribeRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43883h = obj;
        this.f43885j |= Integer.MIN_VALUE;
        Object a10 = this.f43884i.a(this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
