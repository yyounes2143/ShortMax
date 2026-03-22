package com.startshorts.androidplayer.manager.push;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultPushManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.DefaultPushManager", f = "DefaultPushManager.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_REQ_FINSIH_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FFMPEG_LOG_LEVEL, MediaPlayer.MEDIA_PLAYER_OPTION_FRC_LEVEL, MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE, MediaPlayer.MEDIA_PLAYER_OPTION_KEEP_FORMAT_THREAD_ALIVE}, m = "executePushTask")
/* loaded from: classes6.dex */
public final class DefaultPushManager$executePushTask$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42774h;

    /* renamed from: i  reason: collision with root package name */
    Object f42775i;

    /* renamed from: j  reason: collision with root package name */
    Object f42776j;

    /* renamed from: k  reason: collision with root package name */
    long f42777k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f42778l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ DefaultPushManager f42779m;

    /* renamed from: n  reason: collision with root package name */
    int f42780n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultPushManager$executePushTask$1(DefaultPushManager defaultPushManager, c<? super DefaultPushManager$executePushTask$1> cVar) {
        super(cVar);
        this.f42779m = defaultPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object C;
        this.f42778l = obj;
        this.f42780n |= Integer.MIN_VALUE;
        C = this.f42779m.C(null, null, this);
        return C;
    }
}
