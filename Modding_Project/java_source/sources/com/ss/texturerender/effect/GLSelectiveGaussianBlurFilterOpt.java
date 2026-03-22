package com.ss.texturerender.effect;

import android.opengl.GLES20;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.ss.texturerender.TexGLUtils;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.VideoSurfaceTexture;
/* loaded from: classes6.dex */
public class GLSelectiveGaussianBlurFilterOpt extends GLGaussianBlurFilter {
    private static final String LOG_TAG = "TR_GLSelectiveGaussianBlurFilterOPT";
    private final String fragmentShaderEmptyFunc;
    private final String fragmentShaderGaussianFunc;
    private final String fragmentShaderMainFunc;
    private final String fragmentShaderParam;
    private float mDisplayHeight;
    private float mDisplayWidth;
    private float mDisplayX;
    private float mDisplayY;
    protected boolean mEnableSecondPass;
    private EffectTexture mFirstGauBlurTexture;
    private int mGauBlurLongTexLength;
    private int mGaussianBlurTexHeight;
    private int mGaussianBlurTexWidth;
    public int mHeightFit;
    private int mHeightFitLoc;
    protected int mInTexHeight;
    protected int mInTexWidth;
    protected float[] mLayoutCoord;
    private int mLayoutCoordLoc;
    private int mProcessStageLoc;
    private EffectTexture mSecondGauBlurTexture;
    protected int mSurfaceHeight;
    protected int mSurfaceWidth;

    public GLSelectiveGaussianBlurFilterOpt(int i10) {
        super(i10);
        this.fragmentShaderParam = "precision mediump float;\n varying vec2 vTextureCoord;\n uniform sampler2D sTexture;\n uniform float gaussianAlpha;\n uniform vec4 layoutCoord;//x,y,w,h\n uniform int processStage;//0:stage1;1:stage2\n uniform int heightFit;//SurfaceRatio > TexRatio\n";
        this.fragmentShaderMainFunc = " void main() {\n     vec2 resetCoord = vec2(vTextureCoord.x, vTextureCoord.y);\n    if (processStage == 0)\n    {\n        if (heightFit == 1) {\n            float middleY = layoutCoord.y / (1.0 - layoutCoord.w);\n            if (vTextureCoord.y <= middleY) {\n                float ycoord = -(((vTextureCoord.y / middleY * layoutCoord.y) - layoutCoord.y) / layoutCoord.w);\n                resetCoord = vec2(vTextureCoord.x, ycoord);\n            } else {\n                float ycoord =\n                    2.0 - ((((vTextureCoord.y - middleY) / (1.0 - middleY) * (1.0 - layoutCoord.y - layoutCoord.w) +\n                            (layoutCoord.y + layoutCoord.w)) -\n                           layoutCoord.y) /\n                              layoutCoord.w);\n                resetCoord = vec2(vTextureCoord.x, ycoord);\n            }\n        } else {\n            resetCoord = vec2(vTextureCoord.x, vTextureCoord.y);\n        }\n    }\n    vec4 oriColor = texture2D(sTexture, resetCoord);\n    gl_FragColor = gaussianBlurKernel(oriColor, resetCoord);\n }";
        this.fragmentShaderGaussianFunc = "uniform float gaussianWeights[44];\nuniform int radius;\nuniform vec2 texelOffset;\nvec4 gaussianBlurKernel(vec4 oriColor, vec2 texCoord) {\n    int curRadius = radius;\n    vec4 sum = oriColor * gaussianWeights[0];\n    for (int i = 1; i <= curRadius; i++) {\n        vec2 stepOffset = vec2(texelOffset.x * float(i), texelOffset.y * float(i));\n        sum += texture2D(sTexture, texCoord + stepOffset) * gaussianWeights[i];\n        sum += texture2D(sTexture, texCoord - stepOffset) * gaussianWeights[i];\n    }\n    return sum;\n}\n";
        this.fragmentShaderEmptyFunc = "vec4 gaussianBlurKernel(vec4 oriColor, vec2 texCoord) {\n    return oriColor;\n}\n";
        this.mDisplayX = -1.0f;
        this.mLayoutCoord = null;
        this.mLayoutCoordLoc = -1;
        this.mProcessStageLoc = -1;
        this.mEnableSecondPass = false;
        this.mInTexHeight = -1;
        this.mInTexWidth = -1;
        this.mSurfaceHeight = -1;
        this.mSurfaceWidth = -1;
        this.mFirstGauBlurTexture = null;
        this.mSecondGauBlurTexture = null;
        this.mGaussianBlurTexWidth = 0;
        this.mGaussianBlurTexHeight = 0;
        this.mGauBlurLongTexLength = 320;
        this.mHeightFit = 0;
        this.mHeightFitLoc = -1;
        this.mEffectType = 15;
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, LOG_TAG, "new GLSelectiveGaussianBlurFilter,this:" + toString());
    }

    private EffectTexture _genTexture(int i10, int i11) {
        return _genTexture(i10, i11, 6408, 6408, 5121);
    }

    private void _releaseEffectTex(EffectTexture effectTexture) {
        if (effectTexture != null) {
            TexGLUtils.deleteTexture(effectTexture.getTexID());
            int i10 = this.mTexType;
            TextureRenderLog.i(i10, LOG_TAG, "onTextureReturn delTex:" + effectTexture);
        }
    }

    private void cacluGauBlurTexSize(float f10, float f11, int i10) {
        if (i10 == 0 && f10 >= f11) {
            int i11 = this.mSurfaceWidth;
            float f12 = this.mSurfaceHeight - (i11 * f11);
            if (f12 > i11) {
                int i12 = this.mGauBlurLongTexLength;
                this.mGaussianBlurTexHeight = i12;
                this.mGaussianBlurTexWidth = (int) (i12 * (i11 / f12));
                return;
            }
            int i13 = this.mGauBlurLongTexLength;
            this.mGaussianBlurTexWidth = i13;
            this.mGaussianBlurTexHeight = (int) (i13 * (f12 / i11));
        }
    }

    private void updateLayoutCoord(float f10, float f11, int i10, float f12, float[] fArr) {
        if (i10 == 0) {
            if (f10 >= f11) {
                float f13 = f11 / f10;
                fArr[0] = 0.0f;
                fArr[1] = (1.0f - f13) * f12;
                fArr[2] = 1.0f;
                fArr[3] = f13;
                return;
            }
            float f14 = f10 / f11;
            fArr[0] = (1.0f - f14) * f12;
            fArr[1] = 0.0f;
            fArr[2] = f14;
            fArr[3] = 1.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.texturerender.effect.GLDefaultFilter
    @Nullable
    public EffectTexture genTexture() {
        if (this.mGaussianBlurTexWidth == 0 || this.mGaussianBlurTexHeight == 0) {
            TextureRenderLog.e(this.mTexType, LOG_TAG, "gaussianBlur size invaild");
        }
        int i10 = this.mProcessStage;
        if (i10 == 0) {
            EffectTexture effectTexture = this.mFirstGauBlurTexture;
            if (effectTexture == null || effectTexture.getWidth() != this.mGaussianBlurTexWidth || this.mFirstGauBlurTexture.getHeight() != this.mGaussianBlurTexHeight) {
                EffectTexture effectTexture2 = this.mFirstGauBlurTexture;
                if (effectTexture2 != null) {
                    _releaseEffectTex(effectTexture2);
                    this.mFirstGauBlurTexture = null;
                }
                VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
                if (videoSurfaceTexture != null) {
                    this.mFirstGauBlurTexture = _genTexture(this.mGaussianBlurTexWidth, this.mGaussianBlurTexHeight, videoSurfaceTexture.getIntOption(130));
                } else {
                    this.mFirstGauBlurTexture = _genTexture(this.mGaussianBlurTexWidth, this.mGaussianBlurTexHeight);
                }
            }
            return this.mFirstGauBlurTexture;
        } else if (i10 != 1) {
            return null;
        } else {
            EffectTexture effectTexture3 = this.mSecondGauBlurTexture;
            if (effectTexture3 == null || effectTexture3.getWidth() != this.mGaussianBlurTexWidth || this.mSecondGauBlurTexture.getHeight() != this.mGaussianBlurTexHeight) {
                EffectTexture effectTexture4 = this.mSecondGauBlurTexture;
                if (effectTexture4 != null) {
                    _releaseEffectTex(effectTexture4);
                    this.mSecondGauBlurTexture = null;
                }
                VideoSurfaceTexture videoSurfaceTexture2 = this.mSurfaceTexture;
                if (videoSurfaceTexture2 != null) {
                    this.mSecondGauBlurTexture = _genTexture(this.mGaussianBlurTexWidth, this.mGaussianBlurTexHeight, videoSurfaceTexture2.getIntOption(130));
                } else {
                    this.mSecondGauBlurTexture = _genTexture(this.mGaussianBlurTexWidth, this.mGaussianBlurTexHeight);
                }
            }
            return this.mSecondGauBlurTexture;
        }
    }

    public EffectTexture getSecondGauBlurTexture() {
        return this.mSecondGauBlurTexture;
    }

    @Override // com.ss.texturerender.effect.GLGaussianBlurFilter, com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public String getStringOption(int i10) {
        if (i10 != 11001) {
            return super.getStringOption(i10);
        }
        if (this.mSigma == 1.0f) {
            return "precision mediump float;\n varying vec2 vTextureCoord;\n uniform sampler2D sTexture;\n uniform float gaussianAlpha;\n uniform vec4 layoutCoord;//x,y,w,h\n uniform int processStage;//0:stage1;1:stage2\n uniform int heightFit;//SurfaceRatio > TexRatio\nvec4 gaussianBlurKernel(vec4 oriColor, vec2 texCoord) {\n    return oriColor;\n}\n void main() {\n     vec2 resetCoord = vec2(vTextureCoord.x, vTextureCoord.y);\n    if (processStage == 0)\n    {\n        if (heightFit == 1) {\n            float middleY = layoutCoord.y / (1.0 - layoutCoord.w);\n            if (vTextureCoord.y <= middleY) {\n                float ycoord = -(((vTextureCoord.y / middleY * layoutCoord.y) - layoutCoord.y) / layoutCoord.w);\n                resetCoord = vec2(vTextureCoord.x, ycoord);\n            } else {\n                float ycoord =\n                    2.0 - ((((vTextureCoord.y - middleY) / (1.0 - middleY) * (1.0 - layoutCoord.y - layoutCoord.w) +\n                            (layoutCoord.y + layoutCoord.w)) -\n                           layoutCoord.y) /\n                              layoutCoord.w);\n                resetCoord = vec2(vTextureCoord.x, ycoord);\n            }\n        } else {\n            resetCoord = vec2(vTextureCoord.x, vTextureCoord.y);\n        }\n    }\n    vec4 oriColor = texture2D(sTexture, resetCoord);\n    gl_FragColor = gaussianBlurKernel(oriColor, resetCoord);\n }";
        }
        return "precision mediump float;\n varying vec2 vTextureCoord;\n uniform sampler2D sTexture;\n uniform float gaussianAlpha;\n uniform vec4 layoutCoord;//x,y,w,h\n uniform int processStage;//0:stage1;1:stage2\n uniform int heightFit;//SurfaceRatio > TexRatio\nuniform float gaussianWeights[44];\nuniform int radius;\nuniform vec2 texelOffset;\nvec4 gaussianBlurKernel(vec4 oriColor, vec2 texCoord) {\n    int curRadius = radius;\n    vec4 sum = oriColor * gaussianWeights[0];\n    for (int i = 1; i <= curRadius; i++) {\n        vec2 stepOffset = vec2(texelOffset.x * float(i), texelOffset.y * float(i));\n        sum += texture2D(sTexture, texCoord + stepOffset) * gaussianWeights[i];\n        sum += texture2D(sTexture, texCoord - stepOffset) * gaussianWeights[i];\n    }\n    return sum;\n}\n void main() {\n     vec2 resetCoord = vec2(vTextureCoord.x, vTextureCoord.y);\n    if (processStage == 0)\n    {\n        if (heightFit == 1) {\n            float middleY = layoutCoord.y / (1.0 - layoutCoord.w);\n            if (vTextureCoord.y <= middleY) {\n                float ycoord = -(((vTextureCoord.y / middleY * layoutCoord.y) - layoutCoord.y) / layoutCoord.w);\n                resetCoord = vec2(vTextureCoord.x, ycoord);\n            } else {\n                float ycoord =\n                    2.0 - ((((vTextureCoord.y - middleY) / (1.0 - middleY) * (1.0 - layoutCoord.y - layoutCoord.w) +\n                            (layoutCoord.y + layoutCoord.w)) -\n                           layoutCoord.y) /\n                              layoutCoord.w);\n                resetCoord = vec2(vTextureCoord.x, ycoord);\n            }\n        } else {\n            resetCoord = vec2(vTextureCoord.x, vTextureCoord.y);\n        }\n    }\n    vec4 oriColor = texture2D(sTexture, resetCoord);\n    gl_FragColor = gaussianBlurKernel(oriColor, resetCoord);\n }";
    }

    @Override // com.ss.texturerender.effect.GLGaussianBlurFilter, com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public int init(Bundle bundle) {
        this.mInTextureTarget = 3553;
        this.mSigma = bundle.getFloat(TextureRenderKeys.KEY_IS_STRENGTH_FLOAT, -1.0f);
        if (this.mLayoutCoord == null) {
            this.mLayoutCoord = new float[4];
        }
        if (bundle.containsKey(TextureRenderKeys.KEY_IS_X)) {
            this.mDisplayX = bundle.getFloat(TextureRenderKeys.KEY_IS_X, 0.0f);
            this.mDisplayY = bundle.getFloat(TextureRenderKeys.KEY_IS_Y, 0.0f);
            this.mDisplayWidth = bundle.getFloat("width", 1.0f);
            this.mDisplayHeight = bundle.getFloat("height", 1.0f);
        } else {
            this.mLayoutAspectRatio = bundle.getFloat(TextureRenderKeys.KEY_IS_ASPECT_RATIO, 0.5f);
        }
        this.mGauBlurLongTexLength = bundle.getInt(TextureRenderKeys.KEY_IS_SELECT_GAUSSBLUR_TEX_LENGTH, 320);
        int init = super.init(bundle);
        if (init == 0) {
            this.mLayoutCoordLoc = GLES20.glGetUniformLocation(this.mProgram, "layoutCoord");
            this.mProcessStageLoc = GLES20.glGetUniformLocation(this.mProgram, "processStage");
            this.mHeightFitLoc = GLES20.glGetUniformLocation(this.mProgram, "heightFit");
        }
        GLES20.glUseProgram(this.mProgram);
        return init;
    }

    @Override // com.ss.texturerender.effect.GLGaussianBlurFilter, com.ss.texturerender.effect.GLDefaultFilter
    public int onDrawFrameBefore() {
        if (this.mProcessStage == 0) {
            float f10 = this.mDisplayX;
            if (f10 < 0.0f) {
                updateLayoutCoord((this.mSurfaceHeight * 1.0f) / this.mSurfaceWidth, (this.mInTexHeight * 1.0f) / this.mInTexWidth, 0, this.mLayoutAspectRatio, this.mLayoutCoord);
            } else {
                float[] fArr = this.mLayoutCoord;
                fArr[0] = f10;
                fArr[1] = this.mDisplayY;
                fArr[2] = this.mDisplayWidth;
                fArr[3] = this.mDisplayHeight;
            }
        }
        int i10 = this.mLayoutCoordLoc;
        float[] fArr2 = this.mLayoutCoord;
        GLES20.glUniform4f(i10, fArr2[0], fArr2[1], fArr2[2], fArr2[3]);
        int i11 = this.mProcessStageLoc;
        if (i11 >= 0) {
            GLES20.glUniform1i(i11, this.mProcessStage);
        }
        GLES20.glUniform1i(this.mHeightFitLoc, this.mHeightFit);
        int i12 = this.mTexType;
        TexGLUtils.checkGLError(i12, "filter glDrawArrays before,type:" + this.mEffectType);
        return super.onDrawFrameBefore();
    }

    @Override // com.ss.texturerender.effect.GLGaussianBlurFilter, com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        this.mInTexWidth = effectTexture.getWidth();
        this.mInTexHeight = effectTexture.getHeight();
        this.mSurfaceWidth = this.mSurfaceTexture.getViewportWidth();
        int viewportHeight = this.mSurfaceTexture.getViewportHeight();
        this.mSurfaceHeight = viewportHeight;
        if ((viewportHeight * 1.0f) / this.mSurfaceWidth >= (this.mInTexHeight * 1.0f) / this.mInTexWidth) {
            this.mHeightFit = 1;
        } else {
            this.mHeightFit = 0;
        }
        return processWithTwoPass(effectTexture, frameBuffer, false, false, false);
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public AbsEffect release() {
        EffectTexture effectTexture = this.mFirstGauBlurTexture;
        if (effectTexture != null) {
            _releaseEffectTex(effectTexture);
            this.mFirstGauBlurTexture = null;
        }
        EffectTexture effectTexture2 = this.mSecondGauBlurTexture;
        if (effectTexture2 != null) {
            _releaseEffectTex(effectTexture2);
            this.mSecondGauBlurTexture = null;
        }
        return super.release();
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter
    public int updateRenderParam(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        if (this.mProcessStage == 0) {
            cacluGauBlurTexSize((this.mSurfaceHeight * 1.0f) / this.mSurfaceWidth, (this.mInTexHeight * 1.0f) / this.mInTexWidth, 0);
        }
        int i10 = this.mGaussianBlurTexWidth;
        this.mViewPortWidth = i10;
        int i11 = this.mGaussianBlurTexHeight;
        this.mViewPortHeight = i11;
        this.mViewPortX = 0;
        this.mViewPortY = 0;
        this.mOutTexWidth = i10;
        this.mOutTexHeight = i11;
        return 0;
    }

    private EffectTexture _genTexture(int i10, int i11, int i12) {
        if (i12 >= 10) {
            return _genTexture(i10, i11, 32857, 6408, 33640);
        }
        return _genTexture(i10, i11);
    }

    private EffectTexture _genTexture(int i10, int i11, int i12, int i13, int i14) {
        int genTexture = TexGLUtils.genTexture(3553);
        GLES20.glBindTexture(3553, genTexture);
        GLES20.glTexImage2D(3553, 0, i12, i10, i11, 0, i13, i14, null);
        EffectTexture effectTexture = new EffectTexture(null, genTexture, i10, i11, 3553, i12, i13, i14);
        int i15 = this.mTexType;
        TextureRenderLog.i(i15, LOG_TAG, "genTexture:" + effectTexture.toString());
        return effectTexture;
    }
}
