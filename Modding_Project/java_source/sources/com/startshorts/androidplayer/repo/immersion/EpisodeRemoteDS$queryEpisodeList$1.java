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
@d(c = "com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS", f = "EpisodeRemoteDS.kt", l = {49}, m = "queryEpisodeList-yxL6bBk")
/* loaded from: classes7.dex */
public final class EpisodeRemoteDS$queryEpisodeList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44039h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ EpisodeRemoteDS f44040i;

    /* renamed from: j  reason: collision with root package name */
    int f44041j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EpisodeRemoteDS$queryEpisodeList$1(EpisodeRemoteDS episodeRemoteDS, c<? super EpisodeRemoteDS$queryEpisodeList$1> cVar) {
        super(cVar);
        this.f44040i = episodeRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44039h = obj;
        this.f44041j |= Integer.MIN_VALUE;
        Object b10 = this.f44040i.b(null, 0, 0, 0, this);
        if (b10 == kotlin.coroutines.intrinsics.a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
