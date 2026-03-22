package com.ss.texturerender;

import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import com.ss.texturerender.effect.EffectConfig;
import com.ss.texturerender.overlay.OverlayVideoTextureRenderer;
import java.lang.reflect.Constructor;
/* loaded from: classes6.dex */
class RenderFactory {
    public static final String PICO_VIDEO_VR = "com.ss.texturerenderpicovr.PicoVRVideoTextureRender";

    RenderFactory() {
    }

    public static TextureRenderer createRender(EffectConfig effectConfig, int i10, EGLContext eGLContext, EGLConfig eGLConfig, boolean z10) {
        if ((i10 & 4) > 0) {
            return new OverlayVideoTextureRenderer(effectConfig, i10, eGLContext, eGLConfig);
        }
        if ((i10 & 8) > 0) {
            TextureRenderer textureRenderer = null;
            try {
                Class<?> clzUsingPluginLoader = TextureRenderHelper.getClzUsingPluginLoader(0, PICO_VIDEO_VR);
                if (clzUsingPluginLoader != null) {
                    Constructor<?> constructor = clzUsingPluginLoader.getConstructor(EffectConfig.class, Integer.TYPE);
                    if (constructor != null) {
                        textureRenderer = (TextureRenderer) constructor.newInstance(effectConfig, Integer.valueOf(i10));
                    } else {
                        TextureRenderLog.e(i10, "PicoTextureRender", "PicoTextureCreate fail constructor is null");
                    }
                } else {
                    TextureRenderLog.e(i10, "PicoTextureRender", "PicoTextureCreate fail srClz is null");
                }
            } catch (Exception e10) {
                TextureRenderLog.e(i10, "PicoTextureRender", "PicoTextureCreate fail:" + e10.toString());
            }
            return textureRenderer;
        }
        return new VideoTextureRenderer(effectConfig, i10, eGLContext, eGLConfig, z10);
    }
}
