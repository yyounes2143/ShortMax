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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRepo", f = "RewardsRepo.kt", l = {95, 97}, m = "checkIn-BWLJW6A")
/* loaded from: classes7.dex */
public final class RewardsRepo$checkIn$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44521h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRepo f44522i;

    /* renamed from: j  reason: collision with root package name */
    int f44523j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRepo$checkIn$1(RewardsRepo rewardsRepo, c<? super RewardsRepo$checkIn$1> cVar) {
        super(cVar);
        this.f44522i = rewardsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44521h = obj;
        this.f44523j |= Integer.MIN_VALUE;
        Object e10 = this.f44522i.e(null, null, false, this);
        if (e10 == a.f()) {
            return e10;
        }
        return Result.b(e10);
    }
}
