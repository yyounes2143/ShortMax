package com.startshorts.androidplayer.viewmodel.shorts;

import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: ShortsViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.shorts.ShortsViewModel$preloadNextEpisodeForImmersion$1", f = "ShortsViewModel.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_DELAY_BUFFERING_UPDATE, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC, MediaPlayer.MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS, MediaPlayer.MEDIA_PLAYER_OPTION_FRC_LEVEL, 287}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class ShortsViewModel$preloadNextEpisodeForImmersion$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f49395h;

    /* renamed from: i  reason: collision with root package name */
    Object f49396i;

    /* renamed from: j  reason: collision with root package name */
    Object f49397j;

    /* renamed from: k  reason: collision with root package name */
    int f49398k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ ShortsEpisode f49399l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsViewModel$preloadNextEpisodeForImmersion$1(ShortsEpisode shortsEpisode, c<? super ShortsViewModel$preloadNextEpisodeForImmersion$1> cVar) {
        super(2, cVar);
        this.f49399l = shortsEpisode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ShortsViewModel$preloadNextEpisodeForImmersion$1(this.f49399l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ShortsViewModel$preloadNextEpisodeForImmersion$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01f1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x020a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.shorts.ShortsViewModel$preloadNextEpisodeForImmersion$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
