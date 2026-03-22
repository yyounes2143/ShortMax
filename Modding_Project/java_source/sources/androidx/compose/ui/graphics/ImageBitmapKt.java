package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImageBitmap.kt */
@Metadata
/* loaded from: classes.dex */
public final class ImageBitmapKt {
    @NotNull
    /* renamed from: ImageBitmap-x__-hDU  reason: not valid java name */
    public static final ImageBitmap m2032ImageBitmapx__hDU(int i10, int i11, int i12, boolean z10, @NotNull ColorSpace colorSpace) {
        Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
        return AndroidImageBitmap_androidKt.m1715ActualImageBitmapx__hDU(i10, i11, i12, z10, colorSpace);
    }

    /* renamed from: ImageBitmap-x__-hDU$default  reason: not valid java name */
    public static /* synthetic */ ImageBitmap m2033ImageBitmapx__hDU$default(int i10, int i11, int i12, boolean z10, ColorSpace colorSpace, int i13, Object obj) {
        if ((i13 & 4) != 0) {
            i12 = ImageBitmapConfig.Companion.m2028getArgb8888_sVssgQ();
        }
        if ((i13 & 8) != 0) {
            z10 = true;
        }
        if ((i13 & 16) != 0) {
            colorSpace = ColorSpaces.INSTANCE.getSrgb();
        }
        return m2032ImageBitmapx__hDU(i10, i11, i12, z10, colorSpace);
    }

    @NotNull
    public static final PixelMap toPixelMap(@NotNull ImageBitmap imageBitmap, int i10, int i11, int i12, int i13, @NotNull int[] buffer, int i14, int i15) {
        Intrinsics.checkNotNullParameter(imageBitmap, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        imageBitmap.readPixels(buffer, i10, i11, i12, i13, i14, i15);
        return new PixelMap(buffer, i12, i13, i14, i15);
    }

    public static /* synthetic */ PixelMap toPixelMap$default(ImageBitmap imageBitmap, int i10, int i11, int i12, int i13, int[] iArr, int i14, int i15, int i16, Object obj) {
        if ((i16 & 1) != 0) {
            i10 = 0;
        }
        if ((i16 & 2) != 0) {
            i11 = 0;
        }
        if ((i16 & 4) != 0) {
            i12 = imageBitmap.getWidth();
        }
        if ((i16 & 8) != 0) {
            i13 = imageBitmap.getHeight();
        }
        if ((i16 & 16) != 0) {
            iArr = new int[i12 * i13];
        }
        if ((i16 & 32) != 0) {
            i14 = 0;
        }
        if ((i16 & 64) != 0) {
            i15 = i12;
        }
        return toPixelMap(imageBitmap, i10, i11, i12, i13, iArr, i14, i15);
    }
}
