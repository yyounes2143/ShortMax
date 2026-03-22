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
@d(c = "com.startshorts.androidplayer.repo.immersion.EpisodeRepo", f = "EpisodeRepo.kt", l = {110}, m = "queryEpisodeDetail-yxL6bBk")
/* loaded from: classes7.dex */
public final class EpisodeRepo$queryEpisodeDetail$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44060h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ EpisodeRepo f44061i;

    /* renamed from: j  reason: collision with root package name */
    int f44062j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EpisodeRepo$queryEpisodeDetail$1(EpisodeRepo episodeRepo, c<? super EpisodeRepo$queryEpisodeDetail$1> cVar) {
        super(cVar);
        this.f44061i = episodeRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44060h = obj;
        this.f44062j |= Integer.MIN_VALUE;
        Object r10 = this.f44061i.r(null, null, 0, 0, this);
        if (r10 == kotlin.coroutines.intrinsics.a.f()) {
            return r10;
        }
        return Result.b(r10);
    }
}
