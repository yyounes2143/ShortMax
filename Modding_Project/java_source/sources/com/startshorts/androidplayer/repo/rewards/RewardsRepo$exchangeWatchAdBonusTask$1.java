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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRepo", f = "RewardsRepo.kt", l = {112}, m = "exchangeWatchAdBonusTask-0E7RQCE")
/* loaded from: classes7.dex */
public final class RewardsRepo$exchangeWatchAdBonusTask$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44527h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRepo f44528i;

    /* renamed from: j  reason: collision with root package name */
    int f44529j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRepo$exchangeWatchAdBonusTask$1(RewardsRepo rewardsRepo, c<? super RewardsRepo$exchangeWatchAdBonusTask$1> cVar) {
        super(cVar);
        this.f44528i = rewardsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44527h = obj;
        this.f44529j |= Integer.MIN_VALUE;
        Object g10 = this.f44528i.g(0, null, this);
        if (g10 == a.f()) {
            return g10;
        }
        return Result.b(g10);
    }
}
