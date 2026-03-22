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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS", f = "ImmersionRemoteDS.kt", l = {46}, m = "queryEpisodeIdByEpisodeNum-0E7RQCE")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44072h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionRemoteDS f44073i;

    /* renamed from: j  reason: collision with root package name */
    int f44074j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1(ImmersionRemoteDS immersionRemoteDS, c<? super ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1> cVar) {
        super(cVar);
        this.f44073i = immersionRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44072h = obj;
        this.f44074j |= Integer.MIN_VALUE;
        Object a10 = this.f44073i.a(0, null, this);
        if (a10 == kotlin.coroutines.intrinsics.a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
