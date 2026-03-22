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
/* compiled from: DiscountSubscribeRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo", f = "DiscountSubscribeRepo.kt", l = {11}, m = "queryDiscountSubscribe-IoAF18A")
/* loaded from: classes7.dex */
public final class DiscountSubscribeRepo$queryDiscountSubscribe$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43896h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscountSubscribeRepo f43897i;

    /* renamed from: j  reason: collision with root package name */
    int f43898j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscountSubscribeRepo$queryDiscountSubscribe$1(DiscountSubscribeRepo discountSubscribeRepo, c<? super DiscountSubscribeRepo$queryDiscountSubscribe$1> cVar) {
        super(cVar);
        this.f43897i = discountSubscribeRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43896h = obj;
        this.f43898j |= Integer.MIN_VALUE;
        Object e10 = this.f43897i.e(this);
        if (e10 == a.f()) {
            return e10;
        }
        return Result.b(e10);
    }
}
