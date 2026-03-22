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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS", f = "RewardsRemoteDS.kt", l = {71}, m = "queryTaskList-IoAF18A")
/* loaded from: classes7.dex */
public final class RewardsRemoteDS$queryTaskList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44496h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRemoteDS f44497i;

    /* renamed from: j  reason: collision with root package name */
    int f44498j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRemoteDS$queryTaskList$1(RewardsRemoteDS rewardsRemoteDS, c<? super RewardsRemoteDS$queryTaskList$1> cVar) {
        super(cVar);
        this.f44497i = rewardsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44496h = obj;
        this.f44498j |= Integer.MIN_VALUE;
        Object j10 = this.f44497i.j(this);
        if (j10 == a.f()) {
            return j10;
        }
        return Result.b(j10);
    }
}
