package com.ss.texturerender.effect;

import android.opengl.GLES20;
import android.os.Bundle;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.VideoSurfaceTexture;
/* loaded from: classes6.dex */
public class GLOesTo2DFilter extends GLDefaultFilter {
    private static final String LOG_TAG = "TR_GLOesTo2DFilter";
    private float[] mSTMatrix;
    private int muSTMatrixHandle;
    private final String oesFragmentShader;
    private final String oesVertexShader;

    public GLOesTo2DFilter(int i10) {
        super(i10, 3);
        this.oesVertexShader = "uniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
        this.oesFragmentShader = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
        this.mSTMatrix = new float[16];
        this.mInTextureTarget = 36197;
        this.mOrder = 100;
        TextureRenderLog.i(this.mTexType, LOG_TAG, "new GLOesTo2DFilter");
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public String getStringOption(int i10) {
        if (i10 != 11000) {
            if (i10 != 11001) {
                return super.getStringOption(i10);
            }
            return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
        }
        return "uniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
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
        this.muSTMatrixHandle = GLES20.glGetUniformLocation(this.mProgram, "uSTMatrix");
        TextureRenderLog.i(this.mTexType, LOG_TAG, "init");
        setOption(bundle);
        return 0;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter
    public int onDrawFrameBefore() {
        this.mSurfaceTexture.getTransformMatrix(this.mSTMatrix);
        GLES20.glUniformMatrix4fv(this.muSTMatrixHandle, 1, false, this.mSTMatrix, 0);
        return 0;
    }
}
