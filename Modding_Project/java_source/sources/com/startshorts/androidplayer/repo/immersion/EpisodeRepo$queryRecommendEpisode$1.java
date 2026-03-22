package com.startshorts.androidplayer.repo.immersion;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EpisodeRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.EpisodeRepo", f = "EpisodeRepo.kt", l = {122}, m = "queryRecommendEpisode-IoAF18A")
/* loaded from: classes7.dex */
public final class EpisodeRepo$queryRecommendEpisode$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44066h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ EpisodeRepo f44067i;

    /* renamed from: j  reason: collision with root package name */
    int f44068j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EpisodeRepo$queryRecommendEpisode$1(EpisodeRepo episodeRepo, c<? super EpisodeRepo$queryRecommendEpisode$1> cVar) {
        super(cVar);
        this.f44067i = episodeRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44066h = obj;
        this.f44068j |= Integer.MIN_VALUE;
        Object v10 = this.f44067i.v(this);
        if (v10 == kotlin.coroutines.intrinsics.a.f()) {
            return v10;
        }
        return Result.b(v10);
    }
}
