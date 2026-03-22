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
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS", f = "UnlockRemoteDS.kt", l = {86}, m = "queryUnlockPanelAdd-gIAlu-s")
/* loaded from: classes7.dex */
public final class UnlockRemoteDS$queryUnlockPanelAdd$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44656h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ UnlockRemoteDS f44657i;

    /* renamed from: j  reason: collision with root package name */
    int f44658j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRemoteDS$queryUnlockPanelAdd$1(UnlockRemoteDS unlockRemoteDS, c<? super UnlockRemoteDS$queryUnlockPanelAdd$1> cVar) {
        super(cVar);
        this.f44657i = unlockRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44656h = obj;
        this.f44658j |= Integer.MIN_VALUE;
        Object d10 = this.f44657i.d(null, this);
        if (d10 == a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
