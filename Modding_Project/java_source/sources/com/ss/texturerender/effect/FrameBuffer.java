package com.ss.texturerender.effect;

import android.opengl.GLES20;
import android.opengl.GLES30;
import com.ss.texturerender.TexGLUtils;
/* loaded from: classes6.dex */
public class FrameBuffer {
    public static int[] GL_COLOR_ATTACHMENTS = {36064, 36065};
    private int mFboID = TexGLUtils.createFbo();

    public void bind() {
        GLES20.glBindFramebuffer(36160, this.mFboID);
    }

    public int bindTexture2D(int i10) {
        bind();
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, i10, 0);
        if (GLES20.glCheckFramebufferStatus(36160) == 36053) {
            return 0;
        }
        return -1;
    }

    public int bindTexture2Ds(int[] iArr, int[] iArr2) {
        bind();
        int length = iArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            GLES20.glFramebufferTexture2D(36160, iArr2[i10], 3553, iArr[i10], 0);
        }
        GLES30.glDrawBuffers(length, iArr2, 0);
        if (GLES20.glCheckFramebufferStatus(36160) == 36053) {
            return 0;
        }
        return -1;
    }

    public void release() {
        TexGLUtils.deleteFbo(this.mFboID);
    }

    public void unBind() {
        GLES20.glBindFramebuffer(36160, 0);
    }

    public void unbindTexture2D() {
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, 0, 0);
        unBind();
    }

    public void unbindTexture2Ds(int[] iArr) {
        for (int i10 : iArr) {
            GLES20.glFramebufferTexture2D(36160, i10, 3553, 0, 0);
        }
        unBind();
    }
}
