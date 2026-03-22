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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS", f = "RewardsRemoteDS.kt", l = {17}, m = "queryDailyWatchTask-IoAF18A")
/* loaded from: classes7.dex */
public final class RewardsRemoteDS$queryDailyWatchTask$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44488h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRemoteDS f44489i;

    /* renamed from: j  reason: collision with root package name */
    int f44490j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRemoteDS$queryDailyWatchTask$1(RewardsRemoteDS rewardsRemoteDS, c<? super RewardsRemoteDS$queryDailyWatchTask$1> cVar) {
        super(cVar);
        this.f44489i = rewardsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44488h = obj;
        this.f44490j |= Integer.MIN_VALUE;
        Object h10 = this.f44489i.h(this);
        if (h10 == a.f()) {
            return h10;
        }
        return Result.b(h10);
    }
}
