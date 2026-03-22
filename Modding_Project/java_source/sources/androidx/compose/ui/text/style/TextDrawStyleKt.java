package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.text.SpanStyleKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextDrawStyle.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextDrawStyleKt {
    @NotNull
    public static final TextDrawStyle lerp(@NotNull TextDrawStyle start, @NotNull TextDrawStyle stop, float f10) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        if (!(start instanceof BrushStyle) && !(stop instanceof BrushStyle)) {
            return TextDrawStyle.Companion.m3975from8_81llA(ColorKt.m1894lerpjxsXWHM(start.mo3920getColor0d7_KjU(), stop.mo3920getColor0d7_KjU(), f10));
        }
        return (TextDrawStyle) SpanStyleKt.lerpDiscrete(start, stop, f10);
    }
}
