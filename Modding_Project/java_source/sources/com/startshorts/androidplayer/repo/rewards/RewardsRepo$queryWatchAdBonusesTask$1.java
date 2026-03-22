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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRepo", f = "RewardsRepo.kt", l = {110}, m = "queryWatchAdBonusesTask-IoAF18A")
/* loaded from: classes7.dex */
public final class RewardsRepo$queryWatchAdBonusesTask$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44544h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRepo f44545i;

    /* renamed from: j  reason: collision with root package name */
    int f44546j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRepo$queryWatchAdBonusesTask$1(RewardsRepo rewardsRepo, c<? super RewardsRepo$queryWatchAdBonusesTask$1> cVar) {
        super(cVar);
        this.f44545i = rewardsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44544h = obj;
        this.f44546j |= Integer.MIN_VALUE;
        Object x10 = this.f44545i.x(this);
        if (x10 == a.f()) {
            return x10;
        }
        return Result.b(x10);
    }
}
