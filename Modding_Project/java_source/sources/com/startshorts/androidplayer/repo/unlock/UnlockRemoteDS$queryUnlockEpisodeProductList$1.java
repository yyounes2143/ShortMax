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
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS", f = "UnlockRemoteDS.kt", l = {70}, m = "queryUnlockEpisodeProductList-yxL6bBk")
/* loaded from: classes7.dex */
public final class UnlockRemoteDS$queryUnlockEpisodeProductList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44649h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ UnlockRemoteDS f44650i;

    /* renamed from: j  reason: collision with root package name */
    int f44651j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRemoteDS$queryUnlockEpisodeProductList$1(UnlockRemoteDS unlockRemoteDS, c<? super UnlockRemoteDS$queryUnlockEpisodeProductList$1> cVar) {
        super(cVar);
        this.f44650i = unlockRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44649h = obj;
        this.f44651j |= Integer.MIN_VALUE;
        Object c10 = this.f44650i.c(null, 0, 0, null, this);
        if (c10 == a.f()) {
            return c10;
        }
        return Result.b(c10);
    }
}
