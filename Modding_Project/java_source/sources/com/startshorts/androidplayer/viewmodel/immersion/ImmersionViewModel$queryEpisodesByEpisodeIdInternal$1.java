package com.startshorts.androidplayer.viewmodel.immersion;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel", f = "ImmersionViewModel.kt", l = {595, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TOTAL_CACHED_LEN}, m = "queryEpisodesByEpisodeIdInternal")
/* loaded from: classes7.dex */
public final class ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f48593h;

    /* renamed from: i  reason: collision with root package name */
    Object f48594i;

    /* renamed from: j  reason: collision with root package name */
    Object f48595j;

    /* renamed from: k  reason: collision with root package name */
    Object f48596k;

    /* renamed from: l  reason: collision with root package name */
    boolean f48597l;

    /* renamed from: m  reason: collision with root package name */
    boolean f48598m;

    /* renamed from: n  reason: collision with root package name */
    boolean f48599n;

    /* renamed from: o  reason: collision with root package name */
    boolean f48600o;

    /* renamed from: p  reason: collision with root package name */
    int f48601p;

    /* renamed from: q  reason: collision with root package name */
    int f48602q;

    /* renamed from: r  reason: collision with root package name */
    int f48603r;

    /* renamed from: s  reason: collision with root package name */
    int f48604s;

    /* renamed from: t  reason: collision with root package name */
    /* synthetic */ Object f48605t;

    /* renamed from: u  reason: collision with root package name */
    final /* synthetic */ ImmersionViewModel f48606u;

    /* renamed from: v  reason: collision with root package name */
    int f48607v;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1(ImmersionViewModel immersionViewModel, rs.c<? super ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1> cVar) {
        super(cVar);
        this.f48606u = immersionViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object l02;
        this.f48605t = obj;
        this.f48607v |= Integer.MIN_VALUE;
        l02 = this.f48606u.l0(null, false, 0, 0, 0, 0, 0, false, null, false, false, false, this);
        return l02;
    }
}
