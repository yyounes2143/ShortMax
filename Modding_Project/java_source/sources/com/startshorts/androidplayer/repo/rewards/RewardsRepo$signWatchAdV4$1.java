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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRepo", f = "RewardsRepo.kt", l = {102}, m = "signWatchAdV4-BWLJW6A")
/* loaded from: classes7.dex */
public final class RewardsRepo$signWatchAdV4$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44547h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRepo f44548i;

    /* renamed from: j  reason: collision with root package name */
    int f44549j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRepo$signWatchAdV4$1(RewardsRepo rewardsRepo, c<? super RewardsRepo$signWatchAdV4$1> cVar) {
        super(cVar);
        this.f44548i = rewardsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44547h = obj;
        this.f44549j |= Integer.MIN_VALUE;
        Object A = this.f44548i.A(null, 0, null, this);
        if (A == a.f()) {
            return A;
        }
        return Result.b(A);
    }
}
