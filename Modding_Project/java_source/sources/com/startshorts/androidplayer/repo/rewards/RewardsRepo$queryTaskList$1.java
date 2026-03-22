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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRepo", f = "RewardsRepo.kt", l = {114}, m = "queryTaskList-IoAF18A")
/* loaded from: classes7.dex */
public final class RewardsRepo$queryTaskList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44541h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRepo f44542i;

    /* renamed from: j  reason: collision with root package name */
    int f44543j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRepo$queryTaskList$1(RewardsRepo rewardsRepo, c<? super RewardsRepo$queryTaskList$1> cVar) {
        super(cVar);
        this.f44542i = rewardsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44541h = obj;
        this.f44543j |= Integer.MIN_VALUE;
        Object w10 = this.f44542i.w(this);
        if (w10 == a.f()) {
            return w10;
        }
        return Result.b(w10);
    }
}
