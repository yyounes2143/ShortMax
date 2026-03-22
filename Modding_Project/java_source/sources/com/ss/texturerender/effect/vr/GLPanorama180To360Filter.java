package com.ss.texturerender.effect.vr;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.os.Bundle;
import com.ss.texturerender.DeviceManager;
import com.ss.texturerender.TexGLUtils;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.VideoSurfaceTexture;
import com.ss.texturerender.effect.AbsEffect;
import com.ss.texturerender.effect.EffectTexture;
import com.ss.texturerender.effect.FrameBuffer;
import com.ss.texturerender.effect.vr.GLPanoramaFilter;
import com.ss.texturerender.effect.vr.director.IDirector;
import com.ss.texturerender.math.Quaternion;
import java.util.ArrayList;
/* loaded from: classes6.dex */
public class GLPanorama180To360Filter extends GLPanoramaFilter {
    private static final String LOG_TAG = "GLPanorama180To360Filter";
    private final String fragment180to360Shader;
    private int mBackgroundTexHandle;
    private int mBackgroundTexScaleHandle;
    private int mContentTypeOffsetHandle;
    private int mEacExpandCoefHandle;
    private int mGlBackgroundTexture;
    private int mInputBackTexSizeHandle;
    private int mInputTexOffsetHandle;
    private int mInputTexScaleHandle;
    private int mInputTexSizeHandle;
    private int mShaderTypeHandle;

    public GLPanorama180To360Filter(int i10) {
        super(i10, 12);
        this.fragment180to360Shader = "precision highp float;\n\n#define PI 3.14159265359\nuniform sampler2D sTexture;\nuniform sampler2D sBackground;\nuniform float sTextureSize;\nuniform float sBackTextureSize;\nuniform float scaleU;\nuniform float scaleV;\nuniform float offsetU;\nuniform float offsetT;\nuniform float expandCoef;\nuniform int shaderType;\nvarying vec2 vTextureCoord;\nvarying vec3 verPosition;\n\nvec4 vrTextureFragmentForVirtualLive() {\n    vec4 outputColor = texture2D(sBackground, vec2(vTextureCoord.x, 1.0 - vTextureCoord.y));\n    if (verPosition.z < 0.0 && abs(verPosition.z) > abs(verPosition.x) && abs(verPosition.z) > abs(verPosition.y)) {\n        vec2 st = vec2(verPosition.x / (verPosition.z * 2.0) + 0.5, verPosition.y / (verPosition.z * 2.0) + 0.5);\n        st = vec2(1.0, 1.0) - st;\n        outputColor = texture2D(sTexture, st);\n    }\n    return outputColor;\n}\n\nvec4 vrTextureFragmentFor180eac() {\n    vec4 colMain;\n    if (verPosition.z < 0.0) {\n       vec2 st;\n       float padding = 1.0/expandCoef;\n       if (abs(verPosition.z) > abs(verPosition.x) && abs(verPosition.z) > abs(verPosition.y)) {\n           st = vec2((2.0*(0.5 * (4.0/PI*atan(padding * verPosition.x / verPosition.z)) + 0.5) + 3.0)/6.0, 0.5*(4.0/PI*atan(padding * verPosition.y / verPosition.z)) + 0.5);\n           st = vec2(1.0, 1.0) - st;\n       } else if ( verPosition.x < 0.0 && abs(verPosition.x) > abs(verPosition.z) && abs(verPosition.x) > abs(verPosition.y)) {\n           st = vec2((4.0/PI*atan(padding * verPosition.z / verPosition.x))/6.0, -0.5 * (4.0/PI*atan(padding * verPosition.y / verPosition.x)) + 0.5);\n       } else if (verPosition.x > 0.0 && abs(verPosition.x) > abs(verPosition.z) && abs(verPosition.x) > abs(verPosition.y)) {\n           st = vec2((4.0/PI*atan(padding * verPosition.z / verPosition.x))/6.0 + 4.0/6.0, 0.5 * (4.0/PI*atan(padding * verPosition.y / verPosition.x)) + 0.5);\n       } else if (verPosition.y < 0.0 && abs(verPosition.y) > abs(verPosition.z) && abs(verPosition.y) > abs(verPosition.x)) {\n           st = vec2((4.0/PI*atan(padding * verPosition.z / verPosition.y))/(-6.0) + 5.0/6.0, -0.5 * (4.0/PI*atan(padding * verPosition.x / verPosition.y)) + 0.5);\n       } else if (verPosition.y > 0.0 && abs(verPosition.y) > abs(verPosition.z) && abs(verPosition.y) > abs(verPosition.x)) {\n           st = vec2((4.0/PI*atan(padding * verPosition.z / verPosition.y))/(-6.0) + 5.0/6.0, 0.5 * (4.0/PI*atan(padding * verPosition.x / verPosition.y)) + 0.5);\n       }\n       colMain = texture2D(sTexture, st);\n    }\n    float StepLeft = 1.0 - step((0.25 - sTextureSize / 2.0 + 0.5 * sBackTextureSize) / scaleU, vTextureCoord.x);\n    float StepRight = step((0.75 + sTextureSize / 2.0 - 0.5 * sBackTextureSize) / scaleU, vTextureCoord.x);\n\n    vec2 leftUV = vTextureCoord;\n    leftUV.x = (scaleU * leftUV.x  / sBackTextureSize) + 0.5;\n    \n    vec2 rightUV = vTextureCoord;\n    rightUV.x = (scaleU * (rightUV.x - 1.0 + offsetT) / sBackTextureSize) + 0.5;\n    \n    leftUV.y = scaleV * (1.0 - leftUV.y);\n    rightUV.y = scaleV * (1.0 - rightUV.y);\n\n    vec4 col = colMain * (1.0 - StepLeft) * (1.0 - StepRight) + texture2D(sBackground, leftUV) * StepLeft + texture2D(sBackground, rightUV) * StepRight;\n\n    return col;\n}\n\nvec4 vrTextureFragmentForGeneralUse() {\n    vec2 uvMain = vTextureCoord;\n    if (offsetT == 0.0  && offsetU ==  0.25) {\n       uvMain.x = (uvMain.x - offsetU) * 2.0;\n    } else {\n       uvMain.x = (uvMain.x - offsetU) * scaleU;\n    }\n    vec4 colMain = texture2D(sTexture, uvMain);\n    float StepLeft = 1.0 - step((0.25 - sTextureSize / 2.0 + 0.5 * sBackTextureSize) / scaleU, vTextureCoord.x);\n    float StepRight = step((0.75 + sTextureSize / 2.0 - 0.5 * sBackTextureSize) / scaleU, vTextureCoord.x);\n\n    vec2 leftUV = vTextureCoord;\n    leftUV.x = (scaleU * leftUV.x  / sBackTextureSize) + 0.5;\n    \n    vec2 rightUV = vTextureCoord;\n    rightUV.x = (scaleU * (rightUV.x - 1.0 + offsetT) / sBackTextureSize) + 0.5;\n    \n    leftUV.y = scaleV * (1.0 - leftUV.y);\n    rightUV.y = scaleV * (1.0 - rightUV.y);\n\n    vec4 col = colMain * (1.0 - StepLeft) * (1.0 - StepRight) + texture2D(sBackground, leftUV) * StepLeft + texture2D(sBackground, rightUV) * StepRight;\n\n    return col;\n}\n\nvoid main()\n{\n    if (shaderType == 1) {\n        gl_FragColor = vrTextureFragmentForVirtualLive();\n    } else if (shaderType == 2) {\n        gl_FragColor = vrTextureFragmentFor180eac();\n    } else {\n        gl_FragColor = vrTextureFragmentForGeneralUse();\n    }\n}\n";
        this.mGlBackgroundTexture = 0;
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, LOG_TAG, "new GLPanoramaFilter,this:" + this);
    }

    void genBackgroundTexture() {
        int genTexture = TexGLUtils.genTexture(3553);
        this.mGlBackgroundTexture = genTexture;
        GLES20.glBindTexture(3553, genTexture);
        GLES20.glTexImage2D(3553, 0, 6408, 1, 1, 0, 6408, 5121, null);
        GLES20.glBindTexture(3553, 0);
    }

    @Override // com.ss.texturerender.effect.vr.GLPanoramaFilter, com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public String getStringOption(int i10) {
        if (i10 != 11001) {
            return super.getStringOption(i10);
        }
        return "precision highp float;\n\n#define PI 3.14159265359\nuniform sampler2D sTexture;\nuniform sampler2D sBackground;\nuniform float sTextureSize;\nuniform float sBackTextureSize;\nuniform float scaleU;\nuniform float scaleV;\nuniform float offsetU;\nuniform float offsetT;\nuniform float expandCoef;\nuniform int shaderType;\nvarying vec2 vTextureCoord;\nvarying vec3 verPosition;\n\nvec4 vrTextureFragmentForVirtualLive() {\n    vec4 outputColor = texture2D(sBackground, vec2(vTextureCoord.x, 1.0 - vTextureCoord.y));\n    if (verPosition.z < 0.0 && abs(verPosition.z) > abs(verPosition.x) && abs(verPosition.z) > abs(verPosition.y)) {\n        vec2 st = vec2(verPosition.x / (verPosition.z * 2.0) + 0.5, verPosition.y / (verPosition.z * 2.0) + 0.5);\n        st = vec2(1.0, 1.0) - st;\n        outputColor = texture2D(sTexture, st);\n    }\n    return outputColor;\n}\n\nvec4 vrTextureFragmentFor180eac() {\n    vec4 colMain;\n    if (verPosition.z < 0.0) {\n       vec2 st;\n       float padding = 1.0/expandCoef;\n       if (abs(verPosition.z) > abs(verPosition.x) && abs(verPosition.z) > abs(verPosition.y)) {\n           st = vec2((2.0*(0.5 * (4.0/PI*atan(padding * verPosition.x / verPosition.z)) + 0.5) + 3.0)/6.0, 0.5*(4.0/PI*atan(padding * verPosition.y / verPosition.z)) + 0.5);\n           st = vec2(1.0, 1.0) - st;\n       } else if ( verPosition.x < 0.0 && abs(verPosition.x) > abs(verPosition.z) && abs(verPosition.x) > abs(verPosition.y)) {\n           st = vec2((4.0/PI*atan(padding * verPosition.z / verPosition.x))/6.0, -0.5 * (4.0/PI*atan(padding * verPosition.y / verPosition.x)) + 0.5);\n       } else if (verPosition.x > 0.0 && abs(verPosition.x) > abs(verPosition.z) && abs(verPosition.x) > abs(verPosition.y)) {\n           st = vec2((4.0/PI*atan(padding * verPosition.z / verPosition.x))/6.0 + 4.0/6.0, 0.5 * (4.0/PI*atan(padding * verPosition.y / verPosition.x)) + 0.5);\n       } else if (verPosition.y < 0.0 && abs(verPosition.y) > abs(verPosition.z) && abs(verPosition.y) > abs(verPosition.x)) {\n           st = vec2((4.0/PI*atan(padding * verPosition.z / verPosition.y))/(-6.0) + 5.0/6.0, -0.5 * (4.0/PI*atan(padding * verPosition.x / verPosition.y)) + 0.5);\n       } else if (verPosition.y > 0.0 && abs(verPosition.y) > abs(verPosition.z) && abs(verPosition.y) > abs(verPosition.x)) {\n           st = vec2((4.0/PI*atan(padding * verPosition.z / verPosition.y))/(-6.0) + 5.0/6.0, 0.5 * (4.0/PI*atan(padding * verPosition.x / verPosition.y)) + 0.5);\n       }\n       colMain = texture2D(sTexture, st);\n    }\n    float StepLeft = 1.0 - step((0.25 - sTextureSize / 2.0 + 0.5 * sBackTextureSize) / scaleU, vTextureCoord.x);\n    float StepRight = step((0.75 + sTextureSize / 2.0 - 0.5 * sBackTextureSize) / scaleU, vTextureCoord.x);\n\n    vec2 leftUV = vTextureCoord;\n    leftUV.x = (scaleU * leftUV.x  / sBackTextureSize) + 0.5;\n    \n    vec2 rightUV = vTextureCoord;\n    rightUV.x = (scaleU * (rightUV.x - 1.0 + offsetT) / sBackTextureSize) + 0.5;\n    \n    leftUV.y = scaleV * (1.0 - leftUV.y);\n    rightUV.y = scaleV * (1.0 - rightUV.y);\n\n    vec4 col = colMain * (1.0 - StepLeft) * (1.0 - StepRight) + texture2D(sBackground, leftUV) * StepLeft + texture2D(sBackground, rightUV) * StepRight;\n\n    return col;\n}\n\nvec4 vrTextureFragmentForGeneralUse() {\n    vec2 uvMain = vTextureCoord;\n    if (offsetT == 0.0  && offsetU ==  0.25) {\n       uvMain.x = (uvMain.x - offsetU) * 2.0;\n    } else {\n       uvMain.x = (uvMain.x - offsetU) * scaleU;\n    }\n    vec4 colMain = texture2D(sTexture, uvMain);\n    float StepLeft = 1.0 - step((0.25 - sTextureSize / 2.0 + 0.5 * sBackTextureSize) / scaleU, vTextureCoord.x);\n    float StepRight = step((0.75 + sTextureSize / 2.0 - 0.5 * sBackTextureSize) / scaleU, vTextureCoord.x);\n\n    vec2 leftUV = vTextureCoord;\n    leftUV.x = (scaleU * leftUV.x  / sBackTextureSize) + 0.5;\n    \n    vec2 rightUV = vTextureCoord;\n    rightUV.x = (scaleU * (rightUV.x - 1.0 + offsetT) / sBackTextureSize) + 0.5;\n    \n    leftUV.y = scaleV * (1.0 - leftUV.y);\n    rightUV.y = scaleV * (1.0 - rightUV.y);\n\n    vec4 col = colMain * (1.0 - StepLeft) * (1.0 - StepRight) + texture2D(sBackground, leftUV) * StepLeft + texture2D(sBackground, rightUV) * StepRight;\n\n    return col;\n}\n\nvoid main()\n{\n    if (shaderType == 1) {\n        gl_FragColor = vrTextureFragmentForVirtualLive();\n    } else if (shaderType == 2) {\n        gl_FragColor = vrTextureFragmentFor180eac();\n    } else {\n        gl_FragColor = vrTextureFragmentForGeneralUse();\n    }\n}\n";
    }

    @Override // com.ss.texturerender.effect.vr.GLPanoramaFilter, com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public int init(Bundle bundle) {
        if (super.init(bundle) != 0) {
            VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
            if (videoSurfaceTexture != null) {
                videoSurfaceTexture.notifyError(10, this.mEffectType, "super.init(bundle) != TR_OK");
                return -1;
            }
            return -1;
        }
        this.mBackgroundTexHandle = GLES20.glGetUniformLocation(this.mProgram, "sBackground");
        this.mInputTexSizeHandle = GLES20.glGetUniformLocation(this.mProgram, "sTextureSize");
        this.mInputBackTexSizeHandle = GLES20.glGetUniformLocation(this.mProgram, "sBackTextureSize");
        this.mInputTexScaleHandle = GLES20.glGetUniformLocation(this.mProgram, "scaleU");
        this.mBackgroundTexScaleHandle = GLES20.glGetUniformLocation(this.mProgram, "scaleV");
        this.mInputTexOffsetHandle = GLES20.glGetUniformLocation(this.mProgram, "offsetU");
        this.mContentTypeOffsetHandle = GLES20.glGetUniformLocation(this.mProgram, "offsetT");
        this.mEacExpandCoefHandle = GLES20.glGetUniformLocation(this.mProgram, "expandCoef");
        this.mShaderTypeHandle = GLES20.glGetUniformLocation(this.mProgram, "shaderType");
        return 0;
    }

    @Override // com.ss.texturerender.effect.vr.GLPanoramaFilter, com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        float f10;
        EffectTexture effectTexture2;
        VideoSurfaceTexture videoSurfaceTexture;
        float[] fArr;
        if (!this.mIsProcessed) {
            this.mIsProcessed = true;
            GLPanoramaFilter.OrientationEventHandler orientationEventHandler = this.mOrientationEventHandler;
            if (orientationEventHandler != null) {
                orientationEventHandler.enable();
            }
            handleDirectModeChange();
            handleTouchScalerChange();
        }
        if (effectTexture.getTexTarget() != this.mInTextureTarget) {
            TextureRenderLog.e(this.mTexType, getClass().getSimpleName(), "error, texture miss match, accept:" + this.mInTextureTarget + ",in:" + effectTexture.getTexTarget());
            VideoSurfaceTexture videoSurfaceTexture2 = this.mSurfaceTexture;
            if (videoSurfaceTexture2 != null) {
                videoSurfaceTexture2.notifyError(12, this.mEffectType, "error, texture miss match, accept:" + this.mInTextureTarget + ",in:" + effectTexture.getTexTarget());
            }
            return effectTexture;
        } else if (this.mProgram == 0) {
            TextureRenderLog.e(this.mTexType, LOG_TAG, "program error,don't process,filter:" + this.mEffectType);
            VideoSurfaceTexture videoSurfaceTexture3 = this.mSurfaceTexture;
            if (videoSurfaceTexture3 != null) {
                videoSurfaceTexture3.notifyError(13, this.mEffectType, "program error,don't process,filter:" + this.mEffectType);
            }
            return effectTexture;
        } else {
            VideoSurfaceTexture videoSurfaceTexture4 = this.mSurfaceTexture;
            if (videoSurfaceTexture4 != null) {
                videoSurfaceTexture4.currentEffectProcessBegin(this.mEffectType);
            }
            GLES20.glUseProgram(this.mProgram);
            this.mViewPortWidth = this.mSurfaceTexture.getViewportWidth();
            this.mViewPortHeight = this.mSurfaceTexture.getViewportHeight();
            if (this.mVideoStyle == 1) {
                updateRenderParam(effectTexture, frameBuffer);
            }
            GLES20.glBindBuffer(34962, this.mVerVBO);
            GLES20.glVertexAttribPointer(this.maPositionHandle, 3, 5126, false, this.TRIANGLE_VERTICES_DATA_STRIDE_BYTES, 0);
            GLES20.glEnableVertexAttribArray(this.maPositionHandle);
            GLES20.glBindBuffer(34962, 0);
            GLES20.glBindBuffer(34962, this.mTexVBO);
            GLES20.glVertexAttribPointer(this.maTextureHandle, 2, 5126, false, this.TEXTURE_VERTICES_DATA_STRIDE_BYTES, 0);
            GLES20.glEnableVertexAttribArray(this.maTextureHandle);
            GLES20.glBindBuffer(34962, 0);
            if (!this.mSensorDirectorEnabled && (fArr = this.mFreezeModelMatrix) != null) {
                this.mModelMatrix = fArr;
                if (!this.mDidGetInitialModelMatrix) {
                    IDirector iDirector = this.mSensorDirector;
                    if (iDirector != null && this.mDirectMode != 2) {
                        iDirector.getView(fArr, 0);
                    }
                    Matrix.invertM(this.mInitialModelMatrixInvert, 0, this.mModelMatrix, 0);
                    float[] fArr2 = this.mModelMatrix;
                    Matrix.multiplyMM(fArr2, 0, fArr2, 0, this.mInitialModelMatrixInvert, 0);
                    this.mFreezeModelMatrix = this.mModelMatrix;
                    this.mDidGetInitialModelMatrix = true;
                }
            } else {
                IDirector iDirector2 = this.mSensorDirector;
                if (iDirector2 != null && this.mDirectMode != 2) {
                    iDirector2.getView(this.mModelMatrix, 0);
                }
                if (!this.mDidGetInitialModelMatrix) {
                    Matrix.invertM(this.mInitialModelMatrixInvert, 0, this.mModelMatrix, 0);
                    this.mDidGetInitialModelMatrix = true;
                }
                if (this.mDirectMode != 2 && this.mUseInitialHeadPoseAsFront) {
                    float[] fArr3 = this.mModelMatrix;
                    Matrix.multiplyMM(fArr3, 0, fArr3, 0, this.mInitialModelMatrixInvert, 0);
                }
            }
            Matrix.setIdentityM(this.mRotateMatrix, 0);
            if (!DeviceManager.isVRDevice() || this.mOffsetYaw != 0 || this.mOffsetPitch != 0) {
                Matrix.rotateM(this.mRotateMatrix, 0, this.mTouchDirector.getDiffX() + this.mOffsetPitch, 1.0f, 0.0f, 0.0f);
                Matrix.rotateM(this.mRotateMatrix, 0, this.mTouchDirector.getDiffY() - this.mOffsetYaw, 0.0f, 1.0f, 0.0f);
            }
            Matrix.rotateM(this.mRotateMatrix, 0, this.mSpaceOrientationPitch, 1.0f, 0.0f, 0.0f);
            float[] fArr4 = new float[16];
            Matrix.multiplyMM(fArr4, 0, this.mModelMatrix, 0, this.mRotateMatrix, 0);
            Matrix.invertM(fArr4, 0, fArr4, 0);
            this.mSurfaceTexture.setHeadPose(new Quaternion(fArr4));
            float scale = this.mTouchScaler.getScale();
            GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.mProgram, "rotateMatrix"), 1, false, this.mRotateMatrix, 0);
            float viewportWidth = (this.mSurfaceTexture.getViewportWidth() * 1.0f) / this.mSurfaceTexture.getViewportHeight();
            if (viewportWidth > 1.0f) {
                f10 = viewportWidth;
            } else {
                f10 = 1.0f;
            }
            this.mPerspecViewRatio = f10;
            if (frameBuffer != null) {
                updateOutTexSize(viewportWidth);
                effectTexture2 = genTexture();
                if (effectTexture2 != null) {
                    frameBuffer.bindTexture2D(effectTexture2.getTexID());
                }
                this.mViewPortWidth = this.mOutTexWidth;
                this.mViewPortHeight = this.mOutTexHeight;
            } else {
                effectTexture2 = null;
            }
            if (this.mNeedClear) {
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                GLES20.glClear(16384);
            }
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(this.mInTextureTarget, effectTexture.getTexID());
            GLES20.glUniform1i(this.mInputTextureHandle, 0);
            GLES20.glActiveTexture(33985);
            GLES20.glBindTexture(3553, this.mGlBackgroundTexture);
            GLES20.glUniform1i(this.mShaderTypeHandle, getShaderType());
            GLES20.glUniform1f(this.mEacExpandCoefHandle, getExpandCoef());
            GLES20.glUniform1i(this.mBackgroundTexHandle, 1);
            int i10 = this.mVideoStyle;
            if (i10 == 2 && this.mViewSize == 360) {
                GLES20.glUniform1f(this.mInputTexSizeHandle, 0.5f);
                GLES20.glUniform1f(this.mInputTexScaleHandle, 1.0f);
                GLES20.glUniform1f(this.mInputTexOffsetHandle, 0.0f);
                GLES20.glUniform1f(this.mContentTypeOffsetHandle, 0.0f);
                GLES20.glUniform1f(this.mBackgroundTexScaleHandle, 1.0f);
            } else if (i10 == 2 && this.mViewSize == 180) {
                GLES20.glUniform1f(this.mInputTexSizeHandle, 0.5f);
                GLES20.glUniform1f(this.mInputTexScaleHandle, 1.0f);
                GLES20.glUniform1f(this.mInputTexOffsetHandle, 0.25f);
                GLES20.glUniform1f(this.mContentTypeOffsetHandle, 0.0f);
                GLES20.glUniform1f(this.mBackgroundTexScaleHandle, 1.0f);
            } else if (i10 == 4) {
                GLES20.glUniform1f(this.mInputTexSizeHandle, 0.5f);
                GLES20.glUniform1f(this.mInputTexScaleHandle, 2.0f);
                GLES20.glUniform1f(this.mInputTexOffsetHandle, 0.125f);
                GLES20.glUniform1f(this.mContentTypeOffsetHandle, 0.5f);
                GLES20.glUniform1f(this.mBackgroundTexScaleHandle, 1.0f);
            } else if (i10 == 3) {
                GLES20.glUniform1f(this.mInputTexSizeHandle, 0.5f);
                GLES20.glUniform1f(this.mInputTexScaleHandle, 1.0f);
                GLES20.glUniform1f(this.mInputTexOffsetHandle, 0.0f);
                GLES20.glUniform1f(this.mContentTypeOffsetHandle, 0.0f);
                GLES20.glUniform1f(this.mBackgroundTexScaleHandle, 2.0f);
            }
            GLES20.glUniform1f(this.mInputBackTexSizeHandle, (float) ((this.mBackTextureSize * 1.0d) / 360.0d));
            GLES20.glUniformMatrix3fv(GLES20.glGetUniformLocation(this.mProgram, "texScale"), 1, false, GLPanoramaFilter.TEXSCALE_2D, 0);
            Matrix.perspectiveM(this.mProjectionMatrix, 0, this.mPerspecView / this.mPerspecViewRatio, viewportWidth, 0.1f, 100.0f);
            Matrix.scaleM(this.mProjectionMatrix, 0, scale, scale, 1.0f);
            GLES20.glViewport(this.mViewPortX, this.mViewPortY, this.mViewPortWidth, this.mViewPortHeight);
            Matrix.setLookAtM(this.mViewMatrix, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 1.0f, 0.0f);
            draw(this.mIndexBuffers);
            effectTexture.giveBack();
            GLES20.glBindTexture(this.mInTextureTarget, 0);
            GLES20.glDisableVertexAttribArray(this.maPositionHandle);
            GLES20.glDisableVertexAttribArray(this.maTextureHandle);
            this.mSurfaceTexture.setOption(19, this.mEffectType, 1);
            int checkGLError = TexGLUtils.checkGLError(this.mTexType, "error pano draw");
            if (checkGLError != 0 && (videoSurfaceTexture = this.mSurfaceTexture) != null) {
                videoSurfaceTexture.notifyError(checkGLError, this.mEffectType, "error pano draw");
            }
            GLES20.glFinish();
            VideoSurfaceTexture videoSurfaceTexture5 = this.mSurfaceTexture;
            if (videoSurfaceTexture5 != null) {
                videoSurfaceTexture5.currentEffectProcessEnd(this.mEffectType);
            }
            if (frameBuffer == null) {
                return null;
            }
            frameBuffer.unbindTexture2D();
            return effectTexture2;
        }
    }

    @Override // com.ss.texturerender.effect.vr.GLPanoramaFilter, com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public AbsEffect release() {
        int i10 = this.mGlBackgroundTexture;
        if (i10 != 0) {
            TexGLUtils.deleteTexture(i10);
        }
        return super.release();
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public void setOption(int i10, Object obj) {
        if (i10 != 118) {
            super.setOption(i10, obj);
            return;
        }
        try {
            ArrayList arrayList = (ArrayList) obj;
            Object obj2 = arrayList.get(0);
            Object obj3 = arrayList.get(1);
            if (obj3 instanceof Bitmap) {
                updateBackgroundTexture((Bitmap) obj3);
            }
            synchronized (obj2) {
                obj2.notify();
                TextureRenderLog.i(this.mTexType, LOG_TAG, "update background texture done");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void updateBackgroundTexture(Bitmap bitmap) {
        if (this.mGlBackgroundTexture == 0) {
            genBackgroundTexture();
        }
        if (bitmap != null) {
            try {
                GLES20.glBindTexture(3553, this.mGlBackgroundTexture);
                GLUtils.texImage2D(3553, 0, bitmap, 0);
                GLES20.glBindTexture(3553, 0);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }
}
