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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS", f = "RewardsRemoteDS.kt", l = {23}, m = "queryCheckInInfo-gIAlu-s")
/* loaded from: classes7.dex */
public final class RewardsRemoteDS$queryCheckInInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44483h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRemoteDS f44484i;

    /* renamed from: j  reason: collision with root package name */
    int f44485j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRemoteDS$queryCheckInInfo$1(RewardsRemoteDS rewardsRemoteDS, c<? super RewardsRemoteDS$queryCheckInInfo$1> cVar) {
        super(cVar);
        this.f44484i = rewardsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44483h = obj;
        this.f44485j |= Integer.MIN_VALUE;
        Object g10 = this.f44484i.g(null, this);
        if (g10 == a.f()) {
            return g10;
        }
        return Result.b(g10);
    }
}
