package androidx.compose.ui.draw;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Scale.kt */
@Metadata
/* loaded from: classes.dex */
public final class ScaleKt {
    @Stable
    @NotNull
    public static final Modifier scale(@NotNull Modifier modifier, float f10, float f11) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return (f10 == 1.0f && f11 == 1.0f) ? modifier : GraphicsLayerModifierKt.m1979graphicsLayerpANQ8Wg$default(modifier, f10, f11, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 65532, null);
    }

    @Stable
    @NotNull
    public static final Modifier scale(@NotNull Modifier modifier, float f10) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return scale(modifier, f10, f10);
    }
}
