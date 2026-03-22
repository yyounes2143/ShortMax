package com.facebook.animated.gif;

import android.graphics.Bitmap;
import k2.d;
import l3.c;
/* loaded from: classes3.dex */
public class GifFrame implements c {
    @d
    private long mNativeContext;

    @d
    GifFrame(long j10) {
        this.mNativeContext = j10;
    }

    @d
    private native void nativeDispose();

    @d
    private native void nativeFinalize();

    @d
    private native int nativeGetDisposalMode();

    @d
    private native int nativeGetDurationMs();

    @d
    private native int nativeGetHeight();

    @d
    private native int nativeGetTransparentPixelColor();

    @d
    private native int nativeGetWidth();

    @d
    private native int nativeGetXOffset();

    @d
    private native int nativeGetYOffset();

    @d
    private native boolean nativeHasTransparency();

    @d
    private native void nativeRenderFrame(int i10, int i11, Bitmap bitmap);

    @Override // l3.c
    public void a(int i10, int i11, Bitmap bitmap) {
        nativeRenderFrame(i10, i11, bitmap);
    }

    @Override // l3.c
    public int b() {
        return nativeGetXOffset();
    }

    @Override // l3.c
    public int c() {
        return nativeGetYOffset();
    }

    public int d() {
        return nativeGetDisposalMode();
    }

    @Override // l3.c
    public void dispose() {
        nativeDispose();
    }

    protected void finalize() {
        nativeFinalize();
    }

    @Override // l3.c
    public int getHeight() {
        return nativeGetHeight();
    }

    @Override // l3.c
    public int getWidth() {
        return nativeGetWidth();
    }
}
