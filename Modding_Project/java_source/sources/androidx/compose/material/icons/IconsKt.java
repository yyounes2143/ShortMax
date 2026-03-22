package androidx.compose.material.icons;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Icons.kt */
@Metadata
/* loaded from: classes.dex */
public final class IconsKt {
    public static final float MaterialIconDimension = 24.0f;

    @NotNull
    public static final ImageVector materialIcon(@NotNull String name, @NotNull Function1<? super ImageVector.Builder, ImageVector.Builder> block) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(block, "block");
        return block.invoke(new ImageVector.Builder(name, Dp.m4049constructorimpl(24.0f), Dp.m4049constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, (DefaultConstructorMarker) null)).build();
    }

    @NotNull
    /* renamed from: materialPath-YwgOQQI  reason: not valid java name */
    public static final ImageVector.Builder m1271materialPathYwgOQQI(@NotNull ImageVector.Builder materialPath, float f10, float f11, int i10, @NotNull Function1<? super PathBuilder, Unit> pathBuilder) {
        Intrinsics.checkNotNullParameter(materialPath, "$this$materialPath");
        Intrinsics.checkNotNullParameter(pathBuilder, "pathBuilder");
        SolidColor solidColor = new SolidColor(Color.Companion.m1868getBlack0d7_KjU(), null);
        int m2146getButtKaPHkGw = StrokeCap.Companion.m2146getButtKaPHkGw();
        int m2156getBevelLxFBmk8 = StrokeJoin.Companion.m2156getBevelLxFBmk8();
        PathBuilder pathBuilder2 = new PathBuilder();
        pathBuilder.invoke(pathBuilder2);
        return ImageVector.Builder.m2417addPathoIyEayM$default(materialPath, pathBuilder2.getNodes(), i10, "", solidColor, f10, null, f11, 1.0f, m2146getButtKaPHkGw, m2156getBevelLxFBmk8, 1.0f, 0.0f, 0.0f, 0.0f, 14336, null);
    }

    /* renamed from: materialPath-YwgOQQI$default  reason: not valid java name */
    public static /* synthetic */ ImageVector.Builder m1272materialPathYwgOQQI$default(ImageVector.Builder materialPath, float f10, float f11, int i10, Function1 pathBuilder, int i11, Object obj) {
        float f12;
        float f13;
        int i12;
        if ((i11 & 1) != 0) {
            f12 = 1.0f;
        } else {
            f12 = f10;
        }
        if ((i11 & 2) != 0) {
            f13 = 1.0f;
        } else {
            f13 = f11;
        }
        if ((i11 & 4) != 0) {
            i12 = VectorKt.getDefaultFillType();
        } else {
            i12 = i10;
        }
        Intrinsics.checkNotNullParameter(materialPath, "$this$materialPath");
        Intrinsics.checkNotNullParameter(pathBuilder, "pathBuilder");
        SolidColor solidColor = new SolidColor(Color.Companion.m1868getBlack0d7_KjU(), null);
        int m2146getButtKaPHkGw = StrokeCap.Companion.m2146getButtKaPHkGw();
        int m2156getBevelLxFBmk8 = StrokeJoin.Companion.m2156getBevelLxFBmk8();
        PathBuilder pathBuilder2 = new PathBuilder();
        pathBuilder.invoke(pathBuilder2);
        return ImageVector.Builder.m2417addPathoIyEayM$default(materialPath, pathBuilder2.getNodes(), i12, "", solidColor, f12, null, f13, 1.0f, m2146getButtKaPHkGw, m2156getBevelLxFBmk8, 1.0f, 0.0f, 0.0f, 0.0f, 14336, null);
    }

    public static /* synthetic */ void getMaterialIconDimension$annotations() {
    }
}
