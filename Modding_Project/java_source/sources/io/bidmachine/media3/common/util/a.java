package io.bidmachine.media3.common.util;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import androidx.annotation.Nullable;
import cn.m0;
import io.bidmachine.media3.common.util.GlUtil;
/* compiled from: EGLSurfaceTexture.java */
/* loaded from: classes8.dex */
public final class a implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f55276g = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: a  reason: collision with root package name */
    private final Handler f55277a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f55278b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private EGLDisplay f55279c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private EGLContext f55280d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private EGLSurface f55281e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private SurfaceTexture f55282f;

    /* compiled from: EGLSurfaceTexture.java */
    /* renamed from: io.bidmachine.media3.common.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public interface InterfaceC0796a {
    }

    public a(Handler handler) {
        this(handler, null);
    }

    private static EGLConfig a(EGLDisplay eGLDisplay) throws GlUtil.GlException {
        boolean z10 = true;
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        boolean eglChooseConfig = EGL14.eglChooseConfig(eGLDisplay, f55276g, 0, eGLConfigArr, 0, 1, iArr, 0);
        if (!eglChooseConfig || iArr[0] <= 0 || eGLConfigArr[0] == null) {
            z10 = false;
        }
        GlUtil.c(z10, m0.G("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr[0]), eGLConfigArr[0]));
        return eGLConfigArr[0];
    }

    private static EGLContext c(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i10) throws GlUtil.GlException {
        boolean z10 = true;
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, i10 == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
        if (eglCreateContext == null) {
            z10 = false;
        }
        GlUtil.c(z10, "eglCreateContext failed");
        return eglCreateContext;
    }

    private static EGLSurface d(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int i10) throws GlUtil.GlException {
        EGLSurface eglCreatePbufferSurface;
        boolean z10 = true;
        if (i10 == 1) {
            eglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
        } else {
            eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i10 == 2 ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
            if (eglCreatePbufferSurface == null) {
                z10 = false;
            }
            GlUtil.c(z10, "eglCreatePbufferSurface failed");
        }
        GlUtil.c(EGL14.eglMakeCurrent(eGLDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eGLContext), "eglMakeCurrent failed");
        return eglCreatePbufferSurface;
    }

    private static void f(int[] iArr) throws GlUtil.GlException {
        GLES20.glGenTextures(1, iArr, 0);
        GlUtil.b();
    }

    private static EGLDisplay g() throws GlUtil.GlException {
        boolean z10;
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        if (eglGetDisplay != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        GlUtil.c(z10, "eglGetDisplay failed");
        int[] iArr = new int[2];
        GlUtil.c(EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1), "eglInitialize failed");
        return eglGetDisplay;
    }

    public SurfaceTexture h() {
        return (SurfaceTexture) cn.a.e(this.f55282f);
    }

    public void i(int i10) throws GlUtil.GlException {
        EGLDisplay g10 = g();
        this.f55279c = g10;
        EGLConfig a10 = a(g10);
        EGLContext c10 = c(this.f55279c, a10, i10);
        this.f55280d = c10;
        this.f55281e = d(this.f55279c, a10, c10, i10);
        f(this.f55278b);
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f55278b[0]);
        this.f55282f = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.opengl.EGLContext, android.graphics.SurfaceTexture, android.opengl.EGLSurface, android.opengl.EGLDisplay] */
    public void j() {
        this.f55277a.removeCallbacks(this);
        try {
            SurfaceTexture surfaceTexture = this.f55282f;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, this.f55278b, 0);
            }
        } finally {
            EGLDisplay eGLDisplay = this.f55279c;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = this.f55279c;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = this.f55281e;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f55279c, this.f55281e);
            }
            EGLContext eGLContext = this.f55280d;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.f55279c, eGLContext);
            }
            EGL14.eglReleaseThread();
            EGLDisplay eGLDisplay3 = this.f55279c;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f55279c);
            }
            this.f55279c = null;
            this.f55280d = null;
            this.f55281e = null;
            this.f55282f = null;
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f55277a.post(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        e();
        SurfaceTexture surfaceTexture = this.f55282f;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException unused) {
            }
        }
    }

    public a(Handler handler, @Nullable InterfaceC0796a interfaceC0796a) {
        this.f55277a = handler;
        this.f55278b = new int[1];
    }

    private void e() {
    }
}
