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
@d(c = "com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS", f = "EpisodeRemoteDS.kt", l = {37}, m = "queryRecommendEpisode-IoAF18A")
/* loaded from: classes7.dex */
public final class EpisodeRemoteDS$queryRecommendEpisode$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44046h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ EpisodeRemoteDS f44047i;

    /* renamed from: j  reason: collision with root package name */
    int f44048j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EpisodeRemoteDS$queryRecommendEpisode$1(EpisodeRemoteDS episodeRemoteDS, c<? super EpisodeRemoteDS$queryRecommendEpisode$1> cVar) {
        super(cVar);
        this.f44047i = episodeRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44046h = obj;
        this.f44048j |= Integer.MIN_VALUE;
        Object c10 = this.f44047i.c(this);
        if (c10 == kotlin.coroutines.intrinsics.a.f()) {
            return c10;
        }
        return Result.b(c10);
    }
}
