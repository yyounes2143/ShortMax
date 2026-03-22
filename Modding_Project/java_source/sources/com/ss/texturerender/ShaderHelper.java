package com.ss.texturerender;

import android.opengl.GLES20;
import android.opengl.GLUtils;
/* loaded from: classes6.dex */
public class ShaderHelper {
    private static final String TAG = "ShaderHelper";

    public static int compileShader(int i10, String str) {
        int glCreateShader = GLES20.glCreateShader(i10);
        if (glCreateShader != 0) {
            int[] iArr = new int[1];
            GLES20.glShaderSource(glCreateShader, str);
            GLES20.glCompileShader(glCreateShader);
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            if (iArr[0] == 0) {
                TextureRenderLog.e(-1, TAG, "Fail to compile shader" + GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                glCreateShader = 0;
            }
        }
        if (glCreateShader == 0) {
            TextureRenderLog.e(-1, TAG, "EGL Error: " + GLUtils.getEGLErrorString(GLES20.glGetError()));
        }
        return glCreateShader;
    }

    public static int createAndLinkProgram(int i10, int i11, String[] strArr) {
        int glCreateProgram = GLES20.glCreateProgram();
        if (glCreateProgram != 0) {
            int[] iArr = new int[1];
            GLES20.glAttachShader(glCreateProgram, i11);
            GLES20.glAttachShader(glCreateProgram, i10);
            if (strArr != null) {
                for (int i12 = 0; i12 < strArr.length; i12++) {
                    GLES20.glBindAttribLocation(glCreateProgram, i12, strArr[i12]);
                }
            }
            GLES20.glLinkProgram(glCreateProgram);
            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
            if (iArr[0] == 0) {
                TextureRenderLog.e(-1, TAG, "Failed to compile program: " + GLES20.glGetProgramInfoLog(glCreateProgram));
                GLES20.glDeleteProgram(glCreateProgram);
                return 0;
            }
            return glCreateProgram;
        }
        return glCreateProgram;
    }
}
