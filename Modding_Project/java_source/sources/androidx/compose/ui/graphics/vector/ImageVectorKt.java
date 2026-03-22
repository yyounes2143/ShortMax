package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.vector.ImageVector;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageVector.kt */
@Metadata
/* loaded from: classes.dex */
public final class ImageVectorKt {
    @NotNull
    public static final ImageVector.Builder group(@NotNull ImageVector.Builder builder, @NotNull String name, float f10, float f11, float f12, float f13, float f14, float f15, float f16, @NotNull List<? extends PathNode> clipPathData, @NotNull Function1<? super ImageVector.Builder, Unit> block) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(clipPathData, "clipPathData");
        Intrinsics.checkNotNullParameter(block, "block");
        builder.addGroup(name, f10, f11, f12, f13, f14, f15, f16, clipPathData);
        block.invoke(builder);
        builder.clearGroup();
        return builder;
    }

    public static /* synthetic */ ImageVector.Builder group$default(ImageVector.Builder builder, String str, float f10, float f11, float f12, float f13, float f14, float f15, float f16, List list, Function1 block, int i10, Object obj) {
        String name;
        float f17;
        float f18;
        float f19;
        float f20;
        float f21;
        float f22;
        List<PathNode> clipPathData;
        if ((i10 & 1) != 0) {
            name = "";
        } else {
            name = str;
        }
        if ((i10 & 2) != 0) {
            f17 = 0.0f;
        } else {
            f17 = f10;
        }
        if ((i10 & 4) != 0) {
            f18 = 0.0f;
        } else {
            f18 = f11;
        }
        if ((i10 & 8) != 0) {
            f19 = 0.0f;
        } else {
            f19 = f12;
        }
        float f23 = 1.0f;
        if ((i10 & 16) != 0) {
            f20 = 1.0f;
        } else {
            f20 = f13;
        }
        if ((i10 & 32) == 0) {
            f23 = f14;
        }
        if ((i10 & 64) != 0) {
            f21 = 0.0f;
        } else {
            f21 = f15;
        }
        if ((i10 & 128) != 0) {
            f22 = 0.0f;
        } else {
            f22 = f16;
        }
        if ((i10 & 256) != 0) {
            clipPathData = VectorKt.getEmptyPath();
        } else {
            clipPathData = list;
        }
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(clipPathData, "clipPathData");
        Intrinsics.checkNotNullParameter(block, "block");
        builder.addGroup(name, f17, f18, f19, f20, f23, f21, f22, clipPathData);
        block.invoke(builder);
        builder.clearGroup();
        return builder;
    }

    @NotNull
    /* renamed from: path-R_LF-3I  reason: not valid java name */
    public static final ImageVector.Builder m2419pathR_LF3I(@NotNull ImageVector.Builder path, @NotNull String name, @Nullable Brush brush, float f10, @Nullable Brush brush2, float f11, float f12, int i10, int i11, float f13, int i12, @NotNull Function1<? super PathBuilder, Unit> pathBuilder) {
        Intrinsics.checkNotNullParameter(path, "$this$path");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(pathBuilder, "pathBuilder");
        PathBuilder pathBuilder2 = new PathBuilder();
        pathBuilder.invoke(pathBuilder2);
        return ImageVector.Builder.m2417addPathoIyEayM$default(path, pathBuilder2.getNodes(), i12, name, brush, f10, brush2, f11, f12, i10, i11, f13, 0.0f, 0.0f, 0.0f, 14336, null);
    }

    /* renamed from: path-R_LF-3I$default  reason: not valid java name */
    public static /* synthetic */ ImageVector.Builder m2420pathR_LF3I$default(ImageVector.Builder path, String str, Brush brush, float f10, Brush brush2, float f11, float f12, int i10, int i11, float f13, int i12, Function1 pathBuilder, int i13, Object obj) {
        String name;
        Brush brush3;
        float f14;
        Brush brush4;
        float f15;
        float f16;
        int i14;
        int i15;
        float f17;
        int i16;
        if ((i13 & 1) != 0) {
            name = "";
        } else {
            name = str;
        }
        if ((i13 & 2) != 0) {
            brush3 = null;
        } else {
            brush3 = brush;
        }
        if ((i13 & 4) != 0) {
            f14 = 1.0f;
        } else {
            f14 = f10;
        }
        if ((i13 & 8) != 0) {
            brush4 = null;
        } else {
            brush4 = brush2;
        }
        if ((i13 & 16) != 0) {
            f15 = 1.0f;
        } else {
            f15 = f11;
        }
        if ((i13 & 32) != 0) {
            f16 = 0.0f;
        } else {
            f16 = f12;
        }
        if ((i13 & 64) != 0) {
            i14 = VectorKt.getDefaultStrokeLineCap();
        } else {
            i14 = i10;
        }
        if ((i13 & 128) != 0) {
            i15 = VectorKt.getDefaultStrokeLineJoin();
        } else {
            i15 = i11;
        }
        if ((i13 & 256) != 0) {
            f17 = 4.0f;
        } else {
            f17 = f13;
        }
        if ((i13 & 512) != 0) {
            i16 = VectorKt.getDefaultFillType();
        } else {
            i16 = i12;
        }
        Intrinsics.checkNotNullParameter(path, "$this$path");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(pathBuilder, "pathBuilder");
        PathBuilder pathBuilder2 = new PathBuilder();
        pathBuilder.invoke(pathBuilder2);
        return ImageVector.Builder.m2417addPathoIyEayM$default(path, pathBuilder2.getNodes(), i16, name, brush3, f14, brush4, f15, f16, i14, i15, f17, 0.0f, 0.0f, 0.0f, 14336, null);
    }
}
