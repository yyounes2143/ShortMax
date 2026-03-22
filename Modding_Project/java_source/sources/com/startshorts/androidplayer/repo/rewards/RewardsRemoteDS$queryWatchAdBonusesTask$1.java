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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS", f = "RewardsRemoteDS.kt", l = {59}, m = "queryWatchAdBonusesTask-IoAF18A")
/* loaded from: classes7.dex */
public final class RewardsRemoteDS$queryWatchAdBonusesTask$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44500h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRemoteDS f44501i;

    /* renamed from: j  reason: collision with root package name */
    int f44502j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRemoteDS$queryWatchAdBonusesTask$1(RewardsRemoteDS rewardsRemoteDS, c<? super RewardsRemoteDS$queryWatchAdBonusesTask$1> cVar) {
        super(cVar);
        this.f44501i = rewardsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44500h = obj;
        this.f44502j |= Integer.MIN_VALUE;
        Object k10 = this.f44501i.k(this);
        if (k10 == a.f()) {
            return k10;
        }
        return Result.b(k10);
    }
}
