package com.startshorts.androidplayer.manager.attribution.provider;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AFConversionDataProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider", f = "AFConversionDataProvider.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_DECODE_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS}, m = "handleActiveJumpImmersion")
/* loaded from: classes6.dex */
public final class AFConversionDataProvider$handleActiveJumpImmersion$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f41949h;

    /* renamed from: i  reason: collision with root package name */
    Object f41950i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f41951j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ AFConversionDataProvider f41952k;

    /* renamed from: l  reason: collision with root package name */
    int f41953l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFConversionDataProvider$handleActiveJumpImmersion$1(AFConversionDataProvider aFConversionDataProvider, rs.c<? super AFConversionDataProvider$handleActiveJumpImmersion$1> cVar) {
        super(cVar);
        this.f41952k = aFConversionDataProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object H;
        this.f41951j = obj;
        this.f41953l |= Integer.MIN_VALUE;
        H = this.f41952k.H(null, this);
        return H;
    }
}
