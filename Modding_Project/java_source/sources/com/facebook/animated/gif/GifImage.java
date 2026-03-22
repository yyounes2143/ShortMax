package com.facebook.animated.gif;

import android.graphics.Bitmap;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import java.nio.ByteBuffer;
import k2.d;
import k2.h;
import l3.b;
import m3.c;
import w4.a;
@d
/* loaded from: classes3.dex */
public class GifImage implements b, c {

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f14921b;

    /* renamed from: a  reason: collision with root package name */
    private Bitmap.Config f14922a = null;
    @d
    private long mNativeContext;

    @d
    public GifImage() {
    }

    public static GifImage h(ByteBuffer byteBuffer, s3.d dVar) {
        j();
        byteBuffer.rewind();
        GifImage nativeCreateFromDirectByteBuffer = nativeCreateFromDirectByteBuffer(byteBuffer, dVar.f66267b, dVar.f66272g);
        nativeCreateFromDirectByteBuffer.f14922a = dVar.f66274i;
        return nativeCreateFromDirectByteBuffer;
    }

    public static GifImage i(long j10, int i10, s3.d dVar) {
        boolean z10;
        j();
        if (j10 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        h.b(Boolean.valueOf(z10));
        GifImage nativeCreateFromNativeMemory = nativeCreateFromNativeMemory(j10, i10, dVar.f66267b, dVar.f66272g);
        nativeCreateFromNativeMemory.f14922a = dVar.f66274i;
        return nativeCreateFromNativeMemory;
    }

    private static synchronized void j() {
        synchronized (GifImage.class) {
            if (!f14921b) {
                f14921b = true;
                a.d("gifimage");
            }
        }
    }

    private static AnimatedDrawableFrameInfo.DisposalMethod k(int i10) {
        if (i10 == 0) {
            return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT;
        }
        if (i10 == 1) {
            return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT;
        }
        if (i10 == 2) {
            return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND;
        }
        if (i10 == 3) {
            return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_PREVIOUS;
        }
        return AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT;
    }

    @d
    private static native GifImage nativeCreateFromDirectByteBuffer(ByteBuffer byteBuffer, int i10, boolean z10);

    @d
    private static native GifImage nativeCreateFromFileDescriptor(int i10, int i11, boolean z10);

    @d
    private static native GifImage nativeCreateFromNativeMemory(long j10, int i10, int i11, boolean z10);

    @d
    private native void nativeDispose();

    @d
    private native void nativeFinalize();

    @d
    private native int nativeGetDuration();

    @d
    private native GifFrame nativeGetFrame(int i10);

    @d
    private native int nativeGetFrameCount();

    @d
    private native int[] nativeGetFrameDurations();

    @d
    private native int nativeGetHeight();

    @d
    private native int nativeGetLoopCount();

    @d
    private native int nativeGetSizeInBytes();

    @d
    private native int nativeGetWidth();

    @d
    private native boolean nativeIsAnimated();

    @Override // l3.b
    public AnimatedDrawableFrameInfo a(int i10) {
        GifFrame e10 = e(i10);
        try {
            return new AnimatedDrawableFrameInfo(i10, e10.b(), e10.c(), e10.getWidth(), e10.getHeight(), AnimatedDrawableFrameInfo.BlendOperation.BLEND_WITH_PREVIOUS, k(e10.d()));
        } finally {
            e10.dispose();
        }
    }

    @Override // l3.b
    public boolean b() {
        return false;
    }

    @Override // m3.c
    public b c(long j10, int i10, s3.d dVar) {
        return i(j10, i10, dVar);
    }

    @Override // m3.c
    public b d(ByteBuffer byteBuffer, s3.d dVar) {
        return h(byteBuffer, dVar);
    }

    @Override // l3.b
    public Bitmap.Config f() {
        return this.f14922a;
    }

    protected void finalize() {
        nativeFinalize();
    }

    @Override // l3.b
    public int[] g() {
        return nativeGetFrameDurations();
    }

    @Override // l3.b
    public int getFrameCount() {
        return nativeGetFrameCount();
    }

    @Override // l3.b
    public int getHeight() {
        return nativeGetHeight();
    }

    @Override // l3.b
    public int getLoopCount() {
        int nativeGetLoopCount = nativeGetLoopCount();
        if (nativeGetLoopCount == -1) {
            return 1;
        }
        if (nativeGetLoopCount != 0) {
            return nativeGetLoopCount + 1;
        }
        return 0;
    }

    @Override // l3.b
    public int getSizeInBytes() {
        return nativeGetSizeInBytes();
    }

    @Override // l3.b
    public int getWidth() {
        return nativeGetWidth();
    }

    @Override // l3.b
    /* renamed from: l */
    public GifFrame e(int i10) {
        return nativeGetFrame(i10);
    }

    @d
    GifImage(long j10) {
        this.mNativeContext = j10;
    }
}
