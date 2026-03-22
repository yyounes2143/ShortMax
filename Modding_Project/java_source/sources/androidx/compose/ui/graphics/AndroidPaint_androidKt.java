package androidx.compose.ui.graphics;

import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.os.Build;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidPaint.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidPaint_androidKt {

    /* compiled from: AndroidPaint.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[Paint.Style.values().length];
            iArr[Paint.Style.STROKE.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Paint.Cap.values().length];
            iArr2[Paint.Cap.BUTT.ordinal()] = 1;
            iArr2[Paint.Cap.ROUND.ordinal()] = 2;
            iArr2[Paint.Cap.SQUARE.ordinal()] = 3;
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[Paint.Join.values().length];
            iArr3[Paint.Join.MITER.ordinal()] = 1;
            iArr3[Paint.Join.BEVEL.ordinal()] = 2;
            iArr3[Paint.Join.ROUND.ordinal()] = 3;
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    @NotNull
    public static final Paint Paint() {
        return new AndroidPaint();
    }

    public static final float getNativeAlpha(@NotNull android.graphics.Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        return paint.getAlpha() / 255.0f;
    }

    public static final boolean getNativeAntiAlias(@NotNull android.graphics.Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        return paint.isAntiAlias();
    }

    public static final long getNativeColor(@NotNull android.graphics.Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        return ColorKt.Color(paint.getColor());
    }

    public static final int getNativeFilterQuality(@NotNull android.graphics.Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        if (!paint.isFilterBitmap()) {
            return FilterQuality.Companion.m1930getNonefv9h1I();
        }
        return FilterQuality.Companion.m1928getLowfv9h1I();
    }

    public static final int getNativeStrokeCap(@NotNull android.graphics.Paint paint) {
        int i10;
        Intrinsics.checkNotNullParameter(paint, "<this>");
        Paint.Cap strokeCap = paint.getStrokeCap();
        if (strokeCap == null) {
            i10 = -1;
        } else {
            i10 = WhenMappings.$EnumSwitchMapping$1[strokeCap.ordinal()];
        }
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return StrokeCap.Companion.m2146getButtKaPHkGw();
                }
                return StrokeCap.Companion.m2148getSquareKaPHkGw();
            }
            return StrokeCap.Companion.m2147getRoundKaPHkGw();
        }
        return StrokeCap.Companion.m2146getButtKaPHkGw();
    }

    public static final int getNativeStrokeJoin(@NotNull android.graphics.Paint paint) {
        int i10;
        Intrinsics.checkNotNullParameter(paint, "<this>");
        Paint.Join strokeJoin = paint.getStrokeJoin();
        if (strokeJoin == null) {
            i10 = -1;
        } else {
            i10 = WhenMappings.$EnumSwitchMapping$2[strokeJoin.ordinal()];
        }
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return StrokeJoin.Companion.m2157getMiterLxFBmk8();
                }
                return StrokeJoin.Companion.m2158getRoundLxFBmk8();
            }
            return StrokeJoin.Companion.m2156getBevelLxFBmk8();
        }
        return StrokeJoin.Companion.m2157getMiterLxFBmk8();
    }

    public static final float getNativeStrokeMiterLimit(@NotNull android.graphics.Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        return paint.getStrokeMiter();
    }

    public static final float getNativeStrokeWidth(@NotNull android.graphics.Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        return paint.getStrokeWidth();
    }

    public static final int getNativeStyle(@NotNull android.graphics.Paint paint) {
        int i10;
        Intrinsics.checkNotNullParameter(paint, "<this>");
        Paint.Style style = paint.getStyle();
        if (style == null) {
            i10 = -1;
        } else {
            i10 = WhenMappings.$EnumSwitchMapping$0[style.ordinal()];
        }
        if (i10 == 1) {
            return PaintingStyle.Companion.m2073getStrokeTiuSbCo();
        }
        return PaintingStyle.Companion.m2072getFillTiuSbCo();
    }

    @NotNull
    public static final android.graphics.Paint makeNativePaint() {
        return new android.graphics.Paint(7);
    }

    public static final void setNativeAlpha(@NotNull android.graphics.Paint paint, float f10) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        paint.setAlpha((int) Math.rint(f10 * 255.0f));
    }

    public static final void setNativeAntiAlias(@NotNull android.graphics.Paint paint, boolean z10) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        paint.setAntiAlias(z10);
    }

    /* renamed from: setNativeBlendMode-GB0RdKg  reason: not valid java name */
    public static final void m1731setNativeBlendModeGB0RdKg(@NotNull android.graphics.Paint setNativeBlendMode, int i10) {
        Intrinsics.checkNotNullParameter(setNativeBlendMode, "$this$setNativeBlendMode");
        if (Build.VERSION.SDK_INT >= 29) {
            WrapperVerificationHelperMethods.INSTANCE.m2196setBlendModeGB0RdKg(setNativeBlendMode, i10);
        } else {
            setNativeBlendMode.setXfermode(new PorterDuffXfermode(AndroidBlendMode_androidKt.m1699toPorterDuffModes9anfk8(i10)));
        }
    }

    /* renamed from: setNativeColor-4WTKRHQ  reason: not valid java name */
    public static final void m1732setNativeColor4WTKRHQ(@NotNull android.graphics.Paint setNativeColor, long j10) {
        Intrinsics.checkNotNullParameter(setNativeColor, "$this$setNativeColor");
        setNativeColor.setColor(ColorKt.m1897toArgb8_81llA(j10));
    }

    public static final void setNativeColorFilter(@NotNull android.graphics.Paint paint, @Nullable ColorFilter colorFilter) {
        android.graphics.ColorFilter colorFilter2;
        Intrinsics.checkNotNullParameter(paint, "<this>");
        if (colorFilter != null) {
            colorFilter2 = AndroidColorFilter_androidKt.asAndroidColorFilter(colorFilter);
        } else {
            colorFilter2 = null;
        }
        paint.setColorFilter(colorFilter2);
    }

    /* renamed from: setNativeFilterQuality-50PEsBU  reason: not valid java name */
    public static final void m1733setNativeFilterQuality50PEsBU(@NotNull android.graphics.Paint setNativeFilterQuality, int i10) {
        Intrinsics.checkNotNullParameter(setNativeFilterQuality, "$this$setNativeFilterQuality");
        setNativeFilterQuality.setFilterBitmap(!FilterQuality.m1923equalsimpl0(i10, FilterQuality.Companion.m1930getNonefv9h1I()));
    }

    public static final void setNativePathEffect(@NotNull android.graphics.Paint paint, @Nullable PathEffect pathEffect) {
        android.graphics.PathEffect pathEffect2;
        Intrinsics.checkNotNullParameter(paint, "<this>");
        AndroidPathEffect androidPathEffect = (AndroidPathEffect) pathEffect;
        if (androidPathEffect != null) {
            pathEffect2 = androidPathEffect.getNativePathEffect();
        } else {
            pathEffect2 = null;
        }
        paint.setPathEffect(pathEffect2);
    }

    public static final void setNativeShader(@NotNull android.graphics.Paint paint, @Nullable Shader shader) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        paint.setShader(shader);
    }

    /* renamed from: setNativeStrokeCap-CSYIeUk  reason: not valid java name */
    public static final void m1734setNativeStrokeCapCSYIeUk(@NotNull android.graphics.Paint setNativeStrokeCap, int i10) {
        Paint.Cap cap;
        Intrinsics.checkNotNullParameter(setNativeStrokeCap, "$this$setNativeStrokeCap");
        StrokeCap.Companion companion = StrokeCap.Companion;
        if (StrokeCap.m2142equalsimpl0(i10, companion.m2148getSquareKaPHkGw())) {
            cap = Paint.Cap.SQUARE;
        } else if (StrokeCap.m2142equalsimpl0(i10, companion.m2147getRoundKaPHkGw())) {
            cap = Paint.Cap.ROUND;
        } else if (StrokeCap.m2142equalsimpl0(i10, companion.m2146getButtKaPHkGw())) {
            cap = Paint.Cap.BUTT;
        } else {
            cap = Paint.Cap.BUTT;
        }
        setNativeStrokeCap.setStrokeCap(cap);
    }

    /* renamed from: setNativeStrokeJoin-kLtJ_vA  reason: not valid java name */
    public static final void m1735setNativeStrokeJoinkLtJ_vA(@NotNull android.graphics.Paint setNativeStrokeJoin, int i10) {
        Paint.Join join;
        Intrinsics.checkNotNullParameter(setNativeStrokeJoin, "$this$setNativeStrokeJoin");
        StrokeJoin.Companion companion = StrokeJoin.Companion;
        if (StrokeJoin.m2152equalsimpl0(i10, companion.m2157getMiterLxFBmk8())) {
            join = Paint.Join.MITER;
        } else if (StrokeJoin.m2152equalsimpl0(i10, companion.m2156getBevelLxFBmk8())) {
            join = Paint.Join.BEVEL;
        } else if (StrokeJoin.m2152equalsimpl0(i10, companion.m2158getRoundLxFBmk8())) {
            join = Paint.Join.ROUND;
        } else {
            join = Paint.Join.MITER;
        }
        setNativeStrokeJoin.setStrokeJoin(join);
    }

    public static final void setNativeStrokeMiterLimit(@NotNull android.graphics.Paint paint, float f10) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        paint.setStrokeMiter(f10);
    }

    public static final void setNativeStrokeWidth(@NotNull android.graphics.Paint paint, float f10) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        paint.setStrokeWidth(f10);
    }

    /* renamed from: setNativeStyle--5YerkU  reason: not valid java name */
    public static final void m1736setNativeStyle5YerkU(@NotNull android.graphics.Paint setNativeStyle, int i10) {
        Paint.Style style;
        Intrinsics.checkNotNullParameter(setNativeStyle, "$this$setNativeStyle");
        if (PaintingStyle.m2068equalsimpl0(i10, PaintingStyle.Companion.m2073getStrokeTiuSbCo())) {
            style = Paint.Style.STROKE;
        } else {
            style = Paint.Style.FILL;
        }
        setNativeStyle.setStyle(style);
    }
}
