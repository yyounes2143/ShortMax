package com.startshorts.androidplayer.repo.unlock;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS", f = "UnlockRemoteDS.kt", l = {113}, m = "singleUnlockEpisodeByCoins-BWLJW6A")
/* loaded from: classes7.dex */
public final class UnlockRemoteDS$singleUnlockEpisodeByCoins$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44674h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ UnlockRemoteDS f44675i;

    /* renamed from: j  reason: collision with root package name */
    int f44676j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRemoteDS$singleUnlockEpisodeByCoins$1(UnlockRemoteDS unlockRemoteDS, c<? super UnlockRemoteDS$singleUnlockEpisodeByCoins$1> cVar) {
        super(cVar);
        this.f44675i = unlockRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44674h = obj;
        this.f44676j |= Integer.MIN_VALUE;
        Object g10 = this.f44675i.g(null, null, false, this);
        if (g10 == a.f()) {
            return g10;
        }
        return Result.b(g10);
    }
}
