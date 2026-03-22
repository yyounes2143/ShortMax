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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS", f = "RewardsRemoteDS.kt", l = {42}, m = "signWatchAdV4-BWLJW6A")
/* loaded from: classes7.dex */
public final class RewardsRemoteDS$signWatchAdV4$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44504h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsRemoteDS f44505i;

    /* renamed from: j  reason: collision with root package name */
    int f44506j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRemoteDS$signWatchAdV4$1(RewardsRemoteDS rewardsRemoteDS, c<? super RewardsRemoteDS$signWatchAdV4$1> cVar) {
        super(cVar);
        this.f44505i = rewardsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44504h = obj;
        this.f44506j |= Integer.MIN_VALUE;
        Object l10 = this.f44505i.l(null, 0, null, this);
        if (l10 == a.f()) {
            return l10;
        }
        return Result.b(l10);
    }
}
