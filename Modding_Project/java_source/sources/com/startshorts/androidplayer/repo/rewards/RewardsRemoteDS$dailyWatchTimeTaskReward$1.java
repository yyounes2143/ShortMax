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
/* compiled from: RewardsRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS", f = "RewardsRemoteDS.kt", l = {53}, m = "dailyWatchTimeTaskReward-0E7RQCE")
/* loaded from: classes7.dex */
public final class RewardsRemoteDS$dailyWatchTimeTaskReward$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44461h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRemoteDS f44462i;

    /* renamed from: j  reason: collision with root package name */
    int f44463j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRemoteDS$dailyWatchTimeTaskReward$1(RewardsRemoteDS rewardsRemoteDS, c<? super RewardsRemoteDS$dailyWatchTimeTaskReward$1> cVar) {
        super(cVar);
        this.f44462i = rewardsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44461h = obj;
        this.f44463j |= Integer.MIN_VALUE;
        Object c10 = this.f44462i.c(null, null, this);
        if (c10 == a.f()) {
            return c10;
        }
        return Result.b(c10);
    }
}
