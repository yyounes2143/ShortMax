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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRepo", f = "RewardsRepo.kt", l = {105}, m = "querySignAdTaskInfo-IoAF18A")
/* loaded from: classes7.dex */
public final class RewardsRepo$querySignAdTaskInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44538h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRepo f44539i;

    /* renamed from: j  reason: collision with root package name */
    int f44540j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRepo$querySignAdTaskInfo$1(RewardsRepo rewardsRepo, c<? super RewardsRepo$querySignAdTaskInfo$1> cVar) {
        super(cVar);
        this.f44539i = rewardsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44538h = obj;
        this.f44540j |= Integer.MIN_VALUE;
        Object v10 = this.f44539i.v(this);
        if (v10 == a.f()) {
            return v10;
        }
        return Result.b(v10);
    }
}
