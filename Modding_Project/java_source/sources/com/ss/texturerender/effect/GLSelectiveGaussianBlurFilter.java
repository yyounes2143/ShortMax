package com.ss.texturerender.effect;

import android.opengl.GLES20;
import android.os.Bundle;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
/* loaded from: classes6.dex */
public class GLSelectiveGaussianBlurFilter extends GLGaussianBlurFilter {
    private static final String LOG_TAG = "TR_GLSelectiveGaussianBlurFilter";
    private static final String oesFragmentShaderMainFunc = "// return 1 if v inside the box, return 0 otherwise\nfloat insideBox(vec2 v, vec2 bottomLeft, vec2 topRight) {\n    vec2 s = step(bottomLeft, v) - step(topRight, v);\n    return s.x * s.y;\n}\n//pointer to box edge distance\nfloat pointToBoxDistance(vec2 v, vec2 bottomLeft, vec2 topRight, float edge) {\n    vec2 distance = smoothstep(0.0, blurAreaParam.x, abs(v - (bottomLeft + topRight) / 2.0) - (topRight - bottomLeft) / 2.0);\n    return sqrt(distance.x * distance.x + distance.y * distance.y);\n}\n\nvoid main() {\n    vec2 stage1Coord = vec2((vTextureCoord.x - layoutCoord.x) / layoutCoord.z, (vTextureCoord.y - layoutCoord.y) / layoutCoord.w);\n    vec2 resetCoord = (1.0 - processStage) * stage1Coord + processStage * vTextureCoord;\n    vec2 oriBoxBottomLeft = vec2(layoutCoord.x, layoutCoord.y);\n    vec2 oriBoxTopRight = vec2(layoutCoord.x+layoutCoord.z, layoutCoord.y+layoutCoord.w);\n    if (insideBox(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight) > 0.5) {\n        gl_FragColor = texture2D(sTexture, resetCoord);\n        return;\n    } else {\n        float scale = blurAreaParam.y * (1.0 - processStage) + processStage * 1.0;\n        if (resetCoord.y <= 0.0 || resetCoord.y >= 1.0) {\n            resetCoord.x = (resetCoord.x - 0.5) * scale + 0.5;\n            if (resetCoord.y < 0.0) {\n                resetCoord.y = resetCoord.y * scale;\n                if (repeadMode == 1) {\n                    resetCoord.y = 1.0 + resetCoord.y;\n                } else if (repeadMode == 2) {\n                    resetCoord.y = -resetCoord.y;\n                }\n            } else {\n                resetCoord.y = (resetCoord.y-1.0)*scale+1.0;\n                if (repeadMode == 1) {\n                    resetCoord.y = resetCoord.y - 1.0;\n                } else if (repeadMode == 2) {\n                    resetCoord.y = 2.0 - resetCoord.y;\n                }\n            }\n        } else {\n            if (resetCoord.x < 0.0) {\n                resetCoord.x = resetCoord.x * scale;\n            } else {\n                resetCoord.x = (resetCoord.x-1.0)*scale+1.0;\n            }\n            resetCoord.y = (resetCoord.y - 0.5) * scale + 0.5;\n        }\n        vec4 oriColor = texture2D(sTexture, resetCoord);\n        float edgeCoeff = pointToBoxDistance(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight, blurAreaParam.x);\n        gl_FragColor = gaussianBlurKernel(oriColor, resetCoord, edgeCoeff);\n    }\n}";
    private final String fragmentShaderEmptyFunc;
    private final String fragmentShaderGaussianFunc;
    private final String fragmentShaderMainFunc;
    private final String fragmentShaderParam;
    private int mBlurAreaParamLoc;
    private float mDisplayHeight;
    private float mDisplayWidth;
    private float mDisplayX;
    private float mDisplayY;
    private float mEdgeSize;
    protected boolean mEnableSecondPass;
    private float mGaussinScale;
    protected int mInTexHeight;
    protected int mInTexWidth;
    protected float[] mLayoutCoord;
    private int mLayoutCoordLoc;
    private int mProcessStageLoc;
    protected int mRepeatLoc;
    private int mRepeatType;
    private float[] mSTMatrix;
    protected int mSurfaceHeight;
    protected int mSurfaceWidth;
    protected int mUsedProcessStage;
    private int muSTMatrixHandle;
    private final String oesFragmentShader;
    private final String oesVertexShader;

    public GLSelectiveGaussianBlurFilter(int i10) {
        super(i10);
        this.oesVertexShader = "uniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
        this.oesFragmentShader = "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float gaussianAlpha;\nuniform vec4 layoutCoord;//x,y,w,h\nuniform float processStage;//0:stage1;1:stage2\nuniform vec2 blurAreaParam;//x:blur edge size;y:blur area scale\nuniform int repeadMode;//1:normal;2:mirror;3:clamp to edge;\n";
        this.fragmentShaderParam = "precision highp float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float gaussianAlpha;\nuniform vec4 layoutCoord;//x,y,w,h\nuniform float processStage;//0:stage1;1:stage2\nuniform vec2 blurAreaParam;//x:blur edge size;y:blur area scale\n";
        this.fragmentShaderMainFunc = "// return 1 if v inside the box, return 0 otherwise\nfloat insideBox(vec2 v, vec2 bottomLeft, vec2 topRight) {\n    vec2 s = step(bottomLeft, v) - step(topRight, v);\n    return s.x * s.y;\n}\n//pointer to box edge distance\nfloat pointToBoxDistance(vec2 v, vec2 bottomLeft, vec2 topRight, float edge) {\n    vec2 distance = smoothstep(0.0, blurAreaParam.x, abs(v - (bottomLeft + topRight) / 2.0) - (topRight - bottomLeft) / 2.0);\n    return sqrt(distance.x * distance.x + distance.y * distance.y);\n}\n\nvoid main() {\n    vec2 stage1Coord = vec2((vTextureCoord.x - layoutCoord.x) / layoutCoord.z, (vTextureCoord.y - layoutCoord.y) / layoutCoord.w);\n    vec2 resetCoord = (1.0 - processStage) * stage1Coord + processStage * vTextureCoord;\n    vec2 oriBoxBottomLeft = vec2(layoutCoord.x, layoutCoord.y);\n    vec2 oriBoxTopRight = vec2(layoutCoord.x+layoutCoord.z, layoutCoord.y+layoutCoord.w);\n    if (insideBox(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight) > 0.5) {\n        gl_FragColor = texture2D(sTexture, resetCoord);\n        return;\n    } else {\n        float scale = blurAreaParam.y * (1.0 - processStage) + processStage * 1.0;\n        if (resetCoord.y <= 0.0 || resetCoord.y >= 1.0) {\n            resetCoord.x = (resetCoord.x - 0.5) * scale + 0.5;\n            if (resetCoord.y < 0.0) {\n                resetCoord.y = resetCoord.y * scale;\n            } else {\n                resetCoord.y = (resetCoord.y-1.0)*scale+1.0;\n            }\n        } else {\n            if (resetCoord.x < 0.0) {\n                resetCoord.x = resetCoord.x * scale;\n            } else {\n                resetCoord.x = (resetCoord.x-1.0)*scale+1.0;\n            }\n            resetCoord.y = (resetCoord.y - 0.5) * scale + 0.5;\n        }\n        vec4 oriColor = texture2D(sTexture, resetCoord);\n        float edgeCoeff = pointToBoxDistance(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight, blurAreaParam.x);\n        gl_FragColor = gaussianBlurKernel(oriColor, resetCoord, edgeCoeff);\n    }\n}\n";
        this.fragmentShaderGaussianFunc = "uniform float gaussianWeights[44];\nuniform int radius;\nuniform vec2 texelOffset;\nvec4 gaussianBlurKernel(vec4 oriColor, vec2 texCoord, float edgeCoeff) {\n    int curRadius = int(float(radius) * edgeCoeff);\n    vec4 sum = oriColor * gaussianWeights[0];\n    for (int i = curRadius + 1; i <= radius; i++) {\n        sum += 2.0 * oriColor * gaussianWeights[i];\n    }\n    for (int i = 1; i <= curRadius; i++) {\n        vec2 stepOffset = vec2(texelOffset.x * float(i), texelOffset.y * float(i));\n        sum += texture2D(sTexture, texCoord + stepOffset) * gaussianWeights[i];\n        sum += texture2D(sTexture, texCoord - stepOffset) * gaussianWeights[i];\n    }\n    return sum;\n}\n";
        this.fragmentShaderEmptyFunc = "vec4 gaussianBlurKernel(vec4 oriColor, vec2 texCoord) {\n    return oriColor;\n}\n";
        this.mEdgeSize = 0.0f;
        this.mDisplayX = -1.0f;
        this.mLayoutCoord = null;
        this.mLayoutCoordLoc = -1;
        this.mRepeatType = 2;
        this.mProcessStageLoc = -1;
        this.mGaussinScale = 1.0f;
        this.mBlurAreaParamLoc = -1;
        this.mSTMatrix = new float[16];
        this.mEnableSecondPass = false;
        this.mRepeatLoc = -1;
        this.mInTexHeight = -1;
        this.mInTexWidth = -1;
        this.mSurfaceHeight = -1;
        this.mSurfaceWidth = -1;
        this.mUsedProcessStage = -1;
        this.mEffectType = 15;
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, LOG_TAG, "new GLSelectiveGaussianBlurFilter,this:" + toString());
    }

    private void updateLayoutCoord(float f10, float f11, int i10, float f12, float[] fArr) {
        if (i10 == 0) {
            if (f10 > f11) {
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

    @Override // com.ss.texturerender.effect.GLGaussianBlurFilter, com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public String getStringOption(int i10) {
        String str;
        String str2;
        if (i10 != 11000) {
            if (i10 == 11001) {
                if (this.mInTextureTarget == 36197) {
                    str = "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float gaussianAlpha;\nuniform vec4 layoutCoord;//x,y,w,h\nuniform float processStage;//0:stage1;1:stage2\nuniform vec2 blurAreaParam;//x:blur edge size;y:blur area scale\nuniform int repeadMode;//1:normal;2:mirror;3:clamp to edge;\n";
                    str2 = oesFragmentShaderMainFunc;
                } else {
                    str = "precision highp float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float gaussianAlpha;\nuniform vec4 layoutCoord;//x,y,w,h\nuniform float processStage;//0:stage1;1:stage2\nuniform vec2 blurAreaParam;//x:blur edge size;y:blur area scale\n";
                    str2 = "// return 1 if v inside the box, return 0 otherwise\nfloat insideBox(vec2 v, vec2 bottomLeft, vec2 topRight) {\n    vec2 s = step(bottomLeft, v) - step(topRight, v);\n    return s.x * s.y;\n}\n//pointer to box edge distance\nfloat pointToBoxDistance(vec2 v, vec2 bottomLeft, vec2 topRight, float edge) {\n    vec2 distance = smoothstep(0.0, blurAreaParam.x, abs(v - (bottomLeft + topRight) / 2.0) - (topRight - bottomLeft) / 2.0);\n    return sqrt(distance.x * distance.x + distance.y * distance.y);\n}\n\nvoid main() {\n    vec2 stage1Coord = vec2((vTextureCoord.x - layoutCoord.x) / layoutCoord.z, (vTextureCoord.y - layoutCoord.y) / layoutCoord.w);\n    vec2 resetCoord = (1.0 - processStage) * stage1Coord + processStage * vTextureCoord;\n    vec2 oriBoxBottomLeft = vec2(layoutCoord.x, layoutCoord.y);\n    vec2 oriBoxTopRight = vec2(layoutCoord.x+layoutCoord.z, layoutCoord.y+layoutCoord.w);\n    if (insideBox(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight) > 0.5) {\n        gl_FragColor = texture2D(sTexture, resetCoord);\n        return;\n    } else {\n        float scale = blurAreaParam.y * (1.0 - processStage) + processStage * 1.0;\n        if (resetCoord.y <= 0.0 || resetCoord.y >= 1.0) {\n            resetCoord.x = (resetCoord.x - 0.5) * scale + 0.5;\n            if (resetCoord.y < 0.0) {\n                resetCoord.y = resetCoord.y * scale;\n            } else {\n                resetCoord.y = (resetCoord.y-1.0)*scale+1.0;\n            }\n        } else {\n            if (resetCoord.x < 0.0) {\n                resetCoord.x = resetCoord.x * scale;\n            } else {\n                resetCoord.x = (resetCoord.x-1.0)*scale+1.0;\n            }\n            resetCoord.y = (resetCoord.y - 0.5) * scale + 0.5;\n        }\n        vec4 oriColor = texture2D(sTexture, resetCoord);\n        float edgeCoeff = pointToBoxDistance(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight, blurAreaParam.x);\n        gl_FragColor = gaussianBlurKernel(oriColor, resetCoord, edgeCoeff);\n    }\n}\n";
                }
                if (this.mSigma != 1.0f && this.mRepeatType != 3) {
                    return str + "uniform float gaussianWeights[44];\nuniform int radius;\nuniform vec2 texelOffset;\nvec4 gaussianBlurKernel(vec4 oriColor, vec2 texCoord, float edgeCoeff) {\n    int curRadius = int(float(radius) * edgeCoeff);\n    vec4 sum = oriColor * gaussianWeights[0];\n    for (int i = curRadius + 1; i <= radius; i++) {\n        sum += 2.0 * oriColor * gaussianWeights[i];\n    }\n    for (int i = 1; i <= curRadius; i++) {\n        vec2 stepOffset = vec2(texelOffset.x * float(i), texelOffset.y * float(i));\n        sum += texture2D(sTexture, texCoord + stepOffset) * gaussianWeights[i];\n        sum += texture2D(sTexture, texCoord - stepOffset) * gaussianWeights[i];\n    }\n    return sum;\n}\n" + str2;
                }
                return str + "vec4 gaussianBlurKernel(vec4 oriColor, vec2 texCoord) {\n    return oriColor;\n}\n" + str2;
            }
        } else if (this.mInTextureTarget == 36197) {
            return "uniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
        }
        return super.getStringOption(i10);
    }

    @Override // com.ss.texturerender.effect.GLGaussianBlurFilter, com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public int init(Bundle bundle) {
        this.mInTextureTarget = bundle.getInt(TextureRenderKeys.KEY_IS_TEXTURE_TYPE);
        this.mSigma = bundle.getFloat(TextureRenderKeys.KEY_IS_STRENGTH_FLOAT, -1.0f);
        this.mRepeatType = bundle.getInt(TextureRenderKeys.KEY_IS_TEXTURE_REPEAT_TYPE, 2);
        this.mEdgeSize = bundle.getFloat(TextureRenderKeys.KEY_IS_EDGE_SIZE, 0.0f);
        if (bundle.containsKey(TextureRenderKeys.KEY_IS_X)) {
            this.mDisplayX = bundle.getFloat(TextureRenderKeys.KEY_IS_X, 0.0f);
            this.mDisplayY = bundle.getFloat(TextureRenderKeys.KEY_IS_Y, 0.0f);
            this.mDisplayWidth = bundle.getFloat("width", 1.0f);
            this.mDisplayHeight = bundle.getFloat("height", 1.0f);
        } else {
            this.mLayoutAspectRatio = bundle.getFloat(TextureRenderKeys.KEY_IS_ASPECT_RATIO, 0.5f);
            if (this.mLayoutCoord == null) {
                this.mLayoutCoord = new float[4];
            }
        }
        this.mGaussinScale = 1.0f / bundle.getFloat(TextureRenderKeys.KEY_IS_SCALE, 1.0f);
        int init = super.init(bundle);
        if (init == 0) {
            this.mLayoutCoordLoc = GLES20.glGetUniformLocation(this.mProgram, "layoutCoord");
            this.mProcessStageLoc = GLES20.glGetUniformLocation(this.mProgram, "processStage");
            this.mBlurAreaParamLoc = GLES20.glGetUniformLocation(this.mProgram, "blurAreaParam");
        }
        this.muSTMatrixHandle = GLES20.glGetUniformLocation(this.mProgram, "uSTMatrix");
        this.mRepeatLoc = GLES20.glGetUniformLocation(this.mProgram, "repeadMode");
        GLES20.glUseProgram(this.mProgram);
        int i10 = this.mRepeatLoc;
        if (i10 >= 0 && this.mInTextureTarget == 36197) {
            GLES20.glUniform1i(i10, this.mRepeatType);
        }
        int i11 = this.mBlurAreaParamLoc;
        if (i11 >= 0) {
            GLES20.glUniform2f(i11, this.mEdgeSize, this.mGaussinScale);
        }
        float f10 = this.mDisplayX;
        if (f10 >= 0.0f) {
            GLES20.glUniform4f(this.mLayoutCoordLoc, f10, this.mDisplayY, this.mDisplayWidth, this.mDisplayHeight);
        }
        return init;
    }

    @Override // com.ss.texturerender.effect.GLGaussianBlurFilter, com.ss.texturerender.effect.GLDefaultFilter
    public int onDrawFrameBefore() {
        if (this.mInTextureTarget == 36197) {
            if (this.muSTMatrixHandle >= 0) {
                this.mSurfaceTexture.getTransformMatrix(this.mSTMatrix);
                GLES20.glUniformMatrix4fv(this.muSTMatrixHandle, 1, false, this.mSTMatrix, 0);
            }
        } else {
            int i10 = this.mRepeatType;
            if (i10 == 2) {
                GLES20.glTexParameteri(3553, 10242, 33648);
                GLES20.glTexParameteri(3553, 10243, 33648);
            } else if (i10 == 3) {
                GLES20.glTexParameteri(3553, 10242, 33071);
                GLES20.glTexParameteri(3553, 10243, 33071);
            } else {
                GLES20.glTexParameteri(3553, 10242, 10497);
                GLES20.glTexParameteri(3553, 10243, 10497);
            }
        }
        if (this.mDisplayX < 0.0f) {
            if (this.mProcessStage == 0) {
                updateLayoutCoord((this.mSurfaceHeight * 1.0f) / this.mSurfaceWidth, (this.mInTexHeight * 1.0f) / this.mInTexWidth, 0, this.mLayoutAspectRatio, this.mLayoutCoord);
            }
            int i11 = this.mLayoutCoordLoc;
            float[] fArr = this.mLayoutCoord;
            GLES20.glUniform4f(i11, fArr[0], fArr[1], fArr[2], fArr[3]);
        }
        int i12 = this.mProcessStageLoc;
        if (i12 >= 0) {
            int i13 = this.mUsedProcessStage;
            int i14 = this.mProcessStage;
            if (i13 != i14) {
                GLES20.glUniform1f(i12, i14);
                this.mUsedProcessStage = this.mProcessStage;
            }
        }
        return super.onDrawFrameBefore();
    }

    @Override // com.ss.texturerender.effect.GLGaussianBlurFilter, com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        this.mInTexWidth = effectTexture.getWidth();
        this.mInTexHeight = effectTexture.getHeight();
        this.mSurfaceWidth = this.mSurfaceTexture.getViewportWidth();
        this.mSurfaceHeight = this.mSurfaceTexture.getViewportHeight();
        return processWithTwoPass(effectTexture, frameBuffer, this.mEnableSecondPass, this.mRenderToScreen, true);
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter
    public int updateRenderParam(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        if (frameBuffer == null) {
            this.mViewPortWidth = this.mSurfaceWidth;
            this.mViewPortHeight = this.mSurfaceHeight;
            this.mViewPortY = 0;
            this.mViewPortX = 0;
        } else {
            float f10 = (this.mSurfaceHeight * 1.0f) / this.mSurfaceWidth;
            if (f10 > (effectTexture.getHeight() * 1.0f) / effectTexture.getWidth()) {
                int min = Math.min(this.mSurfaceWidth, effectTexture.getWidth());
                this.mOutTexWidth = min;
                this.mOutTexHeight = (int) ((min * f10) + 0.5f);
            } else {
                int min2 = Math.min(this.mSurfaceHeight, effectTexture.getHeight());
                this.mOutTexHeight = min2;
                this.mOutTexWidth = (int) ((min2 / f10) + 0.5f);
            }
            this.mViewPortWidth = this.mOutTexWidth;
            this.mViewPortHeight = this.mOutTexHeight;
            this.mViewPortY = 0;
            this.mViewPortX = 0;
        }
        return 0;
    }
}
