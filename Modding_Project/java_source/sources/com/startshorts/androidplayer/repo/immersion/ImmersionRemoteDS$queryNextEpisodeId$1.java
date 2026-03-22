package com.startshorts.androidplayer.repo.immersion;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS", f = "ImmersionRemoteDS.kt", l = {57}, m = "queryNextEpisodeId-gIAlu-s")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryNextEpisodeId$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44111h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionRemoteDS f44112i;

    /* renamed from: j  reason: collision with root package name */
    int f44113j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRemoteDS$queryNextEpisodeId$1(ImmersionRemoteDS immersionRemoteDS, c<? super ImmersionRemoteDS$queryNextEpisodeId$1> cVar) {
        super(cVar);
        this.f44112i = immersionRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44111h = obj;
        this.f44113j |= Integer.MIN_VALUE;
        Object h10 = this.f44112i.h(0, this);
        if (h10 == kotlin.coroutines.intrinsics.a.f()) {
            return h10;
        }
        return Result.b(h10);
    }
}
