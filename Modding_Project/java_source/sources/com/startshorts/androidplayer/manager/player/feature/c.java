package com.startshorts.androidplayer.manager.player.feature;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.ttm.player.PlaybackParams;
import com.ss.ttvideoengine.SeekCompletionListener;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.configure.FeatureController;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import lf.s;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.g;
/* compiled from: CommonFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class c extends com.startshorts.androidplayer.manager.player.feature.b {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f42713d = new a(null);

    /* compiled from: CommonFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: CommonFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b extends g {
        b() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surface, int i10, int i11) {
            Intrinsics.checkNotNullParameter(surface, "surface");
            Logger.f41511a.e("CommonFeature", "onSurfaceTextureAvailable");
            c.this.m(surface);
        }

        @Override // yd.g, android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
            Intrinsics.checkNotNullParameter(surface, "surface");
            Logger.f41511a.e("CommonFeature", "onSurfaceTextureDestroyed");
            return super.onSurfaceTextureDestroyed(surface);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String e(FeatureController value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value.getPlayerNetworkTimeoutCountryCodes();
    }

    private final void f(TextureView textureView) {
        textureView.setSurfaceTextureListener(new b());
        SurfaceTexture surfaceTexture = textureView.getSurfaceTexture();
        if (surfaceTexture != null) {
            Logger.f41511a.e("CommonFeature", "exist surfaceTexture");
            m(surfaceTexture);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(int i10, Function1 function1, boolean z10) {
        Logger logger = Logger.f41511a;
        logger.h("CommonFeature", "seekTo millis(" + i10 + ") result(" + z10 + ')');
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(z10));
        }
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.b, com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    public void a(@NotNull TTVideoEngine player, @NotNull s params) {
        Intrinsics.checkNotNullParameter(player, "player");
        Intrinsics.checkNotNullParameter(params, "params");
        super.a(player, params);
        player.setTag(params.k());
        player.setStrategySource(params.i());
        if (params.g() instanceof SurfaceView) {
            View g10 = params.g();
            Intrinsics.checkNotNull(g10, "null cannot be cast to non-null type android.view.SurfaceView");
            player.setSurfaceHolder(((SurfaceView) g10).getHolder());
        } else if (params.g() instanceof TextureView) {
            View g11 = params.g();
            Intrinsics.checkNotNull(g11, "null cannot be cast to non-null type android.view.TextureView");
            f((TextureView) g11);
        }
        player.setDisplayMode(params.g(), params.a());
        player.setIntOption(TTVideoEngineInterface.PLAYER_OPTION_INT_ALLOW_ALL_EXTENSIONS, 1);
        player.setIntOption(602, params.f());
        player.setIntOption(5000, 1);
        player.setIntOption(322, 0);
        player.setIntOption(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_SEEK_LASTFRAME, 1);
        player.setIntOption(402, 1);
        qe.a aVar = qe.a.f65321a;
        if (aVar.f(new Function1() { // from class: nf.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String e10;
                e10 = com.startshorts.androidplayer.manager.player.feature.c.e((FeatureController) obj);
                return e10;
            }
        })) {
            player.setIntOption(12, aVar.value().getPlayerNetworkTimeout());
        }
        PlaybackParams playbackParams = new PlaybackParams();
        playbackParams.setSpeed(params.e());
        player.setPlaybackParams(playbackParams);
        player.setStartTime(params.h());
        player.setIsMute(params.m());
        player.setLooping(params.c());
    }

    public final void g() {
        TTVideoEngine b10 = b();
        if (b10 != null) {
            b10.pause();
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("CommonFeature", CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
        }
    }

    public final void h(@NotNull Function2<? super Integer, ? super Integer, Unit> onResult) {
        Intrinsics.checkNotNullParameter(onResult, "onResult");
        TTVideoEngine b10 = b();
        if (b10 == null) {
            return;
        }
        onResult.invoke(Integer.valueOf(b10.getDuration()), Integer.valueOf(b10.getCurrentPlaybackTime()));
    }

    public final void i() {
        TTVideoEngine b10 = b();
        if (b10 != null) {
            b10.play();
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("CommonFeature", CampaignEx.JSON_NATIVE_VIDEO_RESUME);
        }
    }

    public final void j(final int i10, @Nullable final Function1<? super Boolean, Unit> function1) {
        TTVideoEngine b10 = b();
        if (b10 != null) {
            b10.seekTo(i10, new SeekCompletionListener() { // from class: nf.b
                @Override // com.ss.ttvideoengine.SeekCompletionListener
                public final void onCompletion(boolean z10) {
                    com.startshorts.androidplayer.manager.player.feature.c.k(i10, function1, z10);
                }
            });
        }
    }

    public final void l(boolean z10) {
        TTVideoEngine b10 = b();
        if (b10 != null) {
            b10.setIsMute(z10);
        }
    }

    public final void m(@NotNull SurfaceTexture surfaceTexture) {
        Intrinsics.checkNotNullParameter(surfaceTexture, "surfaceTexture");
        TTVideoEngine b10 = b();
        if (b10 != null) {
            b10.setSurface(new Surface(surfaceTexture));
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("CommonFeature", "setSurfaceTexture");
        }
    }

    public final void n() {
        TTVideoEngine b10 = b();
        if (b10 != null) {
            b10.stop();
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("CommonFeature", "stop");
        }
    }

    public final void o(float f10) {
        TTVideoEngine b10 = b();
        if (b10 != null) {
            PlaybackParams playbackParams = new PlaybackParams();
            playbackParams.setSpeed(f10);
            b10.setPlaybackParams(playbackParams);
            Unit unit = Unit.f60915a;
            Logger logger = Logger.f41511a;
            logger.h("CommonFeature", "updatePlaySpeed -> speed(" + f10 + ')');
        }
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    @NotNull
    public IVideoPlayerFeature.FeatureType type() {
        return IVideoPlayerFeature.FeatureType.BASE;
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.b, com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    public void release() {
    }
}
