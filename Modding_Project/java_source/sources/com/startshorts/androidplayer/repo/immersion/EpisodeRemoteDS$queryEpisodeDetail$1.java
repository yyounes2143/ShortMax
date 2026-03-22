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
@d(c = "com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS", f = "EpisodeRemoteDS.kt", l = {26}, m = "queryEpisodeDetail-yxL6bBk")
/* loaded from: classes7.dex */
public final class EpisodeRemoteDS$queryEpisodeDetail$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44032h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ EpisodeRemoteDS f44033i;

    /* renamed from: j  reason: collision with root package name */
    int f44034j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EpisodeRemoteDS$queryEpisodeDetail$1(EpisodeRemoteDS episodeRemoteDS, c<? super EpisodeRemoteDS$queryEpisodeDetail$1> cVar) {
        super(cVar);
        this.f44033i = episodeRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44032h = obj;
        this.f44034j |= Integer.MIN_VALUE;
        Object a10 = this.f44033i.a(null, null, 0, 0, this);
        if (a10 == kotlin.coroutines.intrinsics.a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
