package androidx.compose.material.icons.twotone;

import androidx.compose.material.icons.Icons;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AccountBox.kt */
@Metadata
/* loaded from: classes.dex */
public final class AccountBoxKt {
    @Nullable
    private static ImageVector _accountBox;

    @NotNull
    public static final ImageVector getAccountBox(@NotNull Icons.TwoTone twoTone) {
        Intrinsics.checkNotNullParameter(twoTone, "<this>");
        ImageVector imageVector = _accountBox;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("TwoTone.AccountBox", Dp.m4049constructorimpl(24.0f), Dp.m4049constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, (DefaultConstructorMarker) null);
        int defaultFillType = VectorKt.getDefaultFillType();
        Color.Companion companion = Color.Companion;
        SolidColor solidColor = new SolidColor(companion.m1868getBlack0d7_KjU(), null);
        StrokeCap.Companion companion2 = StrokeCap.Companion;
        int m2146getButtKaPHkGw = companion2.m2146getButtKaPHkGw();
        StrokeJoin.Companion companion3 = StrokeJoin.Companion;
        int m2156getBevelLxFBmk8 = companion3.m2156getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(5.0f, 19.0f);
        pathBuilder.horizontalLineToRelative(14.0f);
        pathBuilder.lineTo(19.0f, 5.0f);
        pathBuilder.lineTo(5.0f, 5.0f);
        pathBuilder.verticalLineToRelative(14.0f);
        pathBuilder.close();
        pathBuilder.moveTo(12.0f, 6.0f);
        pathBuilder.curveToRelative(1.65f, 0.0f, 3.0f, 1.35f, 3.0f, 3.0f);
        pathBuilder.reflectiveCurveToRelative(-1.35f, 3.0f, -3.0f, 3.0f);
        pathBuilder.reflectiveCurveToRelative(-3.0f, -1.35f, -3.0f, -3.0f);
        pathBuilder.reflectiveCurveToRelative(1.35f, -3.0f, 3.0f, -3.0f);
        pathBuilder.close();
        pathBuilder.moveTo(6.0f, 16.47f);
        pathBuilder.curveToRelative(0.0f, -2.5f, 3.97f, -3.58f, 6.0f, -3.58f);
        pathBuilder.reflectiveCurveToRelative(6.0f, 1.08f, 6.0f, 3.58f);
        pathBuilder.lineTo(18.0f, 18.0f);
        pathBuilder.lineTo(6.0f, 18.0f);
        pathBuilder.verticalLineToRelative(-1.53f);
        pathBuilder.close();
        ImageVector.Builder.m2417addPathoIyEayM$default(builder, pathBuilder.getNodes(), defaultFillType, "", solidColor, 0.3f, null, 0.3f, 1.0f, m2146getButtKaPHkGw, m2156getBevelLxFBmk8, 1.0f, 0.0f, 0.0f, 0.0f, 14336, null);
        int defaultFillType2 = VectorKt.getDefaultFillType();
        SolidColor solidColor2 = new SolidColor(companion.m1868getBlack0d7_KjU(), null);
        int m2146getButtKaPHkGw2 = companion2.m2146getButtKaPHkGw();
        int m2156getBevelLxFBmk82 = companion3.m2156getBevelLxFBmk8();
        PathBuilder pathBuilder2 = new PathBuilder();
        pathBuilder2.moveTo(12.0f, 12.0f);
        pathBuilder2.curveToRelative(1.65f, 0.0f, 3.0f, -1.35f, 3.0f, -3.0f);
        pathBuilder2.reflectiveCurveToRelative(-1.35f, -3.0f, -3.0f, -3.0f);
        pathBuilder2.reflectiveCurveToRelative(-3.0f, 1.35f, -3.0f, 3.0f);
        pathBuilder2.reflectiveCurveToRelative(1.35f, 3.0f, 3.0f, 3.0f);
        pathBuilder2.close();
        pathBuilder2.moveTo(12.0f, 8.0f);
        pathBuilder2.curveToRelative(0.55f, 0.0f, 1.0f, 0.45f, 1.0f, 1.0f);
        pathBuilder2.reflectiveCurveToRelative(-0.45f, 1.0f, -1.0f, 1.0f);
        pathBuilder2.reflectiveCurveToRelative(-1.0f, -0.45f, -1.0f, -1.0f);
        pathBuilder2.reflectiveCurveToRelative(0.45f, -1.0f, 1.0f, -1.0f);
        pathBuilder2.close();
        pathBuilder2.moveTo(19.0f, 3.0f);
        pathBuilder2.lineTo(5.0f, 3.0f);
        pathBuilder2.curveToRelative(-1.11f, 0.0f, -2.0f, 0.9f, -2.0f, 2.0f);
        pathBuilder2.verticalLineToRelative(14.0f);
        pathBuilder2.curveToRelative(0.0f, 1.1f, 0.89f, 2.0f, 2.0f, 2.0f);
        pathBuilder2.horizontalLineToRelative(14.0f);
        pathBuilder2.curveToRelative(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
        pathBuilder2.lineTo(21.0f, 5.0f);
        pathBuilder2.curveToRelative(0.0f, -1.1f, -0.9f, -2.0f, -2.0f, -2.0f);
        pathBuilder2.close();
        pathBuilder2.moveTo(19.0f, 19.0f);
        pathBuilder2.lineTo(5.0f, 19.0f);
        pathBuilder2.lineTo(5.0f, 5.0f);
        pathBuilder2.horizontalLineToRelative(14.0f);
        pathBuilder2.verticalLineToRelative(14.0f);
        pathBuilder2.close();
        pathBuilder2.moveTo(18.0f, 16.47f);
        pathBuilder2.curveToRelative(0.0f, -2.5f, -3.97f, -3.58f, -6.0f, -3.58f);
        pathBuilder2.reflectiveCurveToRelative(-6.0f, 1.08f, -6.0f, 3.58f);
        pathBuilder2.lineTo(6.0f, 18.0f);
        pathBuilder2.horizontalLineToRelative(12.0f);
        pathBuilder2.verticalLineToRelative(-1.53f);
        pathBuilder2.close();
        pathBuilder2.moveTo(8.31f, 16.0f);
        pathBuilder2.curveToRelative(0.69f, -0.56f, 2.38f, -1.12f, 3.69f, -1.12f);
        pathBuilder2.reflectiveCurveToRelative(3.01f, 0.56f, 3.69f, 1.12f);
        pathBuilder2.lineTo(8.31f, 16.0f);
        pathBuilder2.close();
        ImageVector build = ImageVector.Builder.m2417addPathoIyEayM$default(builder, pathBuilder2.getNodes(), defaultFillType2, "", solidColor2, 1.0f, null, 1.0f, 1.0f, m2146getButtKaPHkGw2, m2156getBevelLxFBmk82, 1.0f, 0.0f, 0.0f, 0.0f, 14336, null).build();
        _accountBox = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
