package com.google.android.exoplayer2.util;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.s0;
import com.google.android.exoplayer2.util.GlUtil;
/* compiled from: EGLSurfaceTexture.java */
@RequiresApi(17)
/* loaded from: classes4.dex */
public final class a implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f19126g = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: a  reason: collision with root package name */
    private final Handler f19127a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f19128b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private EGLDisplay f19129c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private EGLContext f19130d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private EGLSurface f19131e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private SurfaceTexture f19132f;

    /* compiled from: EGLSurfaceTexture.java */
    /* renamed from: com.google.android.exoplayer2.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0291a {
    }

    public a(Handler handler) {
        this(handler, null);
    }

    private static EGLConfig a(EGLDisplay eGLDisplay) throws GlUtil.GlException {
        boolean z10 = true;
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        boolean eglChooseConfig = EGL14.eglChooseConfig(eGLDisplay, f19126g, 0, eGLConfigArr, 0, 1, iArr, 0);
        if (!eglChooseConfig || iArr[0] <= 0 || eGLConfigArr[0] == null) {
            z10 = false;
        }
        GlUtil.c(z10, s0.z("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr[0]), eGLConfigArr[0]));
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
        return (SurfaceTexture) b7.a.e(this.f19132f);
    }

    public void i(int i10) throws GlUtil.GlException {
        EGLDisplay g10 = g();
        this.f19129c = g10;
        EGLConfig a10 = a(g10);
        EGLContext c10 = c(this.f19129c, a10, i10);
        this.f19130d = c10;
        this.f19131e = d(this.f19129c, a10, c10, i10);
        f(this.f19128b);
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f19128b[0]);
        this.f19132f = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.opengl.EGLContext, android.graphics.SurfaceTexture, android.opengl.EGLSurface, android.opengl.EGLDisplay] */
    public void j() {
        this.f19127a.removeCallbacks(this);
        try {
            SurfaceTexture surfaceTexture = this.f19132f;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, this.f19128b, 0);
            }
        } finally {
            EGLDisplay eGLDisplay = this.f19129c;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = this.f19129c;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = this.f19131e;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f19129c, this.f19131e);
            }
            EGLContext eGLContext = this.f19130d;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.f19129c, eGLContext);
            }
            if (s0.f2506a >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay3 = this.f19129c;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f19129c);
            }
            this.f19129c = null;
            this.f19130d = null;
            this.f19131e = null;
            this.f19132f = null;
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f19127a.post(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        e();
        SurfaceTexture surfaceTexture = this.f19132f;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException unused) {
            }
        }
    }

    public a(Handler handler, @Nullable InterfaceC0291a interfaceC0291a) {
        this.f19127a = handler;
        this.f19128b = new int[1];
    }

    private void e() {
    }
}
