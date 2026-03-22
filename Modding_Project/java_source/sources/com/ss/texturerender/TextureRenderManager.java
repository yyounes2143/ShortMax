package com.ss.texturerender;

import android.content.Context;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.os.Bundle;
import android.view.Surface;
import com.ss.texturerender.effect.EffectConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes6.dex */
public class TextureRenderManager {
    private static final String TAG = "TextureRenderManager";
    public static final int TEX_EXT = 2;
    public static final int TEX_LIVE = 1;
    public static final int TEX_OVERLAY = 4;
    public static final int TEX_PICOVR = 8;
    public static final int TEX_VOD = 0;
    private static TextureRenderManager mManager;
    private Context mContext;
    private List<TextureRenderer> mRenderers = new ArrayList();
    private ReentrantLock mListLock = new ReentrantLock();
    private String mTextureError = null;

    private TextureRenderManager() {
    }

    private VideoSurface genRenderSurface(EffectConfig effectConfig, int i10) {
        return genRenderSurface(effectConfig, i10, null, null, false);
    }

    public static synchronized TextureRenderManager getManager() {
        TextureRenderManager textureRenderManager;
        synchronized (TextureRenderManager.class) {
            try {
                if (mManager == null) {
                    mManager = new TextureRenderManager();
                }
                textureRenderManager = mManager;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return textureRenderManager;
    }

    private TextureRenderer getRenderer(EffectConfig effectConfig, int i10, EGLContext eGLContext, EGLConfig eGLConfig) {
        TextureRenderer textureRenderer;
        TextureRenderer textureRenderer2;
        this.mListLock.lock();
        Iterator<TextureRenderer> it = this.mRenderers.iterator();
        while (true) {
            textureRenderer = null;
            if (it.hasNext()) {
                textureRenderer2 = it.next();
                if (textureRenderer2.texType() == i10) {
                    if (textureRenderer2.getState() >= 1) {
                        break;
                    }
                    TextureRenderLog.i(textureRenderer2.texType(), TAG, "remove render =" + textureRenderer2 + " state = " + textureRenderer2.getState());
                    textureRenderer2.release();
                    it.remove();
                }
            } else {
                textureRenderer2 = null;
                break;
            }
        }
        if (textureRenderer2 == null) {
            TextureRenderer createRender = RenderFactory.createRender(effectConfig, i10, eGLContext, eGLConfig, false);
            if (createRender.getState() != -1) {
                this.mRenderers.add(createRender);
                TextureRenderLog.i(createRender.texType(), TAG, "add render = " + createRender + ", effectconfig= " + effectConfig + ", texType =" + i10 + ",size = " + this.mRenderers.size());
                textureRenderer = createRender;
            } else {
                this.mTextureError = createRender.getErrorReason();
                createRender.release();
            }
        } else {
            textureRenderer = textureRenderer2;
        }
        this.mListLock.unlock();
        return textureRenderer;
    }

    private void releaseRenderers() {
        if (this.mRenderers.size() == 0) {
            return;
        }
        this.mListLock.lock();
        Iterator<TextureRenderer> it = this.mRenderers.iterator();
        while (it.hasNext()) {
            TextureRenderer next = it.next();
            int texType = next.texType();
            TextureRenderLog.i(texType, TAG, "render = " + next + ", call release");
            next.release();
            it.remove();
            TextureRenderLog.i(texType, TAG, "release : remove render =" + next + "size = " + this.mRenderers.size());
        }
        this.mListLock.unlock();
    }

    public synchronized void asyncInitSR(int i10, int i11, String str, String str2, String str3) {
        if (isSRRenderAvaiable(i10)) {
            return;
        }
        VideoSurface genAvaiableSurface = genAvaiableSurface(true, i10);
        if (genAvaiableSurface != null) {
            genAvaiableSurface.setSuperResolutionInitConfig(i11, str, str2, str3);
            genAvaiableSurface.release();
        }
    }

    public boolean clearSurface(Surface surface, boolean z10) {
        return clearSurface(surface, z10, null, null);
    }

    public synchronized VideoSurface genAvaiableSurface(EffectConfig effectConfig, int i10) {
        return genAvaiableSurface(effectConfig, i10, (EGLContext) null, (EGLConfig) null);
    }

    public Context getContext() {
        return this.mContext;
    }

    public String getTextureError() {
        return this.mTextureError;
    }

    public synchronized boolean isEffectAvailable(EffectConfig effectConfig, int i10) {
        try {
            boolean z10 = false;
            if (this.mRenderers.size() == 0) {
                return false;
            }
            this.mListLock.lock();
            Iterator<TextureRenderer> it = this.mRenderers.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                TextureRenderer next = it.next();
                if (next.getEffectConfig().isSubSet(effectConfig) && next.texType() == i10 && (next.texType() & 4) == 0) {
                    z10 = true;
                    break;
                }
            }
            this.mListLock.unlock();
            return z10;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized boolean isSRRenderAvaiable(int i10) {
        try {
            boolean z10 = false;
            if (this.mRenderers.size() == 0) {
                return false;
            }
            this.mListLock.lock();
            Iterator<TextureRenderer> it = this.mRenderers.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                TextureRenderer next = it.next();
                if (next.getEffectConfig().isOpenSR() && next.texType() == i10 && (next.texType() & 4) == 0) {
                    z10 = true;
                    break;
                }
            }
            this.mListLock.unlock();
            return z10;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void release() {
        releaseRenderers();
        mManager = null;
    }

    public void releaseAllEffectNodes() {
        if (this.mRenderers.size() == 0) {
            return;
        }
        this.mListLock.lock();
        Iterator<TextureRenderer> it = this.mRenderers.iterator();
        Bundle bundle = new Bundle();
        bundle.putInt(TextureRenderKeys.KEY_IS_ACTION, 32);
        bundle.putInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE, 24);
        TextureRenderer textureRenderer = null;
        while (it.hasNext()) {
            textureRenderer = it.next();
            int texType = textureRenderer.texType();
            TextureRenderLog.i(texType, TAG, "render = " + textureRenderer + ", call release nodes");
            textureRenderer.sendMessage(36, bundle);
        }
        TextureRenderLog.i(-1, TAG, "releaseAllEffectNodes end," + textureRenderer + "size = " + this.mRenderers.size());
        this.mListLock.unlock();
    }

    public void setContext(Context context) {
        if (context != null) {
            this.mContext = context.getApplicationContext();
        }
    }

    private VideoSurface genRenderSurface(EffectConfig effectConfig, int i10, EGLContext eGLContext, EGLConfig eGLConfig) {
        return genRenderSurface(effectConfig, i10, null, null, false);
    }

    public boolean clearSurface(Surface surface, boolean z10, EGLContext eGLContext, EGLConfig eGLConfig) {
        if (surface == null) {
            TextureRenderLog.e(-1, TAG, "invalid parameter");
            return false;
        }
        TextureRenderer renderer = getRenderer(new EffectConfig(2), 2, eGLContext, eGLConfig);
        if (renderer == null) {
            TextureRenderLog.e(-1, TAG, "couldn't get a renderer return");
            return false;
        }
        return renderer.clearSurface(surface, z10);
    }

    public synchronized VideoSurface genAvaiableSurface(EffectConfig effectConfig, int i10, EGLContext eGLContext, EGLConfig eGLConfig) {
        return genAvaiableSurface(effectConfig, i10, null, null, false);
    }

    private VideoSurface genRenderSurface(EffectConfig effectConfig, int i10, EGLContext eGLContext, EGLConfig eGLConfig, boolean z10) {
        TextureRenderer createRender = RenderFactory.createRender(effectConfig, i10, eGLContext, eGLConfig, z10);
        int texType = createRender.texType();
        TextureRenderLog.i(texType, TAG, "new TextureRenderer use:" + createRender);
        if (createRender.getState() != -1) {
            VideoSurface genOffscreenSurface = createRender.genOffscreenSurface();
            if (genOffscreenSurface == null) {
                this.mTextureError = createRender.getErrorReason();
                createRender.release();
                return null;
            }
            this.mListLock.lock();
            this.mRenderers.add(createRender);
            int texType2 = createRender.texType();
            TextureRenderLog.i(texType2, TAG, "add render = " + createRender + ", effectconfig= " + effectConfig + ", texType =" + i10 + ",size = " + this.mRenderers.size());
            this.mListLock.unlock();
            return genOffscreenSurface;
        }
        this.mTextureError = createRender.getErrorReason();
        createRender.release();
        return null;
    }

    public synchronized VideoSurface genAvaiableSurface(EffectConfig effectConfig, int i10, EGLContext eGLContext, EGLConfig eGLConfig, boolean z10) {
        if (this.mRenderers.size() == 0) {
            return genRenderSurface(effectConfig, i10, eGLContext, eGLConfig, z10);
        }
        this.mListLock.lock();
        Iterator<TextureRenderer> it = this.mRenderers.iterator();
        VideoSurface videoSurface = null;
        while (it.hasNext()) {
            TextureRenderer next = it.next();
            EffectConfig effectConfig2 = next.getEffectConfig();
            TextureRenderLog.i(next.texType(), TAG, "tmpConfig: " + effectConfig2 + ", config: " + effectConfig);
            if (!effectConfig2.isSubSet(effectConfig)) {
                TextureRenderLog.i(next.texType(), TAG, "render type is mis match = " + effectConfig2 + ", " + effectConfig);
            } else if (next.texType() != i10) {
                TextureRenderLog.i(next.texType(), TAG, "tex type is mis match = " + next.texType() + ", " + i10);
            } else if ((i10 & 4) == (next.texType() & 4)) {
                TextureRenderLog.i(next.texType(), TAG, "TextureRenderer use:" + next);
                videoSurface = next.genOffscreenSurface();
                if (videoSurface == null && next.getState() < 1) {
                    TextureRenderLog.i(next.texType(), TAG, "remove render =" + next + " state = " + next.getState());
                    next.release();
                    it.remove();
                } else if (videoSurface != null) {
                    this.mListLock.unlock();
                    return videoSurface;
                }
            }
        }
        this.mListLock.unlock();
        if (videoSurface == null) {
            return genRenderSurface(effectConfig, i10, eGLContext, eGLConfig, z10);
        }
        return null;
    }

    public synchronized void asyncInitSR(int i10, int i11, String str, String str2, String str3, int i12, int i13) {
        asyncInitSR(i10, i11, str, str2, str3, i12, i13, null);
    }

    public synchronized void asyncInitSR(int i10, int i11, String str, String str2, String str3, int i12, int i13, String str4) {
        if (isSRRenderAvaiable(i10)) {
            return;
        }
        VideoSurface genAvaiableSurface = genAvaiableSurface(true, i10);
        if (genAvaiableSurface != null) {
            genAvaiableSurface.setSuperResolutionInitConfig(i11, str, str2, str3, i12, i13, str4);
            genAvaiableSurface.release();
        }
    }

    public synchronized VideoSurface genAvaiableSurface(boolean z10, int i10) {
        EffectConfig effectConfig;
        effectConfig = new EffectConfig(i10);
        effectConfig.setOpenSR(z10);
        return genAvaiableSurface(effectConfig, i10);
    }

    public synchronized VideoSurface genAvaiableSurface(boolean z10, int i10, EGLContext eGLContext, EGLConfig eGLConfig) {
        EffectConfig effectConfig;
        effectConfig = new EffectConfig(i10);
        effectConfig.setOpenSR(z10);
        return genAvaiableSurface(effectConfig, i10, eGLContext, eGLConfig);
    }
}
