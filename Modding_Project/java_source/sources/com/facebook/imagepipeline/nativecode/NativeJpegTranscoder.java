package com.facebook.imagepipeline.nativecode;

import android.graphics.ColorSpace;
import androidx.annotation.VisibleForTesting;
import g4.e;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import k2.h;
import s3.f;
import s3.g;
import y3.k;
@k2.d
/* loaded from: classes3.dex */
public class NativeJpegTranscoder implements g4.c {

    /* renamed from: a  reason: collision with root package name */
    private boolean f15690a;

    /* renamed from: b  reason: collision with root package name */
    private int f15691b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15692c;

    public NativeJpegTranscoder(boolean z10, int i10, boolean z11, boolean z12) {
        this.f15690a = z10;
        this.f15691b = i10;
        this.f15692c = z11;
        if (z12) {
            d.a();
        }
    }

    @VisibleForTesting
    public static void d(InputStream inputStream, OutputStream outputStream, int i10, int i11, int i12) throws IOException {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        d.a();
        boolean z14 = false;
        if (i11 >= 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        h.b(Boolean.valueOf(z10));
        if (i11 <= 16) {
            z11 = true;
        } else {
            z11 = false;
        }
        h.b(Boolean.valueOf(z11));
        if (i12 >= 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        h.b(Boolean.valueOf(z12));
        if (i12 <= 100) {
            z13 = true;
        } else {
            z13 = false;
        }
        h.b(Boolean.valueOf(z13));
        h.b(Boolean.valueOf(e.j(i10)));
        if (i11 != 8 || i10 != 0) {
            z14 = true;
        }
        h.c(z14, "no transformation requested");
        nativeTranscodeJpeg((InputStream) h.g(inputStream), (OutputStream) h.g(outputStream), i10, i11, i12);
    }

    @VisibleForTesting
    public static void e(InputStream inputStream, OutputStream outputStream, int i10, int i11, int i12) throws IOException {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        d.a();
        boolean z14 = false;
        if (i11 >= 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        h.b(Boolean.valueOf(z10));
        if (i11 <= 16) {
            z11 = true;
        } else {
            z11 = false;
        }
        h.b(Boolean.valueOf(z11));
        if (i12 >= 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        h.b(Boolean.valueOf(z12));
        if (i12 <= 100) {
            z13 = true;
        } else {
            z13 = false;
        }
        h.b(Boolean.valueOf(z13));
        h.b(Boolean.valueOf(e.i(i10)));
        if (i11 != 8 || i10 != 1) {
            z14 = true;
        }
        h.c(z14, "no transformation requested");
        nativeTranscodeJpegWithExifOrientation((InputStream) h.g(inputStream), (OutputStream) h.g(outputStream), i10, i11, i12);
    }

    @k2.d
    private static native void nativeTranscodeJpeg(InputStream inputStream, OutputStream outputStream, int i10, int i11, int i12) throws IOException;

    @k2.d
    private static native void nativeTranscodeJpegWithExifOrientation(InputStream inputStream, OutputStream outputStream, int i10, int i11, int i12) throws IOException;

    @Override // g4.c
    public boolean a(com.facebook.imageformat.c cVar) {
        if (cVar == com.facebook.imageformat.b.f15604b) {
            return true;
        }
        return false;
    }

    @Override // g4.c
    public boolean b(k kVar, g gVar, f fVar) {
        if (gVar == null) {
            gVar = g.c();
        }
        if (e.f(gVar, fVar, kVar, this.f15690a) < 8) {
            return true;
        }
        return false;
    }

    @Override // g4.c
    public g4.b c(k kVar, OutputStream outputStream, g gVar, f fVar, com.facebook.imageformat.c cVar, Integer num, ColorSpace colorSpace) throws IOException {
        if (num == null) {
            num = 85;
        }
        if (gVar == null) {
            gVar = g.c();
        }
        int b10 = g4.a.b(gVar, fVar, kVar, this.f15691b);
        try {
            int f10 = e.f(gVar, fVar, kVar, this.f15690a);
            int a10 = e.a(b10);
            if (this.f15692c) {
                f10 = a10;
            }
            InputStream r10 = kVar.r();
            if (e.f52202b.contains(Integer.valueOf(kVar.H()))) {
                e((InputStream) h.h(r10, "Cannot transcode from null input stream!"), outputStream, e.d(gVar, kVar), f10, num.intValue());
            } else {
                d((InputStream) h.h(r10, "Cannot transcode from null input stream!"), outputStream, e.e(gVar, kVar), f10, num.intValue());
            }
            k2.b.b(r10);
            int i10 = 1;
            if (b10 != 1) {
                i10 = 0;
            }
            return new g4.b(i10);
        } catch (Throwable th2) {
            k2.b.b(null);
            throw th2;
        }
    }

    @Override // g4.c
    public String getIdentifier() {
        return "NativeJpegTranscoder";
    }
}
