package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.util.DisplayMetrics;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidImageBitmap.android.kt */
@RequiresApi(26)
@Metadata
/* loaded from: classes.dex */
public final class Api26Bitmap {
    @NotNull
    public static final Api26Bitmap INSTANCE = new Api26Bitmap();

    private Api26Bitmap() {
    }

    @DoNotInline
    @NotNull
    public static final ColorSpace composeColorSpace$ui_graphics_release(@NotNull Bitmap bitmap) {
        android.graphics.ColorSpace colorSpace;
        ColorSpace composeColorSpace$ui_graphics_release;
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        colorSpace = bitmap.getColorSpace();
        return (colorSpace == null || (composeColorSpace$ui_graphics_release = composeColorSpace$ui_graphics_release(colorSpace)) == null) ? ColorSpaces.INSTANCE.getSrgb() : composeColorSpace$ui_graphics_release;
    }

    @DoNotInline
    @NotNull
    /* renamed from: createBitmap-x__-hDU$ui_graphics_release */
    public static final Bitmap m1751createBitmapx__hDU$ui_graphics_release(int i10, int i11, int i12, boolean z10, @NotNull ColorSpace colorSpace) {
        Bitmap createBitmap;
        Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
        createBitmap = Bitmap.createBitmap((DisplayMetrics) null, i10, i11, AndroidImageBitmap_androidKt.m1716toBitmapConfig1JJdX4A(i12), z10, toFrameworkColorSpace$ui_graphics_release(colorSpace));
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(\n          …orkColorSpace()\n        )");
        return createBitmap;
    }

    @DoNotInline
    @NotNull
    public static final android.graphics.ColorSpace toFrameworkColorSpace$ui_graphics_release(@NotNull ColorSpace colorSpace) {
        ColorSpace.Named named;
        android.graphics.ColorSpace colorSpace2;
        Intrinsics.checkNotNullParameter(colorSpace, "<this>");
        ColorSpaces colorSpaces = ColorSpaces.INSTANCE;
        if (Intrinsics.areEqual(colorSpace, colorSpaces.getSrgb())) {
            named = ColorSpace.Named.SRGB;
        } else {
            named = Intrinsics.areEqual(colorSpace, colorSpaces.getAces()) ? ColorSpace.Named.ACES : Intrinsics.areEqual(colorSpace, colorSpaces.getAcescg()) ? ColorSpace.Named.ACESCG : Intrinsics.areEqual(colorSpace, colorSpaces.getAdobeRgb()) ? ColorSpace.Named.ADOBE_RGB : Intrinsics.areEqual(colorSpace, colorSpaces.getBt2020()) ? ColorSpace.Named.BT2020 : Intrinsics.areEqual(colorSpace, colorSpaces.getBt709()) ? ColorSpace.Named.BT709 : Intrinsics.areEqual(colorSpace, colorSpaces.getCieLab()) ? ColorSpace.Named.CIE_LAB : Intrinsics.areEqual(colorSpace, colorSpaces.getCieXyz()) ? ColorSpace.Named.CIE_XYZ : Intrinsics.areEqual(colorSpace, colorSpaces.getDciP3()) ? ColorSpace.Named.DCI_P3 : Intrinsics.areEqual(colorSpace, colorSpaces.getDisplayP3()) ? ColorSpace.Named.DISPLAY_P3 : Intrinsics.areEqual(colorSpace, colorSpaces.getExtendedSrgb()) ? ColorSpace.Named.EXTENDED_SRGB : Intrinsics.areEqual(colorSpace, colorSpaces.getLinearExtendedSrgb()) ? ColorSpace.Named.LINEAR_EXTENDED_SRGB : Intrinsics.areEqual(colorSpace, colorSpaces.getLinearSrgb()) ? ColorSpace.Named.LINEAR_SRGB : Intrinsics.areEqual(colorSpace, colorSpaces.getNtsc1953()) ? ColorSpace.Named.NTSC_1953 : Intrinsics.areEqual(colorSpace, colorSpaces.getProPhotoRgb()) ? ColorSpace.Named.PRO_PHOTO_RGB : Intrinsics.areEqual(colorSpace, colorSpaces.getSmpteC()) ? ColorSpace.Named.SMPTE_C : ColorSpace.Named.SRGB;
        }
        colorSpace2 = android.graphics.ColorSpace.get(named);
        Intrinsics.checkNotNullExpressionValue(colorSpace2, "get(frameworkNamedSpace)");
        return colorSpace2;
    }

    @DoNotInline
    @NotNull
    public static final androidx.compose.ui.graphics.colorspace.ColorSpace composeColorSpace$ui_graphics_release(@NotNull android.graphics.ColorSpace colorSpace) {
        ColorSpace.Named named;
        android.graphics.ColorSpace colorSpace2;
        ColorSpace.Named named2;
        android.graphics.ColorSpace colorSpace3;
        ColorSpace.Named named3;
        android.graphics.ColorSpace colorSpace4;
        ColorSpace.Named named4;
        android.graphics.ColorSpace colorSpace5;
        ColorSpace.Named named5;
        android.graphics.ColorSpace colorSpace6;
        ColorSpace.Named named6;
        android.graphics.ColorSpace colorSpace7;
        ColorSpace.Named named7;
        android.graphics.ColorSpace colorSpace8;
        ColorSpace.Named named8;
        android.graphics.ColorSpace colorSpace9;
        ColorSpace.Named named9;
        android.graphics.ColorSpace colorSpace10;
        ColorSpace.Named named10;
        android.graphics.ColorSpace colorSpace11;
        ColorSpace.Named named11;
        android.graphics.ColorSpace colorSpace12;
        ColorSpace.Named named12;
        android.graphics.ColorSpace colorSpace13;
        ColorSpace.Named named13;
        android.graphics.ColorSpace colorSpace14;
        ColorSpace.Named named14;
        android.graphics.ColorSpace colorSpace15;
        ColorSpace.Named named15;
        android.graphics.ColorSpace colorSpace16;
        ColorSpace.Named named16;
        android.graphics.ColorSpace colorSpace17;
        Intrinsics.checkNotNullParameter(colorSpace, "<this>");
        named = ColorSpace.Named.SRGB;
        colorSpace2 = android.graphics.ColorSpace.get(named);
        if (!Intrinsics.areEqual(colorSpace, colorSpace2)) {
            named2 = ColorSpace.Named.ACES;
            colorSpace3 = android.graphics.ColorSpace.get(named2);
            if (!Intrinsics.areEqual(colorSpace, colorSpace3)) {
                named3 = ColorSpace.Named.ACESCG;
                colorSpace4 = android.graphics.ColorSpace.get(named3);
                if (!Intrinsics.areEqual(colorSpace, colorSpace4)) {
                    named4 = ColorSpace.Named.ADOBE_RGB;
                    colorSpace5 = android.graphics.ColorSpace.get(named4);
                    if (!Intrinsics.areEqual(colorSpace, colorSpace5)) {
                        named5 = ColorSpace.Named.BT2020;
                        colorSpace6 = android.graphics.ColorSpace.get(named5);
                        if (!Intrinsics.areEqual(colorSpace, colorSpace6)) {
                            named6 = ColorSpace.Named.BT709;
                            colorSpace7 = android.graphics.ColorSpace.get(named6);
                            if (!Intrinsics.areEqual(colorSpace, colorSpace7)) {
                                named7 = ColorSpace.Named.CIE_LAB;
                                colorSpace8 = android.graphics.ColorSpace.get(named7);
                                if (!Intrinsics.areEqual(colorSpace, colorSpace8)) {
                                    named8 = ColorSpace.Named.CIE_XYZ;
                                    colorSpace9 = android.graphics.ColorSpace.get(named8);
                                    if (!Intrinsics.areEqual(colorSpace, colorSpace9)) {
                                        named9 = ColorSpace.Named.DCI_P3;
                                        colorSpace10 = android.graphics.ColorSpace.get(named9);
                                        if (!Intrinsics.areEqual(colorSpace, colorSpace10)) {
                                            named10 = ColorSpace.Named.DISPLAY_P3;
                                            colorSpace11 = android.graphics.ColorSpace.get(named10);
                                            if (!Intrinsics.areEqual(colorSpace, colorSpace11)) {
                                                named11 = ColorSpace.Named.EXTENDED_SRGB;
                                                colorSpace12 = android.graphics.ColorSpace.get(named11);
                                                if (!Intrinsics.areEqual(colorSpace, colorSpace12)) {
                                                    named12 = ColorSpace.Named.LINEAR_EXTENDED_SRGB;
                                                    colorSpace13 = android.graphics.ColorSpace.get(named12);
                                                    if (!Intrinsics.areEqual(colorSpace, colorSpace13)) {
                                                        named13 = ColorSpace.Named.LINEAR_SRGB;
                                                        colorSpace14 = android.graphics.ColorSpace.get(named13);
                                                        if (!Intrinsics.areEqual(colorSpace, colorSpace14)) {
                                                            named14 = ColorSpace.Named.NTSC_1953;
                                                            colorSpace15 = android.graphics.ColorSpace.get(named14);
                                                            if (!Intrinsics.areEqual(colorSpace, colorSpace15)) {
                                                                named15 = ColorSpace.Named.PRO_PHOTO_RGB;
                                                                colorSpace16 = android.graphics.ColorSpace.get(named15);
                                                                if (!Intrinsics.areEqual(colorSpace, colorSpace16)) {
                                                                    named16 = ColorSpace.Named.SMPTE_C;
                                                                    colorSpace17 = android.graphics.ColorSpace.get(named16);
                                                                    if (Intrinsics.areEqual(colorSpace, colorSpace17)) {
                                                                        return ColorSpaces.INSTANCE.getSmpteC();
                                                                    }
                                                                    return ColorSpaces.INSTANCE.getSrgb();
                                                                }
                                                                return ColorSpaces.INSTANCE.getProPhotoRgb();
                                                            }
                                                            return ColorSpaces.INSTANCE.getNtsc1953();
                                                        }
                                                        return ColorSpaces.INSTANCE.getLinearSrgb();
                                                    }
                                                    return ColorSpaces.INSTANCE.getLinearExtendedSrgb();
                                                }
                                                return ColorSpaces.INSTANCE.getExtendedSrgb();
                                            }
                                            return ColorSpaces.INSTANCE.getDisplayP3();
                                        }
                                        return ColorSpaces.INSTANCE.getDciP3();
                                    }
                                    return ColorSpaces.INSTANCE.getCieXyz();
                                }
                                return ColorSpaces.INSTANCE.getCieLab();
                            }
                            return ColorSpaces.INSTANCE.getBt709();
                        }
                        return ColorSpaces.INSTANCE.getBt2020();
                    }
                    return ColorSpaces.INSTANCE.getAdobeRgb();
                }
                return ColorSpaces.INSTANCE.getAcescg();
            }
            return ColorSpaces.INSTANCE.getAces();
        }
        return ColorSpaces.INSTANCE.getSrgb();
    }
}
