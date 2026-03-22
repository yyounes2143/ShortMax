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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS", f = "RewardsRemoteDS.kt", l = {36}, m = "homeDialogCheckIn-0E7RQCE")
/* loaded from: classes7.dex */
public final class RewardsRemoteDS$homeDialogCheckIn$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44478h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRemoteDS f44479i;

    /* renamed from: j  reason: collision with root package name */
    int f44480j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRemoteDS$homeDialogCheckIn$1(RewardsRemoteDS rewardsRemoteDS, c<? super RewardsRemoteDS$homeDialogCheckIn$1> cVar) {
        super(cVar);
        this.f44479i = rewardsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44478h = obj;
        this.f44480j |= Integer.MIN_VALUE;
        Object f10 = this.f44479i.f(null, null, this);
        if (f10 == a.f()) {
            return f10;
        }
        return Result.b(f10);
    }
}
