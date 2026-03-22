package com.ss.texturerender.effect;

import android.opengl.GLES20;
import android.opengl.GLES30;
import com.ss.texturerender.DeviceManager;
import com.ss.texturerender.TexGLUtils;
import com.ss.texturerender.TextureRenderLog;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes6.dex */
public class EffectTextureManager {
    private static final String LOG_TAG = "TR_EffectTextureManager";
    private int mTexType;
    private boolean useGLForsr;
    private LinkedList<EffectTexture> mTextureList = new LinkedList<>();
    private int mMaxSize = 4;

    public EffectTextureManager(int i10) {
        this.useGLForsr = false;
        this.mTexType = -1;
        if (DeviceManager.isVRDevice()) {
            this.useGLForsr = true;
        }
        this.mTexType = i10;
    }

    public EffectTexture genTexture(int i10, int i11) {
        return genTexture(i10, i11, 6408, 6408, 5121);
    }

    public void onTextureReturn(EffectTexture effectTexture) {
        Iterator<EffectTexture> it = this.mTextureList.iterator();
        while (it.hasNext()) {
            if (effectTexture.isEqualTo(it.next())) {
                return;
            }
        }
        this.mTextureList.offer(effectTexture);
        while (this.mTextureList.size() > this.mMaxSize) {
            EffectTexture poll = this.mTextureList.poll();
            TexGLUtils.deleteTexture(poll.getTexID());
            int i10 = this.mTexType;
            TextureRenderLog.i(i10, LOG_TAG, "onTextureReturn delTex:" + poll);
        }
    }

    public void release() {
        while (!this.mTextureList.isEmpty()) {
            EffectTexture poll = this.mTextureList.poll();
            TexGLUtils.deleteTexture(poll.getTexID());
            int i10 = this.mTexType;
            TextureRenderLog.i(i10, LOG_TAG, "release delTex:" + poll);
        }
    }

    public EffectTexture genTexture(int i10, int i11, int i12) {
        if (i12 >= 10) {
            return genTexture(i10, i11, 32857, 6408, 33640);
        }
        return genTexture(i10, i11);
    }

    public EffectTexture genTexture(int i10, int i11, int i12, int i13, int i14) {
        int genTexture;
        Iterator<EffectTexture> it = this.mTextureList.iterator();
        EffectTexture effectTexture = null;
        while (it.hasNext()) {
            effectTexture = it.next();
            if (i10 == effectTexture.getWidth() && i11 == effectTexture.getHeight()) {
                if (i12 == effectTexture.getInternalFormat()) {
                    if (i13 == effectTexture.getFormat()) {
                        if (i14 == effectTexture.getType()) {
                            it.remove();
                            return effectTexture;
                        }
                    }
                }
            }
        }
        if (!this.useGLForsr) {
            effectTexture = this.mTextureList.poll();
        }
        if (effectTexture != null && !this.useGLForsr) {
            genTexture = effectTexture.getTexID();
        } else {
            genTexture = TexGLUtils.genTexture(3553);
        }
        int i15 = genTexture;
        GLES20.glBindTexture(3553, i15);
        if (this.useGLForsr) {
            GLES30.glTexStorage2D(3553, 1, 32856, i10, i11);
        } else {
            GLES20.glTexImage2D(3553, 0, i12, i10, i11, 0, i13, i14, null);
        }
        EffectTexture effectTexture2 = new EffectTexture(this, i15, i10, i11, 3553, i12, i13, i14);
        int i16 = this.mTexType;
        TextureRenderLog.i(i16, LOG_TAG, "genTexture:" + effectTexture2.toString());
        return effectTexture2;
    }
}
