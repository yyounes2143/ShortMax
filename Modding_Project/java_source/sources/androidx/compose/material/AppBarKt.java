package androidx.compose.material;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Pair;
import ms.k;
import org.jetbrains.annotations.NotNull;
/* compiled from: AppBar.kt */
@Metadata
/* loaded from: classes.dex */
public final class AppBarKt {
    private static final float AppBarHeight = Dp.m4049constructorimpl(56);
    private static final float AppBarHorizontalPadding;
    private static final float BottomAppBarCutoutOffset;
    private static final float BottomAppBarRoundedEdgeRadius;
    @NotNull
    private static final Modifier TitleIconModifier;
    @NotNull
    private static final Modifier TitleInsetWithoutIcon;

    static {
        float f10 = 4;
        float m4049constructorimpl = Dp.m4049constructorimpl(f10);
        AppBarHorizontalPadding = m4049constructorimpl;
        Modifier.Companion companion = Modifier.Companion;
        TitleInsetWithoutIcon = SizeKt.m493width3ABfNKs(companion, Dp.m4049constructorimpl(Dp.m4049constructorimpl(16) - m4049constructorimpl));
        TitleIconModifier = SizeKt.m493width3ABfNKs(SizeKt.fillMaxHeight$default(companion, 0.0f, 1, null), Dp.m4049constructorimpl(Dp.m4049constructorimpl(72) - m4049constructorimpl));
        BottomAppBarCutoutOffset = Dp.m4049constructorimpl(8);
        BottomAppBarRoundedEdgeRadius = Dp.m4049constructorimpl(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: AppBar-celAv9A  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m911AppBarcelAv9A(final long r24, final long r26, final float r28, final androidx.compose.foundation.layout.PaddingValues r29, final androidx.compose.ui.graphics.Shape r30, androidx.compose.ui.Modifier r31, final at.n<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r32, androidx.compose.runtime.Composer r33, final int r34, final int r35) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.AppBarKt.m911AppBarcelAv9A(long, long, float, androidx.compose.foundation.layout.PaddingValues, androidx.compose.ui.graphics.Shape, androidx.compose.ui.Modifier, at.n, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0183 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:125:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0125  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: BottomAppBar-Y1yfwus  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m912BottomAppBarY1yfwus(@org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r24, long r25, long r27, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r29, float r30, @org.jetbrains.annotations.Nullable androidx.compose.foundation.layout.PaddingValues r31, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r32, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r33, final int r34, final int r35) {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.AppBarKt.m912BottomAppBarY1yfwus(androidx.compose.ui.Modifier, long, long, androidx.compose.ui.graphics.Shape, float, androidx.compose.foundation.layout.PaddingValues, at.n, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0139  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: TopAppBar-HsRjFd4  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m913TopAppBarHsRjFd4(@org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r22, long r23, long r25, float r27, @org.jetbrains.annotations.Nullable androidx.compose.foundation.layout.PaddingValues r28, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r29, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r30, final int r31, final int r32) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.AppBarKt.m913TopAppBarHsRjFd4(androidx.compose.ui.Modifier, long, long, float, androidx.compose.foundation.layout.PaddingValues, at.n, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:121:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0123  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /* renamed from: TopAppBar-xWeB9-s  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m914TopAppBarxWeB9s(@org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r25, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r26, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r27, @org.jetbrains.annotations.Nullable at.n<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r28, long r29, long r31, float r33, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r34, final int r35, final int r36) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.AppBarKt.m914TopAppBarxWeB9s(kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, at.n, long, long, float, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final float calculateCutoutCircleYIntercept(float f10, float f11) {
        return -((float) Math.sqrt((f10 * f10) - (f11 * f11)));
    }

    @NotNull
    public static final Pair<Float, Float> calculateRoundedEdgeIntercept(float f10, float f11, float f12) {
        Float valueOf;
        Float valueOf2;
        Pair a10;
        Float valueOf3;
        Float valueOf4;
        float f13 = f11 * f11;
        float f14 = f12 * f12;
        float f15 = (f10 * f10) + f13;
        float f16 = f13 * f14 * (f15 - f14);
        float f17 = f10 * f14;
        double d10 = f16;
        float sqrt = (f17 - ((float) Math.sqrt(d10))) / f15;
        float sqrt2 = (f17 + ((float) Math.sqrt(d10))) / f15;
        float sqrt3 = (float) Math.sqrt(f14 - (sqrt * sqrt));
        float sqrt4 = (float) Math.sqrt(f14 - (sqrt2 * sqrt2));
        if (f11 > 0.0f) {
            if (sqrt3 > sqrt4) {
                valueOf3 = Float.valueOf(sqrt);
                valueOf4 = Float.valueOf(sqrt3);
            } else {
                valueOf3 = Float.valueOf(sqrt2);
                valueOf4 = Float.valueOf(sqrt4);
            }
            a10 = k.a(valueOf3, valueOf4);
        } else {
            if (sqrt3 < sqrt4) {
                valueOf = Float.valueOf(sqrt);
                valueOf2 = Float.valueOf(sqrt3);
            } else {
                valueOf = Float.valueOf(sqrt2);
                valueOf2 = Float.valueOf(sqrt4);
            }
            a10 = k.a(valueOf, valueOf2);
        }
        float floatValue = ((Number) a10.b()).floatValue();
        float floatValue2 = ((Number) a10.d()).floatValue();
        if (floatValue < f10) {
            floatValue2 = -floatValue2;
        }
        return k.a(Float.valueOf(floatValue), Float.valueOf(floatValue2));
    }

    private static final float square(float f10) {
        return f10 * f10;
    }
}
