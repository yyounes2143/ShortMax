package com.startshorts.androidplayer.repo.immersion;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadEpisodeRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.DownloadEpisodeRepo", f = "DownloadEpisodeRepo.kt", l = {14}, m = "queryDownloadEpisodes-gIAlu-s")
/* loaded from: classes7.dex */
public final class DownloadEpisodeRepo$queryDownloadEpisodes$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44029h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DownloadEpisodeRepo f44030i;

    /* renamed from: j  reason: collision with root package name */
    int f44031j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadEpisodeRepo$queryDownloadEpisodes$1(DownloadEpisodeRepo downloadEpisodeRepo, c<? super DownloadEpisodeRepo$queryDownloadEpisodes$1> cVar) {
        super(cVar);
        this.f44030i = downloadEpisodeRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44029h = obj;
        this.f44031j |= Integer.MIN_VALUE;
        Object d10 = this.f44030i.d(0, this);
        if (d10 == kotlin.coroutines.intrinsics.a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
