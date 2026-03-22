package com.ss.texturerender.base;

import android.hardware.HardwareBuffer;
import android.opengl.EGLDisplay;
import androidx.annotation.RequiresApi;
import com.ss.texturerender.TextureRenderLog;
@RequiresApi(api = 21)
/* loaded from: classes6.dex */
public class EGLExt {
    private static boolean isLibLoaded;

    static {
        try {
            try {
                System.loadLibrary("texturerender_native");
            } catch (Exception e10) {
                TextureRenderLog.e(-1, "EGLExt", "load texturerender_native fail,error:" + e10.toString());
            }
        } finally {
            TextureRenderLog.d(-1, "EGLExt", "load texturerender_native success");
            isLibLoaded = true;
        }
    }

    public static int bindHardwareBufferToTexture(EGLDisplay eGLDisplay, HardwareBuffer hardwareBuffer, int i10, int i11) {
        if (eGLDisplay != null && hardwareBuffer != null && i10 != 0 && isLibLoaded) {
            return nBindHardwareBufferToTexture(eGLDisplay.getNativeHandle(), hardwareBuffer, i10, i11);
        }
        return -1;
    }

    private static native int nBindHardwareBufferToTexture(long j10, HardwareBuffer hardwareBuffer, int i10, int i11);
}
