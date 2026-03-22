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
@d(c = "com.startshorts.androidplayer.repo.discount.DiscountSubscribeRemoteDS", f = "DiscountSubscribeRemoteDS.kt", l = {14}, m = "queryDiscountSubscribe-IoAF18A")
/* loaded from: classes7.dex */
public final class DiscountSubscribeRemoteDS$queryDiscountSubscribe$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43887h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscountSubscribeRemoteDS f43888i;

    /* renamed from: j  reason: collision with root package name */
    int f43889j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscountSubscribeRemoteDS$queryDiscountSubscribe$1(DiscountSubscribeRemoteDS discountSubscribeRemoteDS, c<? super DiscountSubscribeRemoteDS$queryDiscountSubscribe$1> cVar) {
        super(cVar);
        this.f43888i = discountSubscribeRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43887h = obj;
        this.f43889j |= Integer.MIN_VALUE;
        Object b10 = this.f43888i.b(this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
