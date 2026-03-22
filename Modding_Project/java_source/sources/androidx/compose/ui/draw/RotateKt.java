package androidx.compose.ui.draw;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Rotate.kt */
@Metadata
/* loaded from: classes.dex */
public final class RotateKt {
    @Stable
    @NotNull
    public static final Modifier rotate(@NotNull Modifier modifier, float f10) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        if (f10 == 0.0f) {
            return modifier;
        }
        return GraphicsLayerModifierKt.m1979graphicsLayerpANQ8Wg$default(modifier, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f10, 0.0f, 0L, null, false, null, 0L, 0L, 65279, null);
    }
}
