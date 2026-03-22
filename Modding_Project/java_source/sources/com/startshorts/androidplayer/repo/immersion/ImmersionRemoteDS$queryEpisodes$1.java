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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS", f = "ImmersionRemoteDS.kt", l = {71}, m = "queryEpisodes-eH_QyT8")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryEpisodes$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44083h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionRemoteDS f44084i;

    /* renamed from: j  reason: collision with root package name */
    int f44085j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRemoteDS$queryEpisodes$1(ImmersionRemoteDS immersionRemoteDS, c<? super ImmersionRemoteDS$queryEpisodes$1> cVar) {
        super(cVar);
        this.f44084i = immersionRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44083h = obj;
        this.f44085j |= Integer.MIN_VALUE;
        Object c10 = this.f44084i.c(null, null, 0, 0, 0, 0, false, this);
        if (c10 == kotlin.coroutines.intrinsics.a.f()) {
            return c10;
        }
        return Result.b(c10);
    }
}
