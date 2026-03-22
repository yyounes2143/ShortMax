package com.ss.texturerender.effect;

import android.opengl.GLES20;
import android.os.Bundle;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.VideoSurfaceTexture;
/* loaded from: classes6.dex */
public class GLSelectiveGaussianBlurFilter3 extends AbsEffect {
    private static final String LOG_TAG = "TR_GLSelectiveGaussianBlurFilter3";
    private GLSelectiveGaussianBlurFilter m2DFilter;
    private GLSelectiveGaussianBlurFilterOpt m2DFilterOpt;
    private int mCount;
    private boolean mDisableOpt;
    private GLSelectiveGaussianBlurFilterOptMerge mGLSelectiveGaussianBlurFilterOptMerge;
    private int mGauBlurControlNum;
    private boolean mGauBlurHaveSucessful;
    private GLSelectiveGaussianBlurFilter mOesFilter;
    protected int mProcessStage;
    private int mRenderPasses;
    private int mRepeatType;
    protected float mSigma;
    protected int mSurfaceHeight;
    protected int mSurfaceWidth;

    public GLSelectiveGaussianBlurFilter3(int i10) {
        super(i10, 15);
        this.mDisableOpt = false;
        this.m2DFilterOpt = null;
        this.mGLSelectiveGaussianBlurFilterOptMerge = null;
        this.mOesFilter = null;
        this.m2DFilter = null;
        this.mRenderPasses = 2;
        this.mRepeatType = 2;
        this.mSigma = 2.0f;
        this.mProcessStage = 0;
        this.mSurfaceHeight = -1;
        this.mSurfaceWidth = -1;
        this.mEffectType = 15;
        this.mOrder = 4;
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, LOG_TAG, "new,this:" + toString());
    }

    private FrameBuffer getFrameBuffer(int i10, FrameBuffer frameBuffer) {
        if (!this.mDisableOpt) {
            return frameBuffer;
        }
        if (i10 >= this.mRenderPasses - 1 && this.mRenderToScreen) {
            return null;
        }
        return frameBuffer;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public int init(Bundle bundle) {
        int i10;
        super.init(bundle);
        this.mSigma = bundle.getFloat(TextureRenderKeys.KEY_IS_STRENGTH_FLOAT, -1.0f);
        int i11 = bundle.getInt(TextureRenderKeys.KEY_IS_TEXTURE_REPEAT_TYPE, 2);
        this.mRepeatType = i11;
        if (this.mSigma > 1.0f && i11 != 3) {
            i10 = 2;
        } else {
            i10 = 1;
        }
        this.mRenderPasses = i10;
        boolean z10 = bundle.getBoolean(TextureRenderKeys.KEY_IS_SELSCT_GAUSSBLUR_DISABLE_OPT, false);
        this.mDisableOpt = z10;
        int i12 = 3553;
        if (z10) {
            this.mIsSupportOes = 1;
            int i13 = bundle.getInt(TextureRenderKeys.KEY_IS_TEXTURE_TYPE);
            GLSelectiveGaussianBlurFilter gLSelectiveGaussianBlurFilter = this.mOesFilter;
            if (gLSelectiveGaussianBlurFilter != null) {
                gLSelectiveGaussianBlurFilter.release();
                this.mOesFilter = null;
            }
            if (i13 == 36197) {
                this.mOesFilter = new GLSelectiveGaussianBlurFilter(this.mTexType);
                bundle.putInt(TextureRenderKeys.KEY_IS_TEXTURE_TYPE, 36197);
                this.mOesFilter.init(bundle);
                this.mOesFilter.setParentRender(this.mParentRender);
                GLSelectiveGaussianBlurFilter gLSelectiveGaussianBlurFilter2 = this.mOesFilter;
                gLSelectiveGaussianBlurFilter2.mEnableSecondPass = false;
                gLSelectiveGaussianBlurFilter2.setOption(GLDefaultFilter.OPTION_FILTER_CALL_GLFINISH, 0);
            }
            GLSelectiveGaussianBlurFilter gLSelectiveGaussianBlurFilter3 = this.m2DFilter;
            if (gLSelectiveGaussianBlurFilter3 != null) {
                gLSelectiveGaussianBlurFilter3.release();
            }
            this.m2DFilter = new GLSelectiveGaussianBlurFilter(this.mTexType);
            bundle.putInt(TextureRenderKeys.KEY_IS_TEXTURE_TYPE, 3553);
            this.m2DFilter.init(bundle);
            GLSelectiveGaussianBlurFilter gLSelectiveGaussianBlurFilter4 = this.m2DFilter;
            gLSelectiveGaussianBlurFilter4.mEnableSecondPass = false;
            gLSelectiveGaussianBlurFilter4.setParentRender(this.mParentRender);
            this.m2DFilter.setOption(GLDefaultFilter.OPTION_FILTER_CALL_GLFINISH, 0);
            i12 = i13;
        } else {
            GLSelectiveGaussianBlurFilterOpt gLSelectiveGaussianBlurFilterOpt = this.m2DFilterOpt;
            if (gLSelectiveGaussianBlurFilterOpt != null) {
                gLSelectiveGaussianBlurFilterOpt.release();
            }
            this.m2DFilterOpt = new GLSelectiveGaussianBlurFilterOpt(this.mTexType);
            bundle.putInt(TextureRenderKeys.KEY_IS_TEXTURE_TYPE, 3553);
            this.m2DFilterOpt.init(bundle);
            GLSelectiveGaussianBlurFilterOpt gLSelectiveGaussianBlurFilterOpt2 = this.m2DFilterOpt;
            gLSelectiveGaussianBlurFilterOpt2.mEnableSecondPass = false;
            gLSelectiveGaussianBlurFilterOpt2.setParentRender(this.mParentRender);
            this.m2DFilterOpt.setOption(GLDefaultFilter.OPTION_FILTER_CALL_GLFINISH, 0);
            GLSelectiveGaussianBlurFilterOptMerge gLSelectiveGaussianBlurFilterOptMerge = this.mGLSelectiveGaussianBlurFilterOptMerge;
            if (gLSelectiveGaussianBlurFilterOptMerge != null) {
                gLSelectiveGaussianBlurFilterOptMerge.release();
                this.mGLSelectiveGaussianBlurFilterOptMerge = null;
            }
            GLSelectiveGaussianBlurFilterOptMerge gLSelectiveGaussianBlurFilterOptMerge2 = new GLSelectiveGaussianBlurFilterOptMerge(this.mTexType);
            this.mGLSelectiveGaussianBlurFilterOptMerge = gLSelectiveGaussianBlurFilterOptMerge2;
            gLSelectiveGaussianBlurFilterOptMerge2.setParentRender(this.mParentRender);
            this.mGLSelectiveGaussianBlurFilterOptMerge.init(bundle);
            this.mGauBlurHaveSucessful = false;
            this.mGauBlurControlNum = bundle.getInt(TextureRenderKeys.KEY_IS_SELECT_GAUSSBLUR_CONTROL_NUM, 2);
            this.mCount = 0;
        }
        this.mInTextureTarget = i12;
        TextureRenderLog.i(this.mTexType, LOG_TAG, "init,texFormat:" + this.mInTextureTarget);
        return 0;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        EffectTexture effectTexture2;
        GLSelectiveGaussianBlurFilterOpt gLSelectiveGaussianBlurFilterOpt;
        EffectTexture process;
        float[] fArr;
        int viewportWidth = this.mSurfaceTexture.getViewportWidth();
        int viewportHeight = this.mSurfaceTexture.getViewportHeight();
        float f10 = (viewportHeight * 1.0f) / viewportWidth;
        float height = (effectTexture.getHeight() * 1.0f) / effectTexture.getWidth();
        if ((!this.mDisableOpt && f10 < height) || Math.abs(f10 - height) < 1.0E-9d) {
            return effectTexture;
        }
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.currentEffectProcessBegin(this.mEffectType);
        }
        boolean z10 = false;
        if (viewportHeight != this.mSurfaceHeight || viewportWidth != this.mSurfaceWidth) {
            this.mSurfaceHeight = viewportHeight;
            this.mSurfaceWidth = viewportWidth;
            this.mCount = 0;
        }
        if (this.mDisableOpt) {
            this.mProcessStage = 0;
            GLSelectiveGaussianBlurFilter gLSelectiveGaussianBlurFilter = this.mOesFilter;
            if (gLSelectiveGaussianBlurFilter != null) {
                gLSelectiveGaussianBlurFilter.setSurfaceTexture(this.mSurfaceTexture);
                GLSelectiveGaussianBlurFilter gLSelectiveGaussianBlurFilter2 = this.mOesFilter;
                int i10 = this.mProcessStage;
                gLSelectiveGaussianBlurFilter2.mProcessStage = i10;
                effectTexture2 = gLSelectiveGaussianBlurFilter2.process(effectTexture, getFrameBuffer(i10, frameBuffer));
                this.mProcessStage++;
                fArr = this.mOesFilter.mLayoutCoord;
            } else {
                effectTexture2 = null;
                fArr = null;
            }
            if (effectTexture2 == null) {
                effectTexture2 = effectTexture;
            }
            if (this.m2DFilter != null) {
                while (this.mProcessStage < this.mRenderPasses) {
                    this.m2DFilter.setSurfaceTexture(this.mSurfaceTexture);
                    GLSelectiveGaussianBlurFilter gLSelectiveGaussianBlurFilter3 = this.m2DFilter;
                    int i11 = this.mProcessStage;
                    gLSelectiveGaussianBlurFilter3.mProcessStage = i11;
                    if (fArr != null) {
                        gLSelectiveGaussianBlurFilter3.mLayoutCoord = fArr;
                    }
                    effectTexture2 = gLSelectiveGaussianBlurFilter3.process(effectTexture2, getFrameBuffer(i11, frameBuffer));
                    this.mProcessStage++;
                    fArr = this.m2DFilter.mLayoutCoord;
                    if (effectTexture2 == null) {
                        effectTexture2 = effectTexture;
                    }
                }
            }
        } else {
            if (this.mCount % this.mGauBlurControlNum == 0) {
                this.mProcessStage = 0;
                if (this.m2DFilterOpt != null) {
                    EffectTexture effectTexture3 = effectTexture;
                    float[] fArr2 = null;
                    while (true) {
                        if (this.mProcessStage < this.mRenderPasses) {
                            this.m2DFilterOpt.setSurfaceTexture(this.mSurfaceTexture);
                            GLSelectiveGaussianBlurFilterOpt gLSelectiveGaussianBlurFilterOpt2 = this.m2DFilterOpt;
                            int i12 = this.mProcessStage;
                            gLSelectiveGaussianBlurFilterOpt2.mProcessStage = i12;
                            if (fArr2 != null) {
                                gLSelectiveGaussianBlurFilterOpt2.mLayoutCoord = fArr2;
                            }
                            EffectTexture process2 = gLSelectiveGaussianBlurFilterOpt2.process(effectTexture3, getFrameBuffer(i12, frameBuffer));
                            this.mProcessStage++;
                            float[] fArr3 = this.m2DFilterOpt.mLayoutCoord;
                            if (process2 == null) {
                                process2 = effectTexture;
                            }
                            if (process2 == effectTexture) {
                                this.mGauBlurHaveSucessful = false;
                                break;
                            }
                            effectTexture3 = process2;
                            fArr2 = fArr3;
                        } else {
                            this.mGauBlurHaveSucessful = true;
                            break;
                        }
                    }
                }
            }
            if (this.mGLSelectiveGaussianBlurFilterOptMerge != null && (gLSelectiveGaussianBlurFilterOpt = this.m2DFilterOpt) != null && gLSelectiveGaussianBlurFilterOpt.getSecondGauBlurTexture() != null && this.mGauBlurHaveSucessful) {
                this.mGLSelectiveGaussianBlurFilterOptMerge.setSurfaceTexture(this.mSurfaceTexture);
                this.mGLSelectiveGaussianBlurFilterOptMerge.setGaussianBlurTexture(this.m2DFilterOpt.getSecondGauBlurTexture());
                this.mGLSelectiveGaussianBlurFilterOptMerge.setLayoutCoord(this.m2DFilterOpt.mLayoutCoord);
                GLSelectiveGaussianBlurFilterOptMerge gLSelectiveGaussianBlurFilterOptMerge = this.mGLSelectiveGaussianBlurFilterOptMerge;
                GLSelectiveGaussianBlurFilterOpt gLSelectiveGaussianBlurFilterOpt3 = this.m2DFilterOpt;
                gLSelectiveGaussianBlurFilterOptMerge.mHeightFit = gLSelectiveGaussianBlurFilterOpt3.mHeightFit;
                gLSelectiveGaussianBlurFilterOptMerge.updateSurfaceViewPortSize(gLSelectiveGaussianBlurFilterOpt3.mSurfaceWidth, gLSelectiveGaussianBlurFilterOpt3.mSurfaceHeight);
                if (this.mRenderToScreen) {
                    process = this.mGLSelectiveGaussianBlurFilterOptMerge.process(effectTexture, null);
                } else {
                    process = this.mGLSelectiveGaussianBlurFilterOptMerge.process(effectTexture, frameBuffer);
                }
                effectTexture2 = process;
                z10 = true;
            } else {
                effectTexture2 = effectTexture;
            }
        }
        this.mCount++;
        GLES20.glFinish();
        VideoSurfaceTexture videoSurfaceTexture2 = this.mSurfaceTexture;
        if (videoSurfaceTexture2 != null) {
            videoSurfaceTexture2.currentEffectProcessEnd(this.mEffectType);
        }
        if (effectTexture2 == null) {
            if (!this.mRenderToScreen) {
                TextureRenderLog.e(this.mTexType, LOG_TAG, "gauopt ret effectTexture is null");
            }
        } else {
            effectTexture = effectTexture2;
        }
        if (!this.mDisableOpt && !z10) {
            return effectTexture;
        }
        if (this.mRenderToScreen) {
            return null;
        }
        return effectTexture;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public AbsEffect release() {
        GLSelectiveGaussianBlurFilter gLSelectiveGaussianBlurFilter = this.mOesFilter;
        if (gLSelectiveGaussianBlurFilter != null) {
            gLSelectiveGaussianBlurFilter.release();
            this.mOesFilter = null;
        }
        GLSelectiveGaussianBlurFilter gLSelectiveGaussianBlurFilter2 = this.m2DFilter;
        if (gLSelectiveGaussianBlurFilter2 != null) {
            gLSelectiveGaussianBlurFilter2.release();
            this.m2DFilter = null;
        }
        GLSelectiveGaussianBlurFilterOpt gLSelectiveGaussianBlurFilterOpt = this.m2DFilterOpt;
        if (gLSelectiveGaussianBlurFilterOpt != null) {
            gLSelectiveGaussianBlurFilterOpt.release();
            this.m2DFilterOpt = null;
        }
        GLSelectiveGaussianBlurFilterOptMerge gLSelectiveGaussianBlurFilterOptMerge = this.mGLSelectiveGaussianBlurFilterOptMerge;
        if (gLSelectiveGaussianBlurFilterOptMerge != null) {
            gLSelectiveGaussianBlurFilterOptMerge.release();
            this.mGLSelectiveGaussianBlurFilterOptMerge = null;
        }
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, LOG_TAG, "release,this:" + this);
        return super.release();
    }
}
