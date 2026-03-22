package com.ss.texturerender.effect;

import android.opengl.GLES20;
import android.os.Bundle;
import com.ss.texturerender.TexGLUtils;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.VideoSurfaceTexture;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
/* loaded from: classes6.dex */
public class GLAutoStereoScopyFilter extends GLDefaultFilter {
    private static final String LOG_TAG = "TR_GLAutoStereoScopyFilter";
    private final String fragmentShader;
    private float[] mAlphaTextureVerticesData;
    private int mOffsetsHandle;
    private float[] mSTMatrix;
    private int mSTMatrixHandle;
    private int mVideoNums;
    private final String oesFragmentShader;
    private final String oesVertexShader;
    private final String vertexShader;

    public GLAutoStereoScopyFilter(int i10) {
        super(i10, 22);
        this.vertexShader = "#version 300 es\nin vec4 aPosition;\nin vec4 aTextureCoord;\nout vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = aTextureCoord.xy;\n}";
        this.oesVertexShader = "#version 300 es\nuniform mat4 uSTMatrix;\nin vec4 aPosition;\nin vec4 aTextureCoord;\nout vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}";
        this.fragmentShader = "#version 300 es\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform sampler2D sTexture;\nlayout(location = 0) out vec4 outColor0;\nlayout(location = 1) out vec4 outColor1;\nuniform ivec2 offsets;\nvoid main() {\n    ivec2 texSize = textureSize(sTexture, 0);\n    ivec2 leftTexCoord = ivec2(int(vTextureCoord.x * float(texSize.x)), int(vTextureCoord.y * float(texSize.y)));\n    vec4 oriColor = texelFetch(sTexture, leftTexCoord, 0);\n    vec4 alphaColor = texelFetch(sTexture, leftTexCoord + ivec2(offsets.x, 0), 0);\n    outColor0 = vec4(oriColor.rgb, alphaColor.r);\n    outColor1 = texelFetch(sTexture, leftTexCoord + ivec2(offsets.y, 0), 0);\n}";
        this.oesFragmentShader = "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nlayout(location = 0) out vec4 outColor0;\nlayout(location = 1) out vec4 outColor1;\nuniform ivec2 offsets;\nvoid main() {\n    ivec2 texSize = textureSize(sTexture, 0);\n    ivec2 leftTexCoord = ivec2(int(vTextureCoord.x * float(texSize.x)), int(vTextureCoord.y * float(texSize.y)));\n    vec4 oriColor = texelFetch(sTexture, leftTexCoord, 0);\n    vec4 alphaColor = texelFetch(sTexture, leftTexCoord + ivec2(offsets.x,0), 0);\n    outColor0 = vec4(oriColor.rgb, alphaColor.r);\n    outColor1 = texelFetch(sTexture, leftTexCoord + ivec2(offsets.y, 0), 0);\n}";
        this.mSTMatrix = new float[16];
        this.mVideoNums = 3;
        this.mOrder = 100;
        this.mIsSupportOes = 1;
        TextureRenderLog.i(this.mTexType, LOG_TAG, "new GLAutoStereoScopyFilter");
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public String getStringOption(int i10) {
        if (i10 != 11000) {
            if (i10 != 11001) {
                return super.getStringOption(i10);
            }
            if (this.mInTextureTarget == 36197) {
                return "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nlayout(location = 0) out vec4 outColor0;\nlayout(location = 1) out vec4 outColor1;\nuniform ivec2 offsets;\nvoid main() {\n    ivec2 texSize = textureSize(sTexture, 0);\n    ivec2 leftTexCoord = ivec2(int(vTextureCoord.x * float(texSize.x)), int(vTextureCoord.y * float(texSize.y)));\n    vec4 oriColor = texelFetch(sTexture, leftTexCoord, 0);\n    vec4 alphaColor = texelFetch(sTexture, leftTexCoord + ivec2(offsets.x,0), 0);\n    outColor0 = vec4(oriColor.rgb, alphaColor.r);\n    outColor1 = texelFetch(sTexture, leftTexCoord + ivec2(offsets.y, 0), 0);\n}";
            }
            return "#version 300 es\nprecision mediump float;\nin vec2 vTextureCoord;\nuniform sampler2D sTexture;\nlayout(location = 0) out vec4 outColor0;\nlayout(location = 1) out vec4 outColor1;\nuniform ivec2 offsets;\nvoid main() {\n    ivec2 texSize = textureSize(sTexture, 0);\n    ivec2 leftTexCoord = ivec2(int(vTextureCoord.x * float(texSize.x)), int(vTextureCoord.y * float(texSize.y)));\n    vec4 oriColor = texelFetch(sTexture, leftTexCoord, 0);\n    vec4 alphaColor = texelFetch(sTexture, leftTexCoord + ivec2(offsets.x, 0), 0);\n    outColor0 = vec4(oriColor.rgb, alphaColor.r);\n    outColor1 = texelFetch(sTexture, leftTexCoord + ivec2(offsets.y, 0), 0);\n}";
        } else if (this.mInTextureTarget == 36197) {
            return "#version 300 es\nuniform mat4 uSTMatrix;\nin vec4 aPosition;\nin vec4 aTextureCoord;\nout vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}";
        } else {
            return "#version 300 es\nin vec4 aPosition;\nin vec4 aTextureCoord;\nout vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = aTextureCoord.xy;\n}";
        }
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public int init(Bundle bundle) {
        int i10 = bundle.getInt(TextureRenderKeys.KEY_IS_TEXTURE_TYPE);
        if (i10 == this.mInTextureTarget && this.mProgram > 0) {
            TextureRenderLog.i(this.mTexType, LOG_TAG, "inited");
            return 0;
        }
        int i11 = this.mProgram;
        if (i11 > 0) {
            GLES20.glDeleteProgram(i11);
            this.mProgram = 0;
        }
        this.mInTextureTarget = i10;
        int i12 = bundle.getInt(TextureRenderKeys.KEY_IS_VIDEO_NUMS, 3);
        this.mVideoNums = i12;
        this.mAlphaTextureVerticesData = new float[]{0.0f, 0.0f, 1.0f / i12, 0.0f, 0.0f, 1.0f, 1.0f / i12, 1.0f};
        int init = super.init(bundle);
        if (this.mInTextureTarget == 36197) {
            this.mSTMatrixHandle = GLES20.glGetUniformLocation(this.mProgram, "uSTMatrix");
        }
        this.mOffsetsHandle = GLES20.glGetUniformLocation(this.mProgram, "offsets");
        int i13 = this.mTexType;
        TextureRenderLog.i(i13, LOG_TAG, "init texTarget:" + this.mInTextureTarget);
        return init;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter
    protected void initParam() {
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(this.mAlphaTextureVerticesData.length * this.FLOAT_SIZE_BYTES).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mTextureVertices = asFloatBuffer;
        asFloatBuffer.put(this.mAlphaTextureVerticesData).position(0);
        FloatBuffer asFloatBuffer2 = ByteBuffer.allocateDirect(GLDefaultFilter.mTriangleVerticesData.length * this.FLOAT_SIZE_BYTES).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mTriangleVertices = asFloatBuffer2;
        asFloatBuffer2.put(GLDefaultFilter.mTriangleVerticesData).position(0);
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public EffectTexture[] processWithMRT(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        EffectTexture effectTexture2;
        EffectTexture effectTexture3;
        int i10;
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null && videoSurfaceTexture.getIntOption(126, this.mEffectType) == -1) {
            this.mSurfaceTexture.setOption(126, this.mEffectType, 0);
        }
        if (effectTexture.getTexTarget() != this.mInTextureTarget) {
            TextureRenderLog.e(this.mTexType, getClass().getSimpleName(), "error, texture miss match, accept:" + this.mInTextureTarget + ",in:" + effectTexture.getTexTarget());
            VideoSurfaceTexture videoSurfaceTexture2 = this.mSurfaceTexture;
            if (videoSurfaceTexture2 != null) {
                videoSurfaceTexture2.notifyError(12, this.mEffectType, "error, texture miss match, accept:" + this.mInTextureTarget + ",in:" + effectTexture.getTexTarget());
            }
            return null;
        } else if (this.mProgram == 0) {
            TextureRenderLog.e(this.mTexType, LOG_TAG, "program error,don't process,filter:" + this.mEffectType);
            VideoSurfaceTexture videoSurfaceTexture3 = this.mSurfaceTexture;
            if (videoSurfaceTexture3 != null) {
                videoSurfaceTexture3.notifyError(13, this.mEffectType, "program error,don't process,filter:" + this.mEffectType);
            }
            return null;
        } else {
            int checkGLError = TexGLUtils.checkGLError(this.mTexType, "filter process start,type:" + this.mEffectType);
            if (checkGLError != 0) {
                this.mGLError = -1;
                VideoSurfaceTexture videoSurfaceTexture4 = this.mSurfaceTexture;
                if (videoSurfaceTexture4 != null) {
                    videoSurfaceTexture4.notifyError(checkGLError, this.mEffectType, "");
                }
                return null;
            }
            VideoSurfaceTexture videoSurfaceTexture5 = this.mSurfaceTexture;
            if (videoSurfaceTexture5 != null) {
                videoSurfaceTexture5.currentEffectProcessBegin(this.mEffectType);
            }
            updateRenderParam(effectTexture, frameBuffer);
            if (frameBuffer != null) {
                if (this.mOutTexWidth == 0 || this.mOutTexHeight == 0) {
                    TextureRenderLog.e(this.mTexType, LOG_TAG, "error width or height, w:" + this.mOutTexWidth + " h:" + this.mOutTexHeight);
                    VideoSurfaceTexture videoSurfaceTexture6 = this.mSurfaceTexture;
                    if (videoSurfaceTexture6 != null) {
                        videoSurfaceTexture6.notifyError(14, this.mEffectType, "error width or height, w:" + this.mOutTexWidth + " h:" + this.mOutTexHeight);
                    }
                }
                effectTexture2 = genTexture();
                effectTexture3 = genTexture();
                if (effectTexture2 == null || effectTexture3 == null) {
                    return null;
                }
                frameBuffer.bindTexture2Ds(new int[]{effectTexture2.getTexID(), effectTexture3.getTexID()}, FrameBuffer.GL_COLOR_ATTACHMENTS);
            } else {
                effectTexture2 = null;
                effectTexture3 = null;
            }
            GLES20.glUseProgram(this.mProgram);
            if (this.mNeedClear) {
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                GLES20.glClear(16384);
            }
            GLES20.glViewport(this.mViewPortX, this.mViewPortY, this.mViewPortWidth, this.mViewPortHeight);
            this.mTriangleVertices.position(this.TRIANGLE_VERTICES_DATA_POS_OFFSET);
            GLES20.glVertexAttribPointer(this.maPositionHandle, 3, 5126, false, this.TRIANGLE_VERTICES_DATA_STRIDE_BYTES, (Buffer) this.mTriangleVertices);
            GLES20.glEnableVertexAttribArray(this.maPositionHandle);
            this.mTextureVertices.position(this.TRIANGLE_VERTICES_DATA_UV_OFFSET);
            GLES20.glVertexAttribPointer(this.maTextureHandle, 2, 5126, false, this.TEXTURE_VERTICES_DATA_STRIDE_BYTES, (Buffer) this.mTextureVertices);
            GLES20.glEnableVertexAttribArray(this.maTextureHandle);
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(this.mInTextureTarget, effectTexture.getTexID());
            GLES20.glUniform1i(this.mInputTextureHandle, 0);
            if (this.mInTextureTarget == 36197) {
                this.mSurfaceTexture.getTransformMatrix(this.mSTMatrix);
                GLES20.glUniformMatrix4fv(this.mSTMatrixHandle, 1, false, this.mSTMatrix, 0);
            }
            int i11 = this.mOffsetsHandle;
            int i12 = this.mOutTexWidth;
            if (this.mVideoNums == 2) {
                i10 = 0;
            } else {
                i10 = i12 * 2;
            }
            GLES20.glUniform2i(i11, i12, i10);
            int checkGLError2 = TexGLUtils.checkGLError(this.mTexType, "filter glDrawArrays before,type:" + this.mEffectType);
            if (checkGLError2 == 0) {
                GLES20.glDrawArrays(5, 0, 4);
                this.mGLError = 0;
            } else {
                this.mGLError = -1;
                VideoSurfaceTexture videoSurfaceTexture7 = this.mSurfaceTexture;
                if (videoSurfaceTexture7 != null) {
                    videoSurfaceTexture7.notifyError(checkGLError2, this.mEffectType, "filter glDrawArrays before,type:" + this.mEffectType);
                }
            }
            GLES20.glBindTexture(this.mInTextureTarget, 0);
            GLES20.glDisableVertexAttribArray(this.maPositionHandle);
            GLES20.glDisableVertexAttribArray(this.maTextureHandle);
            if (this.mIsCallGLfinish == 1) {
                GLES20.glFinish();
            }
            if (frameBuffer != null) {
                frameBuffer.unbindTexture2Ds(FrameBuffer.GL_COLOR_ATTACHMENTS);
            }
            VideoSurfaceTexture videoSurfaceTexture8 = this.mSurfaceTexture;
            if (videoSurfaceTexture8 != null) {
                videoSurfaceTexture8.currentEffectProcessEnd(this.mEffectType);
            }
            int checkGLError3 = TexGLUtils.checkGLError(this.mTexType, "filter glDrawArrays after,type:" + this.mEffectType);
            if (this.mGLError == 0 && checkGLError3 == 0) {
                VideoSurfaceTexture videoSurfaceTexture9 = this.mSurfaceTexture;
                if (videoSurfaceTexture9 != null) {
                    videoSurfaceTexture9.setOption(19, this.mEffectType, 1);
                }
                effectTexture.giveBack();
                return new EffectTexture[]{effectTexture3, effectTexture2};
            }
            VideoSurfaceTexture videoSurfaceTexture10 = this.mSurfaceTexture;
            if (videoSurfaceTexture10 != null) {
                videoSurfaceTexture10.notifyError(checkGLError3, this.mEffectType, "filter glDrawArrays after,type:" + this.mEffectType);
            }
            if (effectTexture3 != null) {
                effectTexture3.giveBack();
            }
            if (effectTexture2 != null) {
                effectTexture2.giveBack();
            }
            this.mGLError = -1;
            return null;
        }
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter
    public int updateRenderParam(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        this.mOutTexWidth = effectTexture.getWidth() / this.mVideoNums;
        int height = effectTexture.getHeight();
        this.mOutTexHeight = height;
        this.mViewPortWidth = this.mOutTexWidth;
        this.mViewPortHeight = height;
        this.mViewPortY = 0;
        this.mViewPortX = 0;
        return 0;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        return effectTexture;
    }
}
