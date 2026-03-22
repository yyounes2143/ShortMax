package com.ss.texturerender.base;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ConfigurationInfo;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.text.TextUtils;
import android.view.Surface;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.TextureRenderManager;
import java.util.Arrays;
@TargetApi(18)
/* loaded from: classes6.dex */
public class EGLRuntime {
    private static String LOG_TAG = "TR_EGLRuntime";
    public EGLConfig eglConfig;
    public EGLContext eglContext;
    public EGLDisplay eglDisplay;
    public EGLSurface eglDummySurface;
    protected long mDrawingObjectId;
    private ErrorCallback mErrorCallback;
    protected volatile EGLConfig mSharedEglConfig;
    protected volatile EGLContext mSharedEglContext;
    private int mTexType;
    private int mIsSupport2020PQ = -1;
    private boolean mUseGL3 = false;
    private int mBitDepth = 8;

    /* loaded from: classes6.dex */
    public interface ErrorCallback {
        void onError(EGLRuntime eGLRuntime, int i10, String str);
    }

    public EGLRuntime(int i10, ErrorCallback errorCallback) {
        this.mTexType = i10;
        this.mErrorCallback = errorCallback;
    }

    private EGLConfig chooseEglConfig() {
        int i10 = 1;
        int[] iArr = new int[1];
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[][] iArr2 = {getRGB10Attributes(), getRGB888Attributes(), getRGB565Attributes()};
        if (this.mBitDepth > 8) {
            i10 = 0;
        }
        while (i10 < 3) {
            if (EGL14.eglChooseConfig(this.eglDisplay, iArr2[i10], 0, eGLConfigArr, 0, 1, iArr, 0) && iArr[0] > 0) {
                TextureRenderLog.d(this.mTexType, LOG_TAG, this + ",chooseConfig:" + Arrays.toString(iArr2[i10]));
                return eGLConfigArr[0];
            }
            i10++;
        }
        notifyEGLError(0, "eglChooseConfig failed");
        return null;
    }

    private EGLContext createContext(EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
        int[] iArr;
        if (this.mTexType == 1 && this.mUseGL3 && isSupportGL3()) {
            iArr = new int[]{12440, 3, 12344};
            TextureRenderLog.i(this.mTexType, LOG_TAG, "use GL3");
        } else {
            iArr = new int[]{12440, 2, 12344};
            TextureRenderLog.i(this.mTexType, LOG_TAG, "use GL2");
        }
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, iArr, 0);
        if (eglCreateContext == EGL14.EGL_NO_CONTEXT) {
            notifyEGLError(0, "eglcreateContext failed");
        }
        return eglCreateContext;
    }

    private EGLDisplay getDefaultDisplay() {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        if (eglGetDisplay == null) {
            notifyEGLError(0, "egl get display failed");
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
            notifyEGLError(0, "eglInitialize failed");
            return null;
        }
        return eglGetDisplay;
    }

    private int[] getRGB10Attributes() {
        return new int[]{12352, 4, 12324, 10, 12323, 10, 12322, 10, 12321, 2, TextureRenderKeys.EGL_COLOR_COMPONENT_TYPE_EXT, TextureRenderKeys.EGL_COLOR_COMPONENT_TYPE_FIXED_EXT, 12344};
    }

    private int[] getRGB565Attributes() {
        return new int[]{12352, 4, 12324, 5, 12323, 6, 12322, 5, 12344};
    }

    private int[] getRGB888Attributes() {
        return new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12344};
    }

    private boolean isSupportGL3() {
        ActivityManager activityManager;
        ConfigurationInfo deviceConfigurationInfo;
        boolean z10 = false;
        try {
            Context context = TextureRenderManager.getManager().getContext();
            if (context != null && (activityManager = (ActivityManager) context.getSystemService("activity")) != null && (deviceConfigurationInfo = activityManager.getDeviceConfigurationInfo()) != null) {
                if (deviceConfigurationInfo.reqGlEsVersion >= 196608) {
                    z10 = true;
                }
                int i10 = this.mTexType;
                String str = LOG_TAG;
                TextureRenderLog.i(i10, str, "gles version: " + deviceConfigurationInfo.reqGlEsVersion + ", isSupportGL3: " + z10);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return z10;
    }

    private void notifyEGLError(int i10, String str) {
        ErrorCallback errorCallback = this.mErrorCallback;
        if (errorCallback != null) {
            errorCallback.onError(this, i10, str);
        }
    }

    public int clearSurface(Surface surface) {
        EGLSurface eglCreateWindowSurface;
        try {
            int i10 = this.mTexType;
            String str = LOG_TAG;
            TextureRenderLog.i(i10, str, this + ",create window surface from " + surface);
            eglCreateWindowSurface = EGL14.eglCreateWindowSurface(this.eglDisplay, this.eglConfig, surface, new int[]{12344}, 0);
        } catch (Exception unused) {
            TextureRenderLog.e(this.mTexType, LOG_TAG, "create current exception failed");
        }
        if (eglCreateWindowSurface == EGL14.EGL_NO_SURFACE) {
            int i11 = this.mTexType;
            String str2 = LOG_TAG;
            TextureRenderLog.e(i11, str2, "create window surface failed" + GLUtils.getEGLErrorString(EGL14.eglGetError()));
            return 0;
        } else if (!EGL14.eglMakeCurrent(this.eglDisplay, eglCreateWindowSurface, eglCreateWindowSurface, this.eglContext)) {
            int i12 = this.mTexType;
            String str3 = LOG_TAG;
            TextureRenderLog.e(i12, str3, "make current failed = " + eglCreateWindowSurface);
            return 0;
        } else {
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
            GLES20.glClear(16384);
            EGL14.eglSwapBuffers(this.eglDisplay, eglCreateWindowSurface);
            EGLDisplay eGLDisplay = this.eglDisplay;
            EGLSurface eGLSurface = this.eglDummySurface;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.eglContext);
            EGL14.eglDestroySurface(this.eglDisplay, eglCreateWindowSurface);
            return 0;
        }
    }

    public void deinitEGL() {
        EGLDisplay eGLDisplay = this.eglDisplay;
        if (eGLDisplay == EGL14.EGL_NO_DISPLAY) {
            return;
        }
        try {
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            EGLSurface eGLSurface2 = this.eglDummySurface;
            if (eGLSurface2 != EGL14.EGL_NO_SURFACE) {
                EGL14.eglDestroySurface(this.eglDisplay, eGLSurface2);
                this.eglDummySurface = EGL14.EGL_NO_SURFACE;
            }
            EGLContext eGLContext = this.eglContext;
            if (eGLContext != EGL14.EGL_NO_CONTEXT) {
                EGL14.eglDestroyContext(this.eglDisplay, eGLContext);
                this.eglContext = EGL14.EGL_NO_CONTEXT;
            }
            EGL14.eglTerminate(this.eglDisplay);
            this.eglDisplay = EGL14.EGL_NO_DISPLAY;
        } catch (Exception unused) {
        }
        int i10 = this.mTexType;
        String str = LOG_TAG;
        TextureRenderLog.i(i10, str, this + "OpenGL deinit OK.");
    }

    public long getDrawingObjectId() {
        return this.mDrawingObjectId;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0077 A[Catch: Exception -> 0x0064, TRY_LEAVE, TryCatch #0 {Exception -> 0x0064, blocks: (B:21:0x005f, B:27:0x006b, B:29:0x0077, B:26:0x0066), top: B:33:0x005f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int initEGL() {
        /*
            r7 = this;
            android.opengl.EGLDisplay r0 = r7.getDefaultDisplay()
            r7.eglDisplay = r0
            r1 = -1
            if (r0 != 0) goto La
            return r1
        La:
            android.opengl.EGLConfig r0 = r7.mSharedEglConfig
            if (r0 == 0) goto L13
            android.opengl.EGLConfig r0 = r7.mSharedEglConfig
            r7.eglConfig = r0
            goto L19
        L13:
            android.opengl.EGLConfig r0 = r7.chooseEglConfig()
            r7.eglConfig = r0
        L19:
            android.opengl.EGLConfig r0 = r7.eglConfig
            if (r0 != 0) goto L1e
            return r1
        L1e:
            android.opengl.EGLContext r0 = r7.mSharedEglContext
            r2 = 12344(0x3038, float:1.7298E-41)
            r3 = 0
            if (r0 == 0) goto L39
            r0 = 12440(0x3098, float:1.7432E-41)
            r4 = 3
            int[] r0 = new int[]{r0, r4, r2}
            android.opengl.EGLDisplay r4 = r7.eglDisplay
            android.opengl.EGLConfig r5 = r7.mSharedEglConfig
            android.opengl.EGLContext r6 = r7.mSharedEglContext
            android.opengl.EGLContext r0 = android.opengl.EGL14.eglCreateContext(r4, r5, r6, r0, r3)
            r7.eglContext = r0
            goto L43
        L39:
            android.opengl.EGLDisplay r0 = r7.eglDisplay
            android.opengl.EGLConfig r4 = r7.eglConfig
            android.opengl.EGLContext r0 = r7.createContext(r0, r4)
            r7.eglContext = r0
        L43:
            android.opengl.EGLContext r0 = r7.eglContext
            android.opengl.EGLContext r4 = android.opengl.EGL14.EGL_NO_CONTEXT
            if (r0 != r4) goto L4a
            return r1
        L4a:
            r0 = 12375(0x3057, float:1.7341E-41)
            r4 = 12374(0x3056, float:1.734E-41)
            r5 = 1
            int[] r0 = new int[]{r0, r5, r4, r5, r2}
            android.opengl.EGLDisplay r2 = r7.eglDisplay
            android.opengl.EGLConfig r4 = r7.eglConfig
            android.opengl.EGLSurface r0 = android.opengl.EGL14.eglCreatePbufferSurface(r2, r4, r0, r3)
            r7.eglDummySurface = r0
            if (r0 == 0) goto L66
            android.opengl.EGLSurface r2 = android.opengl.EGL14.EGL_NO_SURFACE     // Catch: java.lang.Exception -> L64
            if (r0 != r2) goto L6b
            goto L66
        L64:
            r0 = move-exception
            goto L7d
        L66:
            java.lang.String r0 = "create eglCreatePbufferSurface failed"
            r7.notifyEGLError(r3, r0)     // Catch: java.lang.Exception -> L64
        L6b:
            android.opengl.EGLDisplay r0 = r7.eglDisplay     // Catch: java.lang.Exception -> L64
            android.opengl.EGLSurface r2 = r7.eglDummySurface     // Catch: java.lang.Exception -> L64
            android.opengl.EGLContext r4 = r7.eglContext     // Catch: java.lang.Exception -> L64
            boolean r0 = android.opengl.EGL14.eglMakeCurrent(r0, r2, r2, r4)     // Catch: java.lang.Exception -> L64
            if (r0 != 0) goto L7c
            java.lang.String r0 = "eglMakeCurrent failed"
            r7.notifyEGLError(r3, r0)     // Catch: java.lang.Exception -> L64
        L7c:
            return r3
        L7d:
            r0.printStackTrace()
            java.lang.String r0 = "create dummy env failed"
            r7.notifyEGLError(r3, r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.texturerender.base.EGLRuntime.initEGL():int");
    }

    public boolean isCurrentObject(long j10) {
        if (this.mDrawingObjectId == j10) {
            return true;
        }
        return false;
    }

    public int isSupportBt2020PQ() {
        EGLDisplay eGLDisplay = this.eglDisplay;
        if (eGLDisplay == null) {
            return -1;
        }
        int i10 = this.mIsSupport2020PQ;
        if (i10 >= 0) {
            return i10;
        }
        String eglQueryString = EGL14.eglQueryString(eGLDisplay, 12373);
        if (!TextUtils.isEmpty(eglQueryString) && eglQueryString.contains("EGL_EXT_gl_colorspace_bt2020_pq")) {
            this.mIsSupport2020PQ = 1;
        } else {
            this.mIsSupport2020PQ = 0;
        }
        return this.mIsSupport2020PQ;
    }

    public void setBitDepth(int i10) {
        this.mBitDepth = i10;
    }

    public void setDrawingObjectId(long j10) {
        this.mDrawingObjectId = j10;
        int i10 = this.mTexType;
        String str = LOG_TAG;
        TextureRenderLog.d(i10, str, "setDrawingObjectId:" + this.mDrawingObjectId);
    }

    public void setUseGL3(boolean z10) {
        this.mUseGL3 = z10;
    }

    public EGLRuntime(int i10, ErrorCallback errorCallback, EGLContext eGLContext, EGLConfig eGLConfig) {
        this.mTexType = i10;
        this.mErrorCallback = errorCallback;
        this.mSharedEglContext = eGLContext;
        this.mSharedEglConfig = eGLConfig;
    }
}
