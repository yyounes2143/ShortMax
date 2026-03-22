package androidx.compose.ui.graphics;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Shadow.kt */
@Metadata
/* loaded from: classes.dex */
public final class ShadowKt {
    @Stable
    @NotNull
    public static final Shadow lerp(@NotNull Shadow start, @NotNull Shadow stop, float f10) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        return new Shadow(ColorKt.m1894lerpjxsXWHM(start.m2126getColor0d7_KjU(), stop.m2126getColor0d7_KjU(), f10), OffsetKt.m1629lerpWko1d7g(start.m2127getOffsetF1C5BW0(), stop.m2127getOffsetF1C5BW0(), f10), MathHelpersKt.lerp(start.getBlurRadius(), stop.getBlurRadius(), f10), null);
    }
}
