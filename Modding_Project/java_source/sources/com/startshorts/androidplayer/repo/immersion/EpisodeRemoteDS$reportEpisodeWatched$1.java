package com.startshorts.androidplayer.repo.immersion;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EpisodeRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS", f = "EpisodeRemoteDS.kt", l = {20}, m = "reportEpisodeWatched-0E7RQCE")
/* loaded from: classes7.dex */
public final class EpisodeRemoteDS$reportEpisodeWatched$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44050h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ EpisodeRemoteDS f44051i;

    /* renamed from: j  reason: collision with root package name */
    int f44052j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EpisodeRemoteDS$reportEpisodeWatched$1(EpisodeRemoteDS episodeRemoteDS, c<? super EpisodeRemoteDS$reportEpisodeWatched$1> cVar) {
        super(cVar);
        this.f44051i = episodeRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44050h = obj;
        this.f44052j |= Integer.MIN_VALUE;
        Object d10 = this.f44051i.d(0, 0, this);
        if (d10 == kotlin.coroutines.intrinsics.a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
