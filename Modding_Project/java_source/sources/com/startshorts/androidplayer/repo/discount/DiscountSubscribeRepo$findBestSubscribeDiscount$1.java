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
@d(c = "com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo", f = "DiscountSubscribeRepo.kt", l = {15}, m = "findBestSubscribeDiscount-IoAF18A")
/* loaded from: classes7.dex */
public final class DiscountSubscribeRepo$findBestSubscribeDiscount$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43893h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscountSubscribeRepo f43894i;

    /* renamed from: j  reason: collision with root package name */
    int f43895j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscountSubscribeRepo$findBestSubscribeDiscount$1(DiscountSubscribeRepo discountSubscribeRepo, c<? super DiscountSubscribeRepo$findBestSubscribeDiscount$1> cVar) {
        super(cVar);
        this.f43894i = discountSubscribeRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43893h = obj;
        this.f43895j |= Integer.MIN_VALUE;
        Object b10 = this.f43894i.b(this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
