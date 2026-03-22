package androidx.compose.ui.text.font;

import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: FontWeight.kt */
@Metadata
/* loaded from: classes.dex */
public final class FontWeightKt {
    @NotNull
    public static final FontWeight lerp(@NotNull FontWeight start, @NotNull FontWeight stop, float f10) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        return new FontWeight(e.n(MathHelpersKt.lerp(start.getWeight(), stop.getWeight(), f10), 1, 1000));
    }
}
