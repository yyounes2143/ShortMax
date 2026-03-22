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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRepo", f = "RewardsRepo.kt", l = {88}, m = "startTask-0E7RQCE")
/* loaded from: classes7.dex */
public final class RewardsRepo$startTask$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44550h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRepo f44551i;

    /* renamed from: j  reason: collision with root package name */
    int f44552j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRepo$startTask$1(RewardsRepo rewardsRepo, c<? super RewardsRepo$startTask$1> cVar) {
        super(cVar);
        this.f44551i = rewardsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44550h = obj;
        this.f44552j |= Integer.MIN_VALUE;
        Object B = this.f44551i.B(null, 0, this);
        if (B == a.f()) {
            return B;
        }
        return Result.b(B);
    }
}
