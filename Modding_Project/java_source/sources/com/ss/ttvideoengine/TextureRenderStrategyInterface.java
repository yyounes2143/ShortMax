package com.ss.ttvideoengine;

import android.os.Bundle;
import com.ss.texturerender.VideoSurface;
import com.ss.texturerender.effect.EffectConfig;
/* loaded from: classes6.dex */
public interface TextureRenderStrategyInterface {
    public static final String KEY_STRATEGY_HAS_FIRST_FRAME_SHOW = "HasFirstFrameShown";
    public static final String KEY_TRERENDERCONFIG_ASYNCINIT = "asyncInit";

    void didInitTextureRender(VideoSurface videoSurface);

    boolean isInitEffect();

    boolean isNeedAsyncEffect(EffectConfig effectConfig);

    boolean isPlaybackUse();

    void onRenderStart(float f10, VideoSurface videoSurface, boolean z10);

    void reset(VideoSurface videoSurface, boolean z10);

    void setEffect(Bundle bundle, VideoSurface videoSurface);

    void setIsInitEffect(boolean z10);
}
