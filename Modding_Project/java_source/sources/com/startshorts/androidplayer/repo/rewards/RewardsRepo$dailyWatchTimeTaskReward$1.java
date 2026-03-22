package com.startshorts.androidplayer.repo.rewards;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RewardsRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRepo", f = "RewardsRepo.kt", l = {108}, m = "dailyWatchTimeTaskReward-0E7RQCE")
/* loaded from: classes7.dex */
public final class RewardsRepo$dailyWatchTimeTaskReward$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44524h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRepo f44525i;

    /* renamed from: j  reason: collision with root package name */
    int f44526j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRepo$dailyWatchTimeTaskReward$1(RewardsRepo rewardsRepo, c<? super RewardsRepo$dailyWatchTimeTaskReward$1> cVar) {
        super(cVar);
        this.f44525i = rewardsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44524h = obj;
        this.f44526j |= Integer.MIN_VALUE;
        Object f10 = this.f44525i.f(null, null, this);
        if (f10 == a.f()) {
            return f10;
        }
        return Result.b(f10);
    }
}
