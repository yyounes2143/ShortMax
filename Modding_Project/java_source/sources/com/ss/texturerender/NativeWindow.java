package com.ss.texturerender;

import android.view.Surface;
/* loaded from: classes6.dex */
public class NativeWindow {
    private static String TAG = "TR_NativeWindow";
    private static boolean isLibLoaded;
    private long mHandle;
    private Surface mSurface;
    private int mTexType;

    static {
        try {
            try {
                System.loadLibrary("texturerender_native");
            } catch (Exception e10) {
                String str = TAG;
                TextureRenderLog.e(-1, str, "load texturerender_native fail,error:" + e10.toString());
            }
        } finally {
            TextureRenderLog.d(-1, TAG, "load texturerender_native success");
            isLibLoaded = true;
        }
    }

    public NativeWindow(int i10, Surface surface) {
        this.mSurface = null;
        this.mHandle = 0L;
        if (!isLibLoaded) {
            TextureRenderLog.d(this.mTexType, TAG, "lib not loaded");
            return;
        }
        this.mSurface = surface;
        this.mHandle = nativeSetSurface(surface);
        this.mTexType = i10;
    }

    public static int getFormat(Surface surface) {
        if (!isLibLoaded) {
            TextureRenderLog.d(-1, TAG, "lib not loaded");
            return -1;
        }
        return nativeGetFormat(surface);
    }

    private static native int nativeGetFormat(Surface surface);

    private static native int nativeGetHeight(long j10);

    private static native int nativeGetSurfaceFormat(long j10);

    private static native int nativeGetWidth(long j10);

    private static native int nativeReleaseSurface(long j10);

    private static native int nativeSetBuffersGeometry(long j10, int i10, int i11, int i12);

    private static native long nativeSetSurface(Surface surface);

    public int getHeight() {
        long j10 = this.mHandle;
        if (j10 <= 0) {
            return -1;
        }
        return nativeGetHeight(j10);
    }

    public int getSurfaceFormat() {
        long j10 = this.mHandle;
        if (j10 <= 0) {
            return -1;
        }
        return nativeGetSurfaceFormat(j10);
    }

    public int getWidth() {
        long j10 = this.mHandle;
        if (j10 <= 0) {
            return -1;
        }
        return nativeGetWidth(j10);
    }

    public int releaseWindow() {
        long j10 = this.mHandle;
        if (j10 <= 0) {
            return -1;
        }
        int nativeReleaseSurface = nativeReleaseSurface(j10);
        this.mHandle = 0L;
        return nativeReleaseSurface;
    }

    public int setBuffersGeometry(int i10, int i11, int i12) {
        if (this.mHandle <= 0) {
            return -1;
        }
        int i13 = this.mTexType;
        String str = TAG;
        TextureRenderLog.d(i13, str, "setBuffersGeometry,w:" + i10 + ",h:" + i11 + ",fmt:" + i12);
        return nativeSetBuffersGeometry(this.mHandle, i10, i11, i12);
    }
}
