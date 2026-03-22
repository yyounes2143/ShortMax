package com.ss.texturerender.effect;

import android.opengl.EGLDisplay;
import android.opengl.GLES20;
import androidx.annotation.RequiresApi;
import com.ss.texturerender.TexGLUtils;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.base.EGLExt;
@RequiresApi(api = 21)
/* loaded from: classes6.dex */
public class HardwareBuffer2GLFilter extends AbsEffect {
    private static final String LOG_TAG = "TR_HardwareBuffer2GLFilter";
    private EGLDisplay mDisplay;
    private EffectTexture mEffectTexture;
    private int mTexID;

    public HardwareBuffer2GLFilter(int i10, EGLDisplay eGLDisplay) {
        super(i10, 23);
        this.mDisplay = eGLDisplay;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        if (effectTexture != null && effectTexture.getSourceType() != 1) {
            if (this.mTexID == 0) {
                int[] iArr = new int[1];
                GLES20.glGenTextures(1, iArr, 0);
                int i10 = iArr[0];
                this.mTexID = i10;
                if (i10 == 0) {
                    return effectTexture;
                }
            }
            int bindHardwareBufferToTexture = EGLExt.bindHardwareBufferToTexture(this.mDisplay, effectTexture.getHardwareBuffer(), this.mTexID, 36197);
            if (bindHardwareBufferToTexture != 0) {
                int i11 = this.mTexType;
                TextureRenderLog.e(i11, LOG_TAG, "bindHardwareBufferToTexture fail,ret:" + bindHardwareBufferToTexture);
                return effectTexture;
            }
            EffectTexture effectTexture2 = this.mEffectTexture;
            if (effectTexture2 == null || effectTexture2.getWidth() != effectTexture.getWidth() || this.mEffectTexture.getHeight() != effectTexture.getHeight() || this.mEffectTexture.getTexTarget() != 36197) {
                this.mEffectTexture = new EffectTexture(null, this.mTexID, effectTexture.getWidth(), effectTexture.getHeight(), 36197, effectTexture.getInternalFormat(), effectTexture.getFormat(), effectTexture.getType());
            }
            return this.mEffectTexture;
        }
        return effectTexture;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public AbsEffect release() {
        TexGLUtils.deleteTexture(this.mTexID);
        this.mTexID = 0;
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, LOG_TAG, "release,this:" + this);
        return super.release();
    }
}
