package androidx.compose.ui.text.android.style;

import android.graphics.Paint;
import androidx.compose.ui.text.android.InternalPlatformTextApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LineHeightSpan.kt */
@InternalPlatformTextApi
@Metadata
/* loaded from: classes.dex */
public final class LineHeightSpan implements android.text.style.LineHeightSpan {
    private final float lineHeight;

    public LineHeightSpan(float f10) {
        this.lineHeight = f10;
    }

    @Override // android.text.style.LineHeightSpan
    public void chooseHeight(@NotNull CharSequence text, int i10, int i11, int i12, int i13, @NotNull Paint.FontMetricsInt fontMetricsInt) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(fontMetricsInt, "fontMetricsInt");
        int lineHeight = LineHeightStyleSpanKt.lineHeight(fontMetricsInt);
        if (lineHeight <= 0) {
            return;
        }
        int ceil = (int) Math.ceil(this.lineHeight);
        int ceil2 = (int) Math.ceil(fontMetricsInt.descent * ((ceil * 1.0f) / lineHeight));
        fontMetricsInt.descent = ceil2;
        fontMetricsInt.ascent = ceil2 - ceil;
    }

    public final float getLineHeight() {
        return this.lineHeight;
    }
}
