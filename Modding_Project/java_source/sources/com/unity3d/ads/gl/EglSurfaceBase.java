package com.unity3d.ads.gl;

import android.opengl.EGL14;
import android.opengl.EGLSurface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: EglSurfaceBase.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEglSurfaceBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EglSurfaceBase.kt\ncom/unity3d/ads/gl/EglSurfaceBase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n1#2:43\n*E\n"})
/* loaded from: classes7.dex */
public class EglSurfaceBase {
    private EGLSurface mEGLSurface;
    @NotNull
    private EglCore mEglCore;
    private int mHeight;
    private int mWidth;

    /* JADX INFO: Access modifiers changed from: protected */
    public EglSurfaceBase(@NotNull EglCore eglCore) {
        Intrinsics.checkNotNullParameter(eglCore, "eglCore");
        this.mEGLSurface = EGL14.EGL_NO_SURFACE;
        this.mWidth = -1;
        this.mHeight = -1;
        this.mEglCore = eglCore;
    }

    public final void createOffscreenSurface(int i10, int i11) {
        if (this.mEGLSurface == EGL14.EGL_NO_SURFACE) {
            this.mEGLSurface = this.mEglCore.createOffscreenSurface(i10, i11);
            this.mWidth = i10;
            this.mHeight = i11;
            return;
        }
        throw new IllegalStateException("surface already created");
    }

    public final void makeCurrent() {
        this.mEglCore.makeCurrent(this.mEGLSurface);
    }

    public final void releaseEglSurface() {
        this.mEglCore.releaseSurface(this.mEGLSurface);
        this.mEGLSurface = EGL14.EGL_NO_SURFACE;
        this.mHeight = -1;
        this.mWidth = -1;
    }
}
