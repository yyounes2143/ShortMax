package com.startshorts.androidplayer.viewmodel.immersion;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel", f = "ImmersionViewModel.kt", l = {479, 481, TTVideoEngineInterface.PLAYER_OPTION_UPDATE_TIMESTAMP_MODE}, m = "queryEpisodesForNextShortsIfTrailer")
/* loaded from: classes7.dex */
public final class ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f48633h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f48634i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ImmersionViewModel f48635j;

    /* renamed from: k  reason: collision with root package name */
    int f48636k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1(ImmersionViewModel immersionViewModel, rs.c<? super ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1> cVar) {
        super(cVar);
        this.f48635j = immersionViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object s02;
        this.f48634i = obj;
        this.f48636k |= Integer.MIN_VALUE;
        s02 = this.f48635j.s0(null, this);
        return s02;
    }
}
