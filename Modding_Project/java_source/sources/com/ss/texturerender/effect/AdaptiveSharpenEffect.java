package com.ss.texturerender.effect;

import android.os.Bundle;
import android.os.SystemClock;
import com.ss.texturerender.SharpenBaseWrapper;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.VideoSurfaceTexture;
/* loaded from: classes6.dex */
public class AdaptiveSharpenEffect extends AbsEffect {
    private static final String LOG_TAG = "TR_AdaptiveSharpenEffect";
    private float mAmount;
    private float[] mCm;
    private float[] mCo;
    private int mDiffImgSmoothEnable;
    private float mEdgeWeightGamma;
    private boolean mEnableBMF;
    private boolean mInitSharpenError;
    private int mMaxHeight;
    private int mMaxWidth;
    private float mOverRatio;
    private int mPowerLevel;
    private int mProcessSuccess;
    private float[] mSTMatrix;
    private int mSceneMode;
    private SharpenBaseWrapper mWrapper;

    public AdaptiveSharpenEffect(int i10) {
        super(i10, 1);
        this.mMaxWidth = 1920;
        this.mMaxHeight = 1080;
        this.mPowerLevel = 0;
        this.mSceneMode = 0;
        this.mAmount = -1.0f;
        this.mOverRatio = -1.0f;
        this.mEdgeWeightGamma = -1.0f;
        this.mDiffImgSmoothEnable = -1;
        this.mProcessSuccess = Integer.MIN_VALUE;
        this.mEnableBMF = false;
        this.mCm = new float[0];
        this.mCo = new float[0];
        TextureRenderLog.i(this.mTexType, LOG_TAG, "new AdaptiveSharpenEffect");
        this.mOrder = 10;
        this.mIsSupportOes = 1;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public int getIntOption(int i10) {
        switch (i10) {
            case 10001:
                return this.mMaxWidth;
            case 10002:
                return this.mMaxHeight;
            case 10003:
                return this.mPowerLevel;
            case 10004:
                return this.mInTextureTarget;
            default:
                return super.getIntOption(i10);
        }
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public int init(Bundle bundle) {
        boolean z10;
        boolean z11;
        boolean z12;
        super.init(bundle);
        int i10 = 0;
        if (bundle.getInt(TextureRenderKeys.KEY_IS_ENABLE_BMF) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.mEnableBMF = z10;
        int i11 = bundle.getInt(TextureRenderKeys.KEY_IS_TEXTURE_TYPE);
        if ((this.mPowerLevel != bundle.getInt(TextureRenderKeys.KEY_IS_POWER_LEVEL) || this.mInTextureTarget != i11) && this.mWrapper != null) {
            TextureRenderLog.i(this.mTexType, LOG_TAG, "release prev sharpen instance");
            this.mWrapper.ReleaseAdaptiveSharpen();
            this.mWrapper = null;
        }
        if (this.mWrapper == null) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (!this.mEnableBMF) {
                this.mInTextureTarget = i11;
                if (i11 == 36197 && this.mSTMatrix == null) {
                    this.mSTMatrix = new float[16];
                }
                this.mMaxWidth = bundle.getInt(TextureRenderKeys.KEY_IS_MAX_WIDTH);
                this.mMaxHeight = bundle.getInt(TextureRenderKeys.KEY_IS_MAX_HEIGHT);
                this.mPowerLevel = bundle.getInt(TextureRenderKeys.KEY_IS_POWER_LEVEL);
                AdaptiveSharpenWrapper adaptiveSharpenWrapper = new AdaptiveSharpenWrapper(this.mTexType);
                this.mWrapper = adaptiveSharpenWrapper;
                if (this.mInTextureTarget == 36197) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                if (!adaptiveSharpenWrapper.InitAdaptiveSharpen(z12, this.mMaxWidth, this.mMaxHeight, this.mPowerLevel)) {
                    i10 = -1;
                }
            } else {
                this.mInTextureTarget = i11;
                TextureRenderLog.i(this.mTexType, LOG_TAG, "init sharpen mInTextureTarget: " + this.mInTextureTarget);
                if (this.mInTextureTarget == 36197 && this.mSTMatrix == null) {
                    this.mSTMatrix = new float[16];
                }
                this.mMaxWidth = bundle.getInt(TextureRenderKeys.KEY_IS_MAX_WIDTH);
                this.mMaxHeight = bundle.getInt(TextureRenderKeys.KEY_IS_MAX_HEIGHT);
                int i12 = bundle.getInt(TextureRenderKeys.KEY_IS_BMF_SHARPEN_ALG_TYPE);
                int i13 = bundle.getInt("pool_size");
                float f10 = bundle.getFloat(TextureRenderKeys.KEY_IS_BMF_SHARPEN_WEIGHT_THRESHOLD);
                float f11 = bundle.getFloat(TextureRenderKeys.KEY_IS_BMF_SHARPEN_GLOBAL_THRESHOLD);
                float f12 = bundle.getFloat(TextureRenderKeys.KEY_IS_BMF_SHARPEN_OVERFLOW_RATIO);
                if (bundle.getInt(TextureRenderKeys.KEY_IS_BMF_SHARPEN_ENABLE_ADAPTIVE) == 1) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                float f13 = bundle.getFloat(TextureRenderKeys.KEY_IS_BMF_SHARPEN_INITIAL_WEIGHT);
                float f14 = bundle.getFloat(TextureRenderKeys.KEY_IS_BMF_SHARPEN_LOW_WEIGHT_THRESHOLD);
                String string = bundle.getString(TextureRenderKeys.KEY_IS_BMF_SHARPEN_PROGRAME_CACHE_DIR, "");
                BMFAdaptiveSharpenWrapper bMFAdaptiveSharpenWrapper = new BMFAdaptiveSharpenWrapper(this.mTexType);
                this.mWrapper = bMFAdaptiveSharpenWrapper;
                int InitAdaptiveSharpen = bMFAdaptiveSharpenWrapper.InitAdaptiveSharpen(i12, this.mMaxWidth, this.mMaxHeight, i13, string, f10, f11, f12, z11, f13, f14);
                TextureRenderLog.i(this.mTexType, LOG_TAG, "init sharpen, algType: " + i12);
                i10 = InitAdaptiveSharpen;
            }
            TextureRenderLog.i(this.mTexType, LOG_TAG, "init sharpen, ret:" + i10 + ",cost:" + (SystemClock.elapsedRealtime() - elapsedRealtime));
        }
        if (i10 != 0) {
            this.mInitSharpenError = true;
            this.mWrapper.ReleaseAdaptiveSharpen();
            this.mWrapper = null;
            VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
            if (videoSurfaceTexture != null) {
                videoSurfaceTexture.notifyError(3, this.mEffectType, "init sharpen fail, release");
            }
            TextureRenderLog.i(this.mTexType, LOG_TAG, "init sharpen fail, release");
        }
        return i10;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        int i10;
        int AdaptiveSharpenProcess;
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture == null) {
            return effectTexture;
        }
        if (this.mWrapper == null) {
            if (this.mInitSharpenError) {
                if (videoSurfaceTexture != null) {
                    videoSurfaceTexture.notifyError(4, this.mEffectType, "");
                }
                this.mInitSharpenError = false;
            }
            TextureRenderLog.d(this.mTexType, LOG_TAG, "sharpen empty");
            this.mSurfaceTexture.setOption(15, 0);
            return effectTexture;
        }
        int width = effectTexture.getWidth();
        int height = effectTexture.getHeight();
        if (!supportProcessResolution(width, height)) {
            return effectTexture;
        }
        this.mSurfaceTexture.currentEffectProcessBegin(this.mEffectType);
        if (this.mSurfaceTexture.getIntOption(16, -1) == 1) {
            if (!this.mEnableBMF) {
                if (this.mInTextureTarget == 36197) {
                    this.mSurfaceTexture.getTransformMatrix(this.mSTMatrix);
                    i10 = -1;
                    AdaptiveSharpenProcess = this.mWrapper.AdaptiveSharpenOesProcess(effectTexture.getTexID(), width, height, this.mSTMatrix, true, this.mSceneMode, this.mAmount, this.mOverRatio, this.mEdgeWeightGamma, this.mDiffImgSmoothEnable);
                } else {
                    i10 = -1;
                    AdaptiveSharpenProcess = this.mWrapper.AdaptiveSharpenProcess(effectTexture.getTexID(), width, height, true, this.mSceneMode, this.mAmount, this.mOverRatio, this.mEdgeWeightGamma, this.mDiffImgSmoothEnable);
                }
            } else {
                i10 = -1;
                if (this.mInTextureTarget == 36197) {
                    this.mSurfaceTexture.getTransformMatrix(this.mSTMatrix);
                    AdaptiveSharpenProcess = this.mWrapper.AdaptiveSharpenOesProcess(effectTexture.getTexID(), width, height, this.mCm, this.mCo, this.mSTMatrix);
                } else {
                    AdaptiveSharpenProcess = this.mWrapper.AdaptiveSharpenProcess(effectTexture.getTexID(), width, height);
                }
            }
            if (AdaptiveSharpenProcess != 0) {
                if (this.mProcessSuccess != i10) {
                    TextureRenderLog.e(this.mTexType, LOG_TAG, "process error,ret:" + AdaptiveSharpenProcess + ",width:" + width + ",height:" + height + ",texTarget:" + this.mInTextureTarget);
                    this.mProcessSuccess = i10;
                }
                VideoSurfaceTexture videoSurfaceTexture2 = this.mSurfaceTexture;
                if (videoSurfaceTexture2 != null) {
                    videoSurfaceTexture2.notifyError(4, this.mEffectType, "");
                }
            } else {
                int GetAdaptiveSharpenOutput = this.mWrapper.GetAdaptiveSharpenOutput();
                if (this.mProcessSuccess != 0) {
                    TextureRenderLog.d(this.mTexType, LOG_TAG, "process success,texid:" + GetAdaptiveSharpenOutput + ",width:" + width + ",height:" + height + ",texTarget:" + this.mInTextureTarget);
                    this.mProcessSuccess = 0;
                }
                this.mSurfaceTexture.setOption(15, 1);
                effectTexture.giveBack();
                this.mSurfaceTexture.currentEffectProcessEnd(this.mEffectType);
                return new EffectTexture((EffectTextureManager) null, GetAdaptiveSharpenOutput, width, height, 3553);
            }
        }
        this.mSurfaceTexture.setOption(15, 0);
        this.mSurfaceTexture.currentEffectProcessEnd(this.mEffectType);
        return effectTexture;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public AbsEffect release() {
        SharpenBaseWrapper sharpenBaseWrapper = this.mWrapper;
        if (sharpenBaseWrapper != null) {
            sharpenBaseWrapper.ReleaseAdaptiveSharpen();
            this.mWrapper = null;
            TextureRenderLog.i(this.mTexType, LOG_TAG, "sharpen released");
        }
        return super.release();
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public void setOption(int i10, int i11) {
        if (i10 == 14) {
            this.mDiffImgSmoothEnable = i11;
            int i12 = this.mTexType;
            TextureRenderLog.i(i12, LOG_TAG, "set DiffImgSmoothEnable:" + i11);
        } else if (i10 != 17) {
            super.setOption(i10, i11);
        } else {
            this.mSceneMode = i11;
            int i13 = this.mTexType;
            TextureRenderLog.i(i13, LOG_TAG, "set SceneMode:" + i11);
        }
    }

    public boolean supportProcessResolution(int i10, int i11) {
        if (this.mMaxWidth > 0 && this.mMaxHeight > 0) {
            int max = Math.max(i10, i11);
            int min = Math.min(i10, i11);
            int max2 = Math.max(this.mMaxWidth, this.mMaxHeight);
            int min2 = Math.min(this.mMaxWidth, this.mMaxHeight);
            if (max > max2 || min > min2) {
                TextureRenderLog.e(this.mTexType, LOG_TAG, "width/height out of range");
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public void setOption(int i10, float f10) {
        switch (i10) {
            case 11:
                this.mAmount = f10;
                break;
            case 12:
                this.mOverRatio = f10;
                break;
            case 13:
                this.mEdgeWeightGamma = f10;
                break;
            default:
                super.setOption(i10, f10);
                break;
        }
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, LOG_TAG, "setOption float, key:" + i10 + ",value:" + f10);
    }
}
