package com.ss.texturerender.effect;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.ss.texturerender.AdaptiveGradingWrapper;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
/* loaded from: classes6.dex */
public class AdaptiveGradingEffect extends AbsEffect {
    private static final int PROCESS_NEED_BMF_COMPUTE = -2;
    private static final int PROCESS_NO_NEED_PROCESS = -1;
    private AdaptiveGradingWrapper mAdaptiveGradingWrappers;
    private float mDstBrightness;
    private float mDstContrast;
    private float mDstSaturation;
    private long mGopTimeMs;
    private boolean mIsNewFrame;
    private int mMaxHeight;
    private int mMaxWidth;
    private float mSrcBrightness;
    private float mSrcContrast;
    private float mSrcSaturation;
    private float[] mStMatrix;
    private long mStartPlayTime;

    public AdaptiveGradingEffect(int i10) {
        super(i10, 14);
        this.mGopTimeMs = 2000L;
        this.mStartPlayTime = 0L;
        this.mOrder = 6;
        this.mAdaptiveGradingWrappers = new AdaptiveGradingWrapper(i10);
    }

    private float getBundleValue(@NonNull Bundle bundle, @NonNull String str, float f10) {
        float f11 = bundle.getFloat(str);
        if (f11 == 0.0f) {
            return f10;
        }
        return f11;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public int init(Bundle bundle) {
        String str;
        float[] fArr;
        int init = super.init(bundle);
        if (init < 0) {
            return init;
        }
        float[] fArr2 = new float[2];
        float[] fArr3 = new float[2];
        float[] fArr4 = new float[2];
        if (bundle != null) {
            this.mMaxWidth = bundle.getInt(TextureRenderKeys.KEY_IS_MAX_WIDTH);
            this.mMaxHeight = bundle.getInt(TextureRenderKeys.KEY_IS_MAX_HEIGHT);
            String string = bundle.getString(TextureRenderKeys.KEY_IS_ADAPTIVE_GRADING_CACHE_FILE);
            this.mGopTimeMs = bundle.getLong(TextureRenderKeys.KEY_IS_ADAPTIVE_GRADING_GOP_TIME_MS);
            fArr2 = bundle.getFloatArray(TextureRenderKeys.KEY_IS_ADAPTIVE_GRADING_BRIGHTNESS_THRESHOLD);
            fArr3 = bundle.getFloatArray(TextureRenderKeys.KEY_IS_ADAPTIVE_GRADING_CONTRAST_THRESHOLD);
            fArr = bundle.getFloatArray(TextureRenderKeys.KEY_IS_ADAPTIVE_GRADING_SATURATION_THRESHOLD);
            str = string;
        } else {
            str = "";
            fArr = fArr4;
        }
        float[] fArr5 = fArr2;
        float[] fArr6 = fArr3;
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, "AdaptiveGrading", "AdaptiveGrading width=" + this.mMaxWidth + "::height=" + this.mMaxHeight);
        if (this.mAdaptiveGradingWrappers.init(this.mMaxWidth, this.mMaxHeight, str, fArr5, fArr6, fArr)) {
            return 0;
        }
        return -1;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        EffectTexture effectTexture2;
        int i10;
        if (this.mSurfaceTexture != null && this.mAdaptiveGradingWrappers != null && effectTexture != null) {
            float f10 = this.mSrcBrightness;
            if (f10 == -1.0f && this.mSrcContrast == -1.0f && this.mSrcSaturation == -1.0f) {
                TextureRenderLog.i(this.mTexType, "AdaptiveGrading", "process no need");
                return effectTexture;
            }
            if (f10 == 0.0f && this.mSrcContrast == 0.0f && this.mSrcSaturation == 0.0f) {
                if (System.currentTimeMillis() - this.mStartPlayTime > this.mGopTimeMs) {
                    this.mSrcBrightness = -2.0f;
                    this.mSrcContrast = -2.0f;
                    this.mSrcSaturation = -2.0f;
                } else {
                    return effectTexture;
                }
            }
            if (effectTexture.getTexTarget() == 36197) {
                if (this.mStMatrix == null) {
                    this.mStMatrix = new float[16];
                }
                this.mSurfaceTexture.getTransformMatrix(this.mStMatrix);
                int processOES = this.mAdaptiveGradingWrappers.processOES(effectTexture.getTexID(), effectTexture.getWidth(), effectTexture.getHeight(), this.mStMatrix, this.mSrcBrightness, this.mDstBrightness, this.mSrcContrast, this.mDstContrast, this.mSrcSaturation, this.mDstSaturation, this.mIsNewFrame);
                if (processOES == effectTexture.getTexID()) {
                    i10 = effectTexture.getTexTarget();
                } else {
                    i10 = 3553;
                }
                effectTexture2 = new EffectTexture((EffectTextureManager) null, processOES, effectTexture.getWidth(), effectTexture.getHeight(), i10);
            } else {
                effectTexture2 = new EffectTexture((EffectTextureManager) null, this.mAdaptiveGradingWrappers.process(effectTexture.getTexID(), effectTexture.getWidth(), effectTexture.getHeight(), this.mSrcBrightness, this.mDstBrightness, this.mSrcContrast, this.mDstContrast, this.mSrcSaturation, this.mDstSaturation, this.mIsNewFrame), effectTexture.getWidth(), effectTexture.getHeight(), 3553);
                effectTexture.giveBack();
            }
            if (this.mIsNewFrame) {
                this.mStartPlayTime = System.currentTimeMillis();
                this.mIsNewFrame = false;
            }
            return effectTexture2;
        }
        TextureRenderLog.i(this.mTexType, "AdaptiveGrading", "process mAdaptiveGradingWrappers null");
        return effectTexture;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public AbsEffect release() {
        this.mAdaptiveGradingWrappers.free();
        this.mAdaptiveGradingWrappers = null;
        TextureRenderLog.i(this.mTexType, "AdaptiveGrading", "release");
        return super.release();
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public void setOption(Bundle bundle) {
        super.setOption(bundle);
        if (bundle == null) {
            return;
        }
        try {
            this.mDstBrightness = getBundleValue(bundle, TextureRenderKeys.KEY_IS_ADAPTIVE_GRADING_DST_BRIGHTNESS, this.mDstBrightness);
            this.mDstContrast = getBundleValue(bundle, TextureRenderKeys.KEY_IS_ADAPTIVE_GRADING_DST_CONTRAST, this.mDstContrast);
            this.mDstSaturation = getBundleValue(bundle, TextureRenderKeys.KEY_IS_ADAPTIVE_GRADING_DST_SATURATION, this.mDstSaturation);
            this.mSrcSaturation = getBundleValue(bundle, TextureRenderKeys.KEY_IS_ADAPTIVE_GRADING_SRC_SATURATION, this.mSrcSaturation);
            this.mSrcContrast = getBundleValue(bundle, TextureRenderKeys.KEY_IS_ADAPTIVE_GRADING_SRC_CONTRAST, this.mSrcContrast);
            this.mSrcBrightness = getBundleValue(bundle, TextureRenderKeys.KEY_IS_ADAPTIVE_GRADING_SRC_BRIGHTNESS, this.mSrcBrightness);
            boolean z10 = bundle.getBoolean(TextureRenderKeys.KEY_IS_ADAPTIVE_GRADING_IS_NEW_FRAME);
            this.mIsNewFrame = z10;
            if (z10) {
                this.mStartPlayTime = 0L;
                this.mSrcBrightness = 0.0f;
                this.mSrcContrast = 0.0f;
                this.mSrcSaturation = 0.0f;
            }
        } catch (Exception e10) {
            int i10 = this.mTexType;
            TextureRenderLog.i(i10, "AdaptiveGrading", "AdaptiveGrading ex=" + e10.toString());
        }
    }
}
