package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.DisplayMetrics;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidImageBitmap.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidImageBitmap_androidKt {
    @NotNull
    /* renamed from: ActualImageBitmap-x__-hDU  reason: not valid java name */
    public static final ImageBitmap m1715ActualImageBitmapx__hDU(int i10, int i11, int i12, boolean z10, @NotNull ColorSpace colorSpace) {
        Bitmap createBitmap;
        Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
        Bitmap.Config m1716toBitmapConfig1JJdX4A = m1716toBitmapConfig1JJdX4A(i12);
        if (Build.VERSION.SDK_INT >= 26) {
            createBitmap = Api26Bitmap.m1751createBitmapx__hDU$ui_graphics_release(i10, i11, i12, z10, colorSpace);
        } else {
            createBitmap = Bitmap.createBitmap((DisplayMetrics) null, i10, i11, m1716toBitmapConfig1JJdX4A);
            Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(\n          …   bitmapConfig\n        )");
            createBitmap.setHasAlpha(z10);
        }
        return new AndroidImageBitmap(createBitmap);
    }

    @NotNull
    public static final Bitmap asAndroidBitmap(@NotNull ImageBitmap imageBitmap) {
        Intrinsics.checkNotNullParameter(imageBitmap, "<this>");
        if (imageBitmap instanceof AndroidImageBitmap) {
            return ((AndroidImageBitmap) imageBitmap).getBitmap$ui_graphics_release();
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Bitmap");
    }

    @NotNull
    public static final ImageBitmap asImageBitmap(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        return new AndroidImageBitmap(bitmap);
    }

    @NotNull
    /* renamed from: toBitmapConfig-1JJdX4A  reason: not valid java name */
    public static final Bitmap.Config m1716toBitmapConfig1JJdX4A(int i10) {
        Bitmap.Config config;
        Bitmap.Config config2;
        ImageBitmapConfig.Companion companion = ImageBitmapConfig.Companion;
        if (ImageBitmapConfig.m2023equalsimpl0(i10, companion.m2028getArgb8888_sVssgQ())) {
            return Bitmap.Config.ARGB_8888;
        }
        if (ImageBitmapConfig.m2023equalsimpl0(i10, companion.m2027getAlpha8_sVssgQ())) {
            return Bitmap.Config.ALPHA_8;
        }
        if (ImageBitmapConfig.m2023equalsimpl0(i10, companion.m2031getRgb565_sVssgQ())) {
            return Bitmap.Config.RGB_565;
        }
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 26 && ImageBitmapConfig.m2023equalsimpl0(i10, companion.m2029getF16_sVssgQ())) {
            config2 = Bitmap.Config.RGBA_F16;
            return config2;
        } else if (i11 >= 26 && ImageBitmapConfig.m2023equalsimpl0(i10, companion.m2030getGpu_sVssgQ())) {
            config = Bitmap.Config.HARDWARE;
            return config;
        } else {
            return Bitmap.Config.ARGB_8888;
        }
    }

    public static final int toImageConfig(@NotNull Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3;
        Intrinsics.checkNotNullParameter(config, "<this>");
        if (config == Bitmap.Config.ALPHA_8) {
            return ImageBitmapConfig.Companion.m2027getAlpha8_sVssgQ();
        }
        if (config == Bitmap.Config.RGB_565) {
            return ImageBitmapConfig.Companion.m2031getRgb565_sVssgQ();
        }
        if (config == Bitmap.Config.ARGB_4444) {
            return ImageBitmapConfig.Companion.m2028getArgb8888_sVssgQ();
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            config3 = Bitmap.Config.RGBA_F16;
            if (config == config3) {
                return ImageBitmapConfig.Companion.m2029getF16_sVssgQ();
            }
        }
        if (i10 >= 26) {
            config2 = Bitmap.Config.HARDWARE;
            if (config == config2) {
                return ImageBitmapConfig.Companion.m2030getGpu_sVssgQ();
            }
        }
        return ImageBitmapConfig.Companion.m2028getArgb8888_sVssgQ();
    }
}
