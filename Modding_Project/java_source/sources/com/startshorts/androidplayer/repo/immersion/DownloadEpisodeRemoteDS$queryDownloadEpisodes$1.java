package com.startshorts.androidplayer.repo.immersion;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadEpisodeRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.DownloadEpisodeRemoteDS", f = "DownloadEpisodeRemoteDS.kt", l = {20}, m = "queryDownloadEpisodes-gIAlu-s")
/* loaded from: classes7.dex */
public final class DownloadEpisodeRemoteDS$queryDownloadEpisodes$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44022h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DownloadEpisodeRemoteDS f44023i;

    /* renamed from: j  reason: collision with root package name */
    int f44024j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadEpisodeRemoteDS$queryDownloadEpisodes$1(DownloadEpisodeRemoteDS downloadEpisodeRemoteDS, c<? super DownloadEpisodeRemoteDS$queryDownloadEpisodes$1> cVar) {
        super(cVar);
        this.f44023i = downloadEpisodeRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44022h = obj;
        this.f44024j |= Integer.MIN_VALUE;
        Object a10 = this.f44023i.a(0, this);
        if (a10 == kotlin.coroutines.intrinsics.a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
