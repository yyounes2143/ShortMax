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
/* compiled from: Close.kt */
@Metadata
/* loaded from: classes.dex */
public final class CloseKt {
    @Nullable
    private static ImageVector _close;

    @NotNull
    public static final ImageVector getClose(@NotNull Icons.TwoTone twoTone) {
        Intrinsics.checkNotNullParameter(twoTone, "<this>");
        ImageVector imageVector = _close;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("TwoTone.Close", Dp.m4049constructorimpl(24.0f), Dp.m4049constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, (DefaultConstructorMarker) null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m1868getBlack0d7_KjU(), null);
        int m2146getButtKaPHkGw = StrokeCap.Companion.m2146getButtKaPHkGw();
        int m2156getBevelLxFBmk8 = StrokeJoin.Companion.m2156getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(19.0f, 6.41f);
        pathBuilder.lineTo(17.59f, 5.0f);
        pathBuilder.lineTo(12.0f, 10.59f);
        pathBuilder.lineTo(6.41f, 5.0f);
        pathBuilder.lineTo(5.0f, 6.41f);
        pathBuilder.lineTo(10.59f, 12.0f);
        pathBuilder.lineTo(5.0f, 17.59f);
        pathBuilder.lineTo(6.41f, 19.0f);
        pathBuilder.lineTo(12.0f, 13.41f);
        pathBuilder.lineTo(17.59f, 19.0f);
        pathBuilder.lineTo(19.0f, 17.59f);
        pathBuilder.lineTo(13.41f, 12.0f);
        pathBuilder.lineTo(19.0f, 6.41f);
        pathBuilder.close();
        ImageVector build = ImageVector.Builder.m2417addPathoIyEayM$default(builder, pathBuilder.getNodes(), defaultFillType, "", solidColor, 1.0f, null, 1.0f, 1.0f, m2146getButtKaPHkGw, m2156getBevelLxFBmk8, 1.0f, 0.0f, 0.0f, 0.0f, 14336, null).build();
        _close = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
