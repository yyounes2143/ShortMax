package androidx.compose.ui.draw;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.Shape;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Clip.kt */
@Metadata
/* loaded from: classes.dex */
public final class ClipKt {
    @Stable
    @NotNull
    public static final Modifier clip(@NotNull Modifier modifier, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(shape, "shape");
        return GraphicsLayerModifierKt.m1979graphicsLayerpANQ8Wg$default(modifier, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, shape, true, null, 0L, 0L, 59391, null);
    }

    @Stable
    @NotNull
    public static final Modifier clipToBounds(@NotNull Modifier modifier) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return GraphicsLayerModifierKt.m1979graphicsLayerpANQ8Wg$default(modifier, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, true, null, 0L, 0L, 61439, null);
    }
}
