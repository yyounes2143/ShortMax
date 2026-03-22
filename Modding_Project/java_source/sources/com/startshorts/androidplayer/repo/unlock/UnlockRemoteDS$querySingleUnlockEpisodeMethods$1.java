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
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS", f = "UnlockRemoteDS.kt", l = {38}, m = "querySingleUnlockEpisodeMethods-hUnOzRk")
/* loaded from: classes7.dex */
public final class UnlockRemoteDS$querySingleUnlockEpisodeMethods$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44642h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ UnlockRemoteDS f44643i;

    /* renamed from: j  reason: collision with root package name */
    int f44644j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRemoteDS$querySingleUnlockEpisodeMethods$1(UnlockRemoteDS unlockRemoteDS, c<? super UnlockRemoteDS$querySingleUnlockEpisodeMethods$1> cVar) {
        super(cVar);
        this.f44643i = unlockRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44642h = obj;
        this.f44644j |= Integer.MIN_VALUE;
        Object b10 = this.f44643i.b(false, null, 0, 0, null, this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
