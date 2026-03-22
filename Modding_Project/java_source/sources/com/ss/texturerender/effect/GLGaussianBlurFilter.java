package com.ss.texturerender.effect;

import android.opengl.GLES20;
import android.os.Bundle;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.VideoSurfaceTexture;
/* loaded from: classes6.dex */
public class GLGaussianBlurFilter extends GLDefaultFilter {
    private static final int BASE_RESOLUTION = 172800;
    private static final float DEFAULT_SIGMA = 2.0f;
    private static final String LOG_TAG = "TR_GLGaussianBlurFilter";
    private static final float MAX_SIGMA = 26.0f;
    private int mBlurRadius;
    private int mBlurRadiusLoc;
    private float mGaussianAlpha;
    private int mGaussianAlphaLoc;
    private float[] mGaussianWeights;
    private int mGaussianWeightsLoc;
    private boolean mIsGaussianWeightsSet;
    protected int mProcessStage;
    private float mScaleRatio;
    protected float mSigma;
    private int mTexH;
    private int mTexW;
    private float mTexelHeightOffset;
    private int mTexelOffsetLoc;
    private float mTexelWidthOffset;
    private final String vertexDefaultShader;

    public GLGaussianBlurFilter(int i10) {
        super(i10, 10);
        this.vertexDefaultShader = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float gaussianWeights[44];\nuniform int radius;\nuniform vec2 texelOffset;\nuniform float gaussianAlpha;\nvoid main() {\n    vec4 sum = texture2D(sTexture, vTextureCoord) * gaussianWeights[0];\n    for (int i = 1; i <= radius; i++) {\n        vec2 stepOffset = vec2(texelOffset.x * float(i), texelOffset.y * float(i));\n        sum += texture2D(sTexture, vTextureCoord + stepOffset) * gaussianWeights[i];\n        sum += texture2D(sTexture, vTextureCoord - stepOffset) * gaussianWeights[i];\n    }\n    gl_FragColor = vec4(sum.rgb, gaussianAlpha);\n}\n";
        this.mSigma = 2.0f;
        this.mIsGaussianWeightsSet = false;
        this.mGaussianWeightsLoc = -1;
        this.mTexelOffsetLoc = -1;
        this.mBlurRadiusLoc = -1;
        this.mGaussianAlphaLoc = -1;
        this.mTexelWidthOffset = 0.0f;
        this.mTexelHeightOffset = 0.0f;
        this.mGaussianAlpha = 1.0f;
        this.mProcessStage = -1;
        this.mOrder = 6;
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, LOG_TAG, "new GLGaussianBlurFilter,this:" + this);
    }

    private double getGaussianWeight(float f10, int i10) {
        double d10 = f10;
        return (1.0d / Math.sqrt(Math.pow(d10, 2.0d) * 6.283185307179586d)) * Math.exp((-Math.pow(i10, 2.0d)) / (Math.pow(d10, 2.0d) * 2.0d));
    }

    private void updateGaussianWeights(float f10) {
        float max = Math.max(Math.min(f10, (float) MAX_SIGMA), 1.0f);
        this.mSigma = max;
        this.mBlurRadius = (int) Math.floor(Math.sqrt(Math.pow(max, 2.0d) * (-2.0d) * Math.log(0.00390625f * Math.sqrt(Math.pow(this.mSigma, 2.0d) * 6.283185307179586d))));
        TextureRenderLog.i(this.mTexType, LOG_TAG, "updateGaussianWeights sigma:" + this.mSigma + ",mBlurRadius:" + this.mBlurRadius);
        this.mGaussianWeights = new float[this.mBlurRadius + 1];
        for (int i10 = 0; i10 <= this.mBlurRadius; i10++) {
            this.mGaussianWeights[i10] = (float) getGaussianWeight(this.mSigma, i10);
        }
        float f11 = this.mGaussianWeights[0];
        for (int i11 = 1; i11 <= this.mBlurRadius; i11++) {
            f11 += this.mGaussianWeights[i11] * 2.0f;
        }
        for (int i12 = 0; i12 <= this.mBlurRadius; i12++) {
            float[] fArr = this.mGaussianWeights;
            fArr[i12] = fArr[i12] / f11;
        }
        this.mIsGaussianWeightsSet = false;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public String getStringOption(int i10) {
        if (i10 != 11001) {
            return super.getStringOption(i10);
        }
        return "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float gaussianWeights[44];\nuniform int radius;\nuniform vec2 texelOffset;\nuniform float gaussianAlpha;\nvoid main() {\n    vec4 sum = texture2D(sTexture, vTextureCoord) * gaussianWeights[0];\n    for (int i = 1; i <= radius; i++) {\n        vec2 stepOffset = vec2(texelOffset.x * float(i), texelOffset.y * float(i));\n        sum += texture2D(sTexture, vTextureCoord + stepOffset) * gaussianWeights[i];\n        sum += texture2D(sTexture, vTextureCoord - stepOffset) * gaussianWeights[i];\n    }\n    gl_FragColor = vec4(sum.rgb, gaussianAlpha);\n}\n";
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public int init(Bundle bundle) {
        if (super.init(bundle) != 0) {
            VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
            if (videoSurfaceTexture != null) {
                videoSurfaceTexture.notifyError(10, this.mEffectType, "super.init(bundle) != TR_OK");
                return -1;
            }
            return -1;
        }
        this.mGaussianWeightsLoc = GLES20.glGetUniformLocation(this.mProgram, "gaussianWeights");
        this.mTexelOffsetLoc = GLES20.glGetUniformLocation(this.mProgram, "texelOffset");
        this.mBlurRadiusLoc = GLES20.glGetUniformLocation(this.mProgram, "radius");
        this.mGaussianAlphaLoc = GLES20.glGetUniformLocation(this.mProgram, "gaussianAlpha");
        float f10 = bundle.getFloat(TextureRenderKeys.KEY_IS_STRENGTH_FLOAT, -1.0f);
        if (f10 > 1.0f) {
            updateGaussianWeights(f10);
        } else {
            updateGaussianWeights(2.0f);
        }
        this.mGaussianAlpha = bundle.getFloat("alpha", 1.0f);
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, LOG_TAG, "GLGaussianBlurFilter init,this:" + this);
        return 0;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter
    public int onDrawFrameAfter() {
        if (this.mGaussianAlpha < 1.0f) {
            GLES20.glDisable(3042);
            return 0;
        }
        return 0;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter
    public int onDrawFrameBefore() {
        if (!this.mIsGaussianWeightsSet) {
            int i10 = this.mGaussianWeightsLoc;
            if (i10 >= 0) {
                GLES20.glUniform1fv(i10, this.mBlurRadius + 1, this.mGaussianWeights, 0);
            }
            int i11 = this.mBlurRadiusLoc;
            if (i11 >= 0) {
                GLES20.glUniform1i(i11, this.mBlurRadius);
            }
            this.mIsGaussianWeightsSet = true;
        }
        int i12 = this.mBlurRadiusLoc;
        if (i12 >= 0) {
            GLES20.glUniform1i(i12, this.mBlurRadius);
        }
        int i13 = this.mTexelOffsetLoc;
        if (i13 >= 0) {
            GLES20.glUniform2f(i13, this.mTexelWidthOffset, this.mTexelHeightOffset);
        }
        float f10 = this.mGaussianAlpha;
        if (f10 < 1.0f) {
            int i14 = this.mGaussianAlphaLoc;
            if (i14 >= 0) {
                GLES20.glUniform1f(i14, f10);
            }
            GLES20.glEnable(3042);
            GLES20.glBlendFunc(770, 771);
        }
        return 0;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        if (this.mSigma == 1.0f) {
            return effectTexture;
        }
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.currentEffectProcessBegin(this.mEffectType);
        }
        EffectTexture processWithTwoPass = processWithTwoPass(effectTexture, frameBuffer, true, false, true);
        VideoSurfaceTexture videoSurfaceTexture2 = this.mSurfaceTexture;
        if (videoSurfaceTexture2 != null) {
            videoSurfaceTexture2.currentEffectProcessEnd(this.mEffectType);
        }
        return processWithTwoPass;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public EffectTexture processWithTwoPass(EffectTexture effectTexture, FrameBuffer frameBuffer, boolean z10, boolean z11, boolean z12) {
        if (this.mTexH != effectTexture.getHeight() || this.mTexW != effectTexture.getWidth()) {
            this.mTexW = effectTexture.getWidth();
            int height = effectTexture.getHeight();
            this.mTexH = height;
            float sqrt = (float) Math.sqrt(((this.mTexW * 1.0f) * height) / 172800.0f);
            this.mScaleRatio = sqrt;
            this.mScaleRatio = Math.max(sqrt, 1.0f);
            int i10 = this.mTexType;
            TextureRenderLog.d(i10, LOG_TAG, "tex w:" + this.mTexW + ",h:" + this.mTexH + ",ratio:" + this.mScaleRatio);
        }
        int i11 = this.mProcessStage;
        if (i11 != -1 && i11 != 0) {
            this.mTexelWidthOffset = 0.0f;
            this.mTexelHeightOffset = (1.0f / effectTexture.getHeight()) * this.mScaleRatio;
        } else {
            this.mTexelWidthOffset = (1.0f / effectTexture.getWidth()) * this.mScaleRatio;
            this.mTexelHeightOffset = 0.0f;
        }
        EffectTexture process = super.process(effectTexture, frameBuffer, Boolean.valueOf(z12));
        if (z10) {
            this.mTexelWidthOffset = 0.0f;
            this.mTexelHeightOffset = (1.0f / effectTexture.getHeight()) * this.mScaleRatio;
            if (z11) {
                super.process(process, null, Boolean.valueOf(z12));
                return null;
            }
            return super.process(process, frameBuffer, Boolean.valueOf(z12));
        }
        return process;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public void setOption(int i10, float f10) {
        if (i10 == 20 && f10 != this.mSigma) {
            updateGaussianWeights(f10);
            int i11 = this.mTexType;
            TextureRenderLog.i(i11, LOG_TAG, "set strength:" + this.mSigma + ",this:" + this);
        }
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public void setOption(Bundle bundle) {
        if (bundle == null || this.mEffectType != bundle.getInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE)) {
            return;
        }
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, LOG_TAG, "setOption:" + bundle.toString() + ",this:" + this);
        if (bundle.getInt(TextureRenderKeys.KEY_IS_ACTION) != 20) {
            return;
        }
        float f10 = bundle.getFloat(TextureRenderKeys.KEY_IS_FLOAT_VALUE, -1.0f);
        if (f10 == this.mSigma || f10 <= 0.0f) {
            return;
        }
        updateGaussianWeights(f10);
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, LOG_TAG, "set strength:" + this.mSigma + ",this:" + this);
    }
}
