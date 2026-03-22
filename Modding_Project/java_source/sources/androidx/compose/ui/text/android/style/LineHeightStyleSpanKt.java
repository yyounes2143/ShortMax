package androidx.compose.ui.text.android.style;

import android.graphics.Paint;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LineHeightStyleSpan.kt */
@Metadata
/* loaded from: classes.dex */
public final class LineHeightStyleSpanKt {
    public static final int lineHeight(@NotNull Paint.FontMetricsInt fontMetricsInt) {
        Intrinsics.checkNotNullParameter(fontMetricsInt, "<this>");
        return fontMetricsInt.descent - fontMetricsInt.ascent;
    }
}
