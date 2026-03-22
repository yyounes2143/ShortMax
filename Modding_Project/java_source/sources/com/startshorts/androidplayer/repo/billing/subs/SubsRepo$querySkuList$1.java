package com.startshorts.androidplayer.repo.billing.subs;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRepo", f = "SubsRepo.kt", l = {44}, m = "querySkuList-IoAF18A")
/* loaded from: classes7.dex */
public final class SubsRepo$querySkuList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43559h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsRepo f43560i;

    /* renamed from: j  reason: collision with root package name */
    int f43561j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRepo$querySkuList$1(SubsRepo subsRepo, c<? super SubsRepo$querySkuList$1> cVar) {
        super(cVar);
        this.f43560i = subsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43559h = obj;
        this.f43561j |= Integer.MIN_VALUE;
        Object o10 = this.f43560i.o(this);
        if (o10 == kotlin.coroutines.intrinsics.a.f()) {
            return o10;
        }
        return Result.b(o10);
    }
}
