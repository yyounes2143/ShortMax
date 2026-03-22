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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS", f = "ImmersionRemoteDS.kt", l = {52}, m = "queryEpisodeIdByShortsId-gIAlu-s")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryEpisodeIdByShortsId$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44078h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionRemoteDS f44079i;

    /* renamed from: j  reason: collision with root package name */
    int f44080j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRemoteDS$queryEpisodeIdByShortsId$1(ImmersionRemoteDS immersionRemoteDS, c<? super ImmersionRemoteDS$queryEpisodeIdByShortsId$1> cVar) {
        super(cVar);
        this.f44079i = immersionRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44078h = obj;
        this.f44080j |= Integer.MIN_VALUE;
        Object b10 = this.f44079i.b(0, this);
        if (b10 == kotlin.coroutines.intrinsics.a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
