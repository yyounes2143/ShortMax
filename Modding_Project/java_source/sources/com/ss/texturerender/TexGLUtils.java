package com.ss.texturerender;

import android.opengl.GLES20;
import android.opengl.GLUtils;
import androidx.work.Data;
/* loaded from: classes6.dex */
public class TexGLUtils {
    private static final String LOG_TAG = "GLUtils";

    public static int checkGLError(int i10, String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            TextureRenderLog.e(i10, LOG_TAG, str + ": gl error = " + GLUtils.getEGLErrorString(glGetError));
        }
        return glGetError;
    }

    public static int createFbo() {
        int[] iArr = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        checkGLError(-1, "createFbo");
        return iArr[0];
    }

    public static void deleteFbo(int i10) {
        if (i10 > 0) {
            GLES20.glDeleteFramebuffers(1, new int[]{i10}, 0);
        }
    }

    public static void deleteTexture(int i10) {
        if (i10 > 0) {
            GLES20.glDeleteTextures(1, new int[]{i10}, 0);
        }
    }

    public static int genTexture(int i10) {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        checkGLError(-1, "glGenTextures");
        int i11 = iArr[0];
        if (i11 != 0) {
            GLES20.glBindTexture(i10, i11);
            GLES20.glTexParameteri(i10, 10242, 33071);
            GLES20.glTexParameteri(i10, 10243, 33071);
            GLES20.glTexParameteri(i10, 10241, 9729);
            GLES20.glTexParameteri(i10, Data.MAX_DATA_BYTES, 9729);
        }
        return iArr[0];
    }

    public static String texTargetToString(int i10) {
        if (i10 == 36197) {
            return "texture_oes";
        }
        if (i10 == 3553) {
            return "texture_2d";
        }
        return Integer.toString(i10);
    }

    public static int genTexture(int i10, int i11) {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        checkGLError(-1, "glGenTextures");
        int i12 = iArr[0];
        if (i12 != 0) {
            GLES20.glBindTexture(i10, i12);
            GLES20.glTexParameteri(i10, 10242, 33071);
            GLES20.glTexParameteri(i10, 10243, 33071);
            GLES20.glTexParameteri(i10, 10241, i11);
            GLES20.glTexParameteri(i10, Data.MAX_DATA_BYTES, i11);
        }
        return iArr[0];
    }
}
