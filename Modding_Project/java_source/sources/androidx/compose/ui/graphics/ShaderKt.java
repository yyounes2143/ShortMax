package androidx.compose.ui.graphics;

import android.graphics.Shader;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Shader.kt */
@Metadata
/* loaded from: classes.dex */
public final class ShaderKt {
    @NotNull
    /* renamed from: ImageShader-F49vj9s  reason: not valid java name */
    public static final Shader m2114ImageShaderF49vj9s(@NotNull ImageBitmap image, int i10, int i11) {
        Intrinsics.checkNotNullParameter(image, "image");
        return AndroidShader_androidKt.m1744ActualImageShaderF49vj9s(image, i10, i11);
    }

    /* renamed from: ImageShader-F49vj9s$default  reason: not valid java name */
    public static /* synthetic */ Shader m2115ImageShaderF49vj9s$default(ImageBitmap imageBitmap, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = TileMode.Companion.m2166getClamp3opZhB0();
        }
        if ((i12 & 4) != 0) {
            i11 = TileMode.Companion.m2166getClamp3opZhB0();
        }
        return m2114ImageShaderF49vj9s(imageBitmap, i10, i11);
    }

    @NotNull
    /* renamed from: LinearGradientShader-VjE6UOU  reason: not valid java name */
    public static final Shader m2116LinearGradientShaderVjE6UOU(long j10, long j11, @NotNull List<Color> colors, @Nullable List<Float> list, int i10) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        return AndroidShader_androidKt.m1745ActualLinearGradientShaderVjE6UOU(j10, j11, colors, list, i10);
    }

    /* renamed from: LinearGradientShader-VjE6UOU$default  reason: not valid java name */
    public static /* synthetic */ Shader m2117LinearGradientShaderVjE6UOU$default(long j10, long j11, List list, List list2, int i10, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            list2 = null;
        }
        List list3 = list2;
        if ((i11 & 16) != 0) {
            i10 = TileMode.Companion.m2166getClamp3opZhB0();
        }
        return m2116LinearGradientShaderVjE6UOU(j10, j11, list, list3, i10);
    }

    @NotNull
    /* renamed from: RadialGradientShader-8uybcMk  reason: not valid java name */
    public static final Shader m2118RadialGradientShader8uybcMk(long j10, float f10, @NotNull List<Color> colors, @Nullable List<Float> list, int i10) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        return AndroidShader_androidKt.m1746ActualRadialGradientShader8uybcMk(j10, f10, colors, list, i10);
    }

    /* renamed from: RadialGradientShader-8uybcMk$default  reason: not valid java name */
    public static /* synthetic */ Shader m2119RadialGradientShader8uybcMk$default(long j10, float f10, List list, List list2, int i10, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            list2 = null;
        }
        List list3 = list2;
        if ((i11 & 16) != 0) {
            i10 = TileMode.Companion.m2166getClamp3opZhB0();
        }
        return m2118RadialGradientShader8uybcMk(j10, f10, list, list3, i10);
    }

    @NotNull
    /* renamed from: SweepGradientShader-9KIMszo  reason: not valid java name */
    public static final Shader m2120SweepGradientShader9KIMszo(long j10, @NotNull List<Color> colors, @Nullable List<Float> list) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        return AndroidShader_androidKt.m1747ActualSweepGradientShader9KIMszo(j10, colors, list);
    }

    /* renamed from: SweepGradientShader-9KIMszo$default  reason: not valid java name */
    public static /* synthetic */ Shader m2121SweepGradientShader9KIMszo$default(long j10, List list, List list2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            list2 = null;
        }
        return m2120SweepGradientShader9KIMszo(j10, list, list2);
    }
}
