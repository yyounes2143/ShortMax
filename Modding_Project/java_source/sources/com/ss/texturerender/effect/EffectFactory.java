package com.ss.texturerender.effect;

import androidx.annotation.Nullable;
import com.ss.texturerender.TextureRenderHelper;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.effect.ICEffect.ICEffectWrapper;
import com.ss.texturerender.effect.vr.GLPanorama180To360Filter;
import com.ss.texturerender.effect.vr.GLPanoramaFilter;
import com.ss.texturerender.fov.GLTileCompositeFilter;
import java.lang.reflect.Constructor;
/* loaded from: classes6.dex */
public class EffectFactory {
    public static final String PICO_VIDEO_VR_SR_EFFECT = "com.ss.texturerenderpicovr.PicoVRVideoOCLSREffect";
    public static final String PICO_VIDEO_VR_VR_EFFECT = "com.ss.texturerenderpicovr.PicoVRVideoVREffect";

    @Nullable
    public static AbsEffect createEffect(int i10, int i11) {
        AbsEffect absEffect = null;
        switch (i11) {
            case 1:
                return new AdaptiveSharpenEffect(i10);
            case 2:
                return new GLLutFilter(i10);
            case 3:
                return new GLOesTo2DFilter(i10);
            case 4:
                return new GLHDR2SDRFilter(i10);
            case 5:
                if ((i10 & 8) > 0) {
                    try {
                        Class<?> clzUsingPluginLoader = TextureRenderHelper.getClzUsingPluginLoader(0, PICO_VIDEO_VR_SR_EFFECT);
                        if (clzUsingPluginLoader != null) {
                            Constructor<?> constructor = clzUsingPluginLoader.getConstructor(Integer.TYPE);
                            if (constructor != null) {
                                absEffect = (AbsEffect) constructor.newInstance(Integer.valueOf(i10));
                            } else {
                                TextureRenderLog.e(i10, "PicoTextureSREffect", "PicoTextureSREffect fail constructor is null");
                            }
                        } else {
                            TextureRenderLog.e(i10, "PicoTextureSREffect", "PicoTextureSREffect fail srClz is null");
                        }
                    } catch (Exception e10) {
                        TextureRenderLog.e(i10, "PicoTextureSREffect", "PicoTextureSREffect fail:" + e10.toString());
                    }
                    return absEffect;
                }
                return new VideoOCLSREffect(i10);
            case 6:
            case 11:
            case 13:
            case 19:
            case 20:
            default:
                return null;
            case 7:
                return new GLDefaultFilter(i10);
            case 8:
                if ((i10 & 8) > 0) {
                    try {
                        Class<?> clzUsingPluginLoader2 = TextureRenderHelper.getClzUsingPluginLoader(0, PICO_VIDEO_VR_VR_EFFECT);
                        if (clzUsingPluginLoader2 != null) {
                            Constructor<?> constructor2 = clzUsingPluginLoader2.getConstructor(Integer.TYPE);
                            if (constructor2 != null) {
                                absEffect = (AbsEffect) constructor2.newInstance(Integer.valueOf(i10));
                            } else {
                                TextureRenderLog.e(i10, "PicoTextureVREffect", "PicoTextureVREffect fail constructor is null");
                            }
                        } else {
                            TextureRenderLog.e(i10, "PicoTextureVREffect", "PicoTextureVREffect fail srClz is null");
                        }
                    } catch (Exception e11) {
                        TextureRenderLog.e(i10, "PicoTextureVREffect", "PicoTextureVREffect fail:" + e11.toString());
                    }
                    return absEffect;
                }
                return new GLPanoramaFilter(i10);
            case 9:
                return new GLMattingFilter(i10);
            case 10:
                return new GLGaussianBlurFilter(i10);
            case 12:
                return new GLPanorama180To360Filter(i10);
            case 14:
                return new AdaptiveGradingEffect(i10);
            case 15:
                return new GLSelectiveGaussianBlurFilter3(i10);
            case 16:
                return new BMFVQScoreWrapper(i10);
            case 17:
                return new GLWatermarkFilter(i10);
            case 18:
                return new GLTileCompositeFilter(i10);
            case 21:
                return new ICEffectWrapper(i10);
            case 22:
                return new GLAutoStereoScopyFilter(i10);
        }
    }
}
