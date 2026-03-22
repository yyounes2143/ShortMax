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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRepo", f = "RewardsRepo.kt", l = {118, 120}, m = "acceptTaskReward-BWLJW6A")
/* loaded from: classes7.dex */
public final class RewardsRepo$acceptTaskReward$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44518h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRepo f44519i;

    /* renamed from: j  reason: collision with root package name */
    int f44520j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRepo$acceptTaskReward$1(RewardsRepo rewardsRepo, c<? super RewardsRepo$acceptTaskReward$1> cVar) {
        super(cVar);
        this.f44519i = rewardsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44518h = obj;
        this.f44520j |= Integer.MIN_VALUE;
        Object c10 = this.f44519i.c(null, null, false, this);
        if (c10 == a.f()) {
            return c10;
        }
        return Result.b(c10);
    }
}
