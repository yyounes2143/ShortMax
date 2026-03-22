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
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS", f = "UnlockRemoteDS.kt", l = {136}, m = "singleUnlockEpisodeByAd-yxL6bBk")
/* loaded from: classes7.dex */
public final class UnlockRemoteDS$singleUnlockEpisodeByAd$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44667h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ UnlockRemoteDS f44668i;

    /* renamed from: j  reason: collision with root package name */
    int f44669j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRemoteDS$singleUnlockEpisodeByAd$1(UnlockRemoteDS unlockRemoteDS, c<? super UnlockRemoteDS$singleUnlockEpisodeByAd$1> cVar) {
        super(cVar);
        this.f44668i = unlockRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44667h = obj;
        this.f44669j |= Integer.MIN_VALUE;
        Object f10 = this.f44668i.f(null, null, false, false, this);
        if (f10 == a.f()) {
            return f10;
        }
        return Result.b(f10);
    }
}
