package com.facebook.imagepipeline.nativecode;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.VisibleForTesting;
import b4.g;
import b4.h;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.common.TooManyBitmapsException;
import java.util.Locale;
import k2.m;
import y3.k;
@k2.d
/* loaded from: classes3.dex */
public abstract class DalvikPurgeableDecoder implements c4.d {

    /* renamed from: b  reason: collision with root package name */
    protected static final byte[] f15688b;

    /* renamed from: a  reason: collision with root package name */
    private final g f15689a = h.a();

    @com.facebook.soloader.g
    /* loaded from: classes3.dex */
    private static class OreoUtils {
        private OreoUtils() {
        }

        @TargetApi(26)
        static void a(BitmapFactory.Options options, ColorSpace colorSpace) {
            ColorSpace.Named named;
            if (colorSpace == null) {
                named = ColorSpace.Named.SRGB;
                colorSpace = ColorSpace.get(named);
            }
            options.inPreferredColorSpace = colorSpace;
        }
    }

    static {
        a.a();
        f15688b = new byte[]{-1, -39};
    }

    @VisibleForTesting
    public static boolean e(o2.a<PooledByteBuffer> aVar, int i10) {
        PooledByteBuffer s10 = aVar.s();
        if (i10 >= 2 && s10.D(i10 - 2) == -1 && s10.D(i10 - 1) == -39) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    public static BitmapFactory.Options f(int i10, Bitmap.Config config) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDither = true;
        options.inPreferredConfig = config;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = i10;
        options.inMutable = true;
        return options;
    }

    @k2.d
    private static native void nativePinBitmap(Bitmap bitmap);

    @Override // c4.d
    public o2.a<Bitmap> a(k kVar, Bitmap.Config config, Rect rect, ColorSpace colorSpace) {
        BitmapFactory.Options f10 = f(kVar.t(), config);
        if (Build.VERSION.SDK_INT >= 26) {
            OreoUtils.a(f10, colorSpace);
        }
        o2.a<PooledByteBuffer> l10 = kVar.l();
        k2.h.g(l10);
        try {
            return g(c(l10, f10));
        } finally {
            o2.a.r(l10);
        }
    }

    @Override // c4.d
    public o2.a<Bitmap> b(k kVar, Bitmap.Config config, Rect rect, int i10, ColorSpace colorSpace) {
        BitmapFactory.Options f10 = f(kVar.t(), config);
        if (Build.VERSION.SDK_INT >= 26) {
            OreoUtils.a(f10, colorSpace);
        }
        o2.a<PooledByteBuffer> l10 = kVar.l();
        k2.h.g(l10);
        try {
            return g(d(l10, i10, f10));
        } finally {
            o2.a.r(l10);
        }
    }

    protected abstract Bitmap c(o2.a<PooledByteBuffer> aVar, BitmapFactory.Options options);

    protected abstract Bitmap d(o2.a<PooledByteBuffer> aVar, int i10, BitmapFactory.Options options);

    public o2.a<Bitmap> g(Bitmap bitmap) {
        k2.h.g(bitmap);
        try {
            nativePinBitmap(bitmap);
            if (this.f15689a.g(bitmap)) {
                return o2.a.F(bitmap, this.f15689a.e());
            }
            int j10 = com.facebook.imageutils.d.j(bitmap);
            bitmap.recycle();
            throw new TooManyBitmapsException(String.format(Locale.US, "Attempted to pin a bitmap of size %d bytes. The current pool count is %d, the current pool size is %d bytes. The current pool max count is %d, the current pool max size is %d bytes.", Integer.valueOf(j10), Integer.valueOf(this.f15689a.b()), Long.valueOf(this.f15689a.f()), Integer.valueOf(this.f15689a.c()), Integer.valueOf(this.f15689a.d())));
        } catch (Exception e10) {
            bitmap.recycle();
            throw m.a(e10);
        }
    }
}
