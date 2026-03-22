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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS", f = "ImmersionRemoteDS.kt", l = {31}, m = "queryNextEpisode-gIAlu-s")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryNextEpisode$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44106h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionRemoteDS f44107i;

    /* renamed from: j  reason: collision with root package name */
    int f44108j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRemoteDS$queryNextEpisode$1(ImmersionRemoteDS immersionRemoteDS, c<? super ImmersionRemoteDS$queryNextEpisode$1> cVar) {
        super(cVar);
        this.f44107i = immersionRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44106h = obj;
        this.f44108j |= Integer.MIN_VALUE;
        Object g10 = this.f44107i.g(0, this);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Result.b(g10);
    }
}
