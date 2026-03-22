package androidx.compose.ui.text.style;

import androidx.compose.ui.text.SpanStyleKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextIndent.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextIndentKt {
    @NotNull
    public static final TextIndent lerp(@NotNull TextIndent start, @NotNull TextIndent stop, float f10) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        return new TextIndent(SpanStyleKt.m3675lerpTextUnitInheritableC3pnCVY(start.m3978getFirstLineXSAIIZE(), stop.m3978getFirstLineXSAIIZE(), f10), SpanStyleKt.m3675lerpTextUnitInheritableC3pnCVY(start.m3979getRestLineXSAIIZE(), stop.m3979getRestLineXSAIIZE(), f10), null);
    }
}
