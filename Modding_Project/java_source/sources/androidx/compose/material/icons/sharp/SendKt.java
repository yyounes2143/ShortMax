package androidx.compose.material.icons.sharp;

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
/* compiled from: Send.kt */
@Metadata
/* loaded from: classes.dex */
public final class SendKt {
    @Nullable
    private static ImageVector _send;

    @NotNull
    public static final ImageVector getSend(@NotNull Icons.Sharp sharp) {
        Intrinsics.checkNotNullParameter(sharp, "<this>");
        ImageVector imageVector = _send;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Sharp.Send", Dp.m4049constructorimpl(24.0f), Dp.m4049constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, (DefaultConstructorMarker) null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m1868getBlack0d7_KjU(), null);
        int m2146getButtKaPHkGw = StrokeCap.Companion.m2146getButtKaPHkGw();
        int m2156getBevelLxFBmk8 = StrokeJoin.Companion.m2156getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(2.01f, 21.0f);
        pathBuilder.lineTo(23.0f, 12.0f);
        pathBuilder.lineTo(2.01f, 3.0f);
        pathBuilder.lineTo(2.0f, 10.0f);
        pathBuilder.lineToRelative(15.0f, 2.0f);
        pathBuilder.lineToRelative(-15.0f, 2.0f);
        pathBuilder.lineToRelative(0.01f, 7.0f);
        pathBuilder.close();
        ImageVector build = ImageVector.Builder.m2417addPathoIyEayM$default(builder, pathBuilder.getNodes(), defaultFillType, "", solidColor, 1.0f, null, 1.0f, 1.0f, m2146getButtKaPHkGw, m2156getBevelLxFBmk8, 1.0f, 0.0f, 0.0f, 0.0f, 14336, null).build();
        _send = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
