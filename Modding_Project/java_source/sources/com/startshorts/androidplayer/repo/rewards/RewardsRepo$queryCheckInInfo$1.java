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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRepo", f = "RewardsRepo.kt", l = {91}, m = "queryCheckInInfo-gIAlu-s")
/* loaded from: classes7.dex */
public final class RewardsRepo$queryCheckInInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44532h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRepo f44533i;

    /* renamed from: j  reason: collision with root package name */
    int f44534j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRepo$queryCheckInInfo$1(RewardsRepo rewardsRepo, c<? super RewardsRepo$queryCheckInInfo$1> cVar) {
        super(cVar);
        this.f44533i = rewardsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44532h = obj;
        this.f44534j |= Integer.MIN_VALUE;
        Object t10 = this.f44533i.t(null, this);
        if (t10 == a.f()) {
            return t10;
        }
        return Result.b(t10);
    }
}
