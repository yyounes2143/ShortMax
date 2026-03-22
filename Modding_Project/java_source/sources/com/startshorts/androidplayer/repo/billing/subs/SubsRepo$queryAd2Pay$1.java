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
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRepo", f = "SubsRepo.kt", l = {48}, m = "queryAd2Pay-IoAF18A")
/* loaded from: classes7.dex */
public final class SubsRepo$queryAd2Pay$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43556h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsRepo f43557i;

    /* renamed from: j  reason: collision with root package name */
    int f43558j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRepo$queryAd2Pay$1(SubsRepo subsRepo, c<? super SubsRepo$queryAd2Pay$1> cVar) {
        super(cVar);
        this.f43557i = subsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43556h = obj;
        this.f43558j |= Integer.MIN_VALUE;
        Object n10 = this.f43557i.n(this);
        if (n10 == kotlin.coroutines.intrinsics.a.f()) {
            return n10;
        }
        return Result.b(n10);
    }
}
