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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS", f = "RewardsRemoteDS.kt", l = {85}, m = "startTask-0E7RQCE")
/* loaded from: classes7.dex */
public final class RewardsRemoteDS$startTask$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44510h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRemoteDS f44511i;

    /* renamed from: j  reason: collision with root package name */
    int f44512j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRemoteDS$startTask$1(RewardsRemoteDS rewardsRemoteDS, c<? super RewardsRemoteDS$startTask$1> cVar) {
        super(cVar);
        this.f44511i = rewardsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44510h = obj;
        this.f44512j |= Integer.MIN_VALUE;
        Object m10 = this.f44511i.m(null, 0, this);
        if (m10 == a.f()) {
            return m10;
        }
        return Result.b(m10);
    }
}
