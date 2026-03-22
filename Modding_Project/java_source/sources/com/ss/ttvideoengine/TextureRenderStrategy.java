package com.ss.ttvideoengine;

import android.os.Bundle;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.VideoSurface;
import com.ss.texturerender.effect.EffectConfig;
import java.util.HashMap;
/* loaded from: classes6.dex */
public class TextureRenderStrategy {
    private HashMap<Integer, TextureRenderStrategyInterface> strategyMap = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void didInitTextureRender(VideoSurface videoSurface) {
        for (TextureRenderStrategyInterface textureRenderStrategyInterface : this.strategyMap.values()) {
            textureRenderStrategyInterface.didInitTextureRender(videoSurface);
        }
    }

    public boolean getAsyncEffect(EffectConfig effectConfig) {
        boolean z10 = false;
        for (TextureRenderStrategyInterface textureRenderStrategyInterface : this.strategyMap.values()) {
            boolean isNeedAsyncEffect = textureRenderStrategyInterface.isNeedAsyncEffect(effectConfig);
            if (isNeedAsyncEffect) {
                z10 = isNeedAsyncEffect;
            }
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isInitForEffect(int i10) {
        TextureRenderStrategyInterface textureRenderStrategyInterface = this.strategyMap.get(Integer.valueOf(i10));
        if (textureRenderStrategyInterface != null) {
            return textureRenderStrategyInterface.isInitEffect();
        }
        return false;
    }

    public boolean isPlaybackUseForEffect(int i10) {
        TextureRenderStrategyInterface textureRenderStrategyInterface = this.strategyMap.get(Integer.valueOf(i10));
        if (textureRenderStrategyInterface != null) {
            return textureRenderStrategyInterface.isPlaybackUse();
        }
        return false;
    }

    public void onRenderStart(float f10, VideoSurface videoSurface, boolean z10) {
        for (TextureRenderStrategyInterface textureRenderStrategyInterface : this.strategyMap.values()) {
            textureRenderStrategyInterface.onRenderStart(f10, videoSurface, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reset(VideoSurface videoSurface, boolean z10) {
        for (TextureRenderStrategyInterface textureRenderStrategyInterface : this.strategyMap.values()) {
            textureRenderStrategyInterface.reset(videoSurface, z10);
        }
    }

    public void setEffect(Bundle bundle, VideoSurface videoSurface) {
        int i10 = bundle.getInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE);
        TextureRenderStrategyInterface textureRenderStrategyInterface = this.strategyMap.get(Integer.valueOf(i10));
        if (textureRenderStrategyInterface == null && bundle.getInt(TextureRenderKeys.KEY_IS_ACTION) == 21 && i10 == 1) {
            textureRenderStrategyInterface = new TextureRenderStrategySharpen();
            this.strategyMap.put(1, textureRenderStrategyInterface);
        }
        if (textureRenderStrategyInterface != null) {
            textureRenderStrategyInterface.setEffect(bundle, videoSurface);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIsInitForEffect(int i10, boolean z10) {
        TextureRenderStrategyInterface textureRenderStrategyInterface = this.strategyMap.get(Integer.valueOf(i10));
        if (textureRenderStrategyInterface != null) {
            textureRenderStrategyInterface.setIsInitEffect(z10);
        }
    }
}
