package com.ss.ttvideoengine;

import android.os.Bundle;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.VideoSurface;
import com.ss.texturerender.effect.EffectConfig;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
/* loaded from: classes6.dex */
public class TextureRenderStrategySharpen implements TextureRenderStrategyInterface {
    private boolean mIsInitSharpen = false;
    private boolean mOpensharpen = false;
    private boolean mPlaybackUseSharpen = false;
    private boolean mAsyncInit = false;
    private Bundle mInitBundle = null;

    private void openSharpen(boolean z10, VideoSurface videoSurface, boolean z11) {
        this.mOpensharpen = z10;
        if (videoSurface != null && z11) {
            try {
                Bundle bundle = new Bundle();
                bundle.putInt(TextureRenderKeys.KEY_IS_ACTION, 19);
                bundle.putInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE, 1);
                bundle.putInt(TextureRenderKeys.KEY_IS_INT_VALUE, this.mOpensharpen ? 1 : 0);
                videoSurface.setEffect(bundle);
            } catch (Exception e10) {
                TTVideoEngineLog.i("[SALog]", "[SALog]doOpenSharpen catch exception e=" + e10);
            }
        }
    }

    @Override // com.ss.ttvideoengine.TextureRenderStrategyInterface
    public void didInitTextureRender(VideoSurface videoSurface) {
        this.mInitBundle.putInt(TextureRenderKeys.KEY_IS_ENABLE_BMF, EngineGlobalConfig.getInstance().getEnableBmf());
        this.mInitBundle.putString(TextureRenderKeys.KEY_MODULE_NAME, FeatureManager.getModuleName());
        videoSurface.setEffect(this.mInitBundle);
    }

    @Override // com.ss.ttvideoengine.TextureRenderStrategyInterface
    public boolean isInitEffect() {
        return this.mIsInitSharpen;
    }

    @Override // com.ss.ttvideoengine.TextureRenderStrategyInterface
    public boolean isNeedAsyncEffect(EffectConfig effectConfig) {
        this.mPlaybackUseSharpen = this.mIsInitSharpen;
        if (this.mAsyncInit) {
            effectConfig.setEffectOpen(1, 1);
        }
        return this.mAsyncInit;
    }

    @Override // com.ss.ttvideoengine.TextureRenderStrategyInterface
    public boolean isPlaybackUse() {
        return this.mPlaybackUseSharpen;
    }

    @Override // com.ss.ttvideoengine.TextureRenderStrategyInterface
    public void onRenderStart(float f10, VideoSurface videoSurface, boolean z10) {
        boolean z11 = this.mOpensharpen;
        z11 = (f10 >= 31.0f || f10 <= 0.0f) ? false : false;
        this.mOpensharpen = z11;
        openSharpen(z11, videoSurface, z10);
    }

    @Override // com.ss.ttvideoengine.TextureRenderStrategyInterface
    public void reset(VideoSurface videoSurface, boolean z10) {
        openSharpen(false, videoSurface, z10);
        this.mIsInitSharpen = false;
        this.mOpensharpen = false;
        this.mPlaybackUseSharpen = false;
        this.mAsyncInit = false;
        this.mInitBundle = null;
    }

    @Override // com.ss.ttvideoengine.TextureRenderStrategyInterface
    public void setEffect(Bundle bundle, VideoSurface videoSurface) {
        if (bundle.getInt(TextureRenderKeys.KEY_IS_ACTION) == 21) {
            this.mIsInitSharpen = true;
            this.mOpensharpen = bundle.getBoolean(TextureRenderKeys.KEY_IS_USE_EFFECT);
            this.mAsyncInit = bundle.getBoolean(TextureRenderStrategyInterface.KEY_TRERENDERCONFIG_ASYNCINIT);
            this.mInitBundle = bundle;
        } else if (bundle.getInt(TextureRenderKeys.KEY_IS_ACTION) == 19) {
            this.mOpensharpen = bundle.getBoolean(TextureRenderKeys.KEY_IS_USE_EFFECT);
            openSharpen(this.mOpensharpen, videoSurface, bundle.getBoolean(TextureRenderStrategyInterface.KEY_STRATEGY_HAS_FIRST_FRAME_SHOW));
        }
    }

    @Override // com.ss.ttvideoengine.TextureRenderStrategyInterface
    public void setIsInitEffect(boolean z10) {
        this.mIsInitSharpen = z10;
    }
}
