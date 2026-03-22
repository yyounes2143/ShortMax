package androidx.compose.ui.text.android.style;

import android.graphics.Paint;
import androidx.annotation.IntRange;
import androidx.compose.ui.text.android.InternalPlatformTextApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LineHeightStyleSpan.kt */
@InternalPlatformTextApi
@Metadata
/* loaded from: classes.dex */
public final class LineHeightStyleSpan implements android.text.style.LineHeightSpan {
    private int ascent;
    private int descent;
    private final int endIndex;
    private int firstAscent;
    private int firstAscentDiff;
    private int lastDescent;
    private int lastDescentDiff;
    private final float lineHeight;
    private final int startIndex;
    private final int topPercentage;
    private final boolean trimFirstLineTop;
    private final boolean trimLastLineBottom;

    public LineHeightStyleSpan(float f10, int i10, int i11, boolean z10, boolean z11, @IntRange(from = 0, to = 100) int i12) {
        this.lineHeight = f10;
        this.startIndex = i10;
        this.endIndex = i11;
        this.trimFirstLineTop = z10;
        this.trimLastLineBottom = z11;
        this.topPercentage = i12;
        if ((i12 >= 0 && i12 < 101) || i12 == -1) {
            return;
        }
        throw new IllegalStateException("topRatio should be in [0..100] range or -1");
    }

    private final void calculateTargetMetrics(Paint.FontMetricsInt fontMetricsInt) {
        double ceil;
        int lineHeight = LineHeightStyleSpanKt.lineHeight(fontMetricsInt);
        int ceil2 = (int) Math.ceil(this.lineHeight);
        int i10 = ceil2 - lineHeight;
        int i11 = this.topPercentage;
        if (i11 == -1) {
            i11 = (int) ((Math.abs(fontMetricsInt.ascent) / LineHeightStyleSpanKt.lineHeight(fontMetricsInt)) * 100.0f);
        }
        if (i10 <= 0) {
            ceil = Math.ceil((i10 * i11) / 100.0f);
        } else {
            ceil = Math.ceil((i10 * (100 - i11)) / 100.0f);
        }
        int i12 = (int) ceil;
        int i13 = fontMetricsInt.descent;
        int i14 = i12 + i13;
        this.descent = i14;
        int i15 = i14 - ceil2;
        this.ascent = i15;
        if (this.trimFirstLineTop) {
            i15 = fontMetricsInt.ascent;
        }
        this.firstAscent = i15;
        if (this.trimLastLineBottom) {
            i14 = i13;
        }
        this.lastDescent = i14;
        this.firstAscentDiff = fontMetricsInt.ascent - i15;
        this.lastDescentDiff = i14 - i13;
    }

    @Override // android.text.style.LineHeightSpan
    public void chooseHeight(@NotNull CharSequence text, int i10, int i11, int i12, int i13, @NotNull Paint.FontMetricsInt fontMetricsInt) {
        boolean z10;
        int i14;
        int i15;
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(fontMetricsInt, "fontMetricsInt");
        if (LineHeightStyleSpanKt.lineHeight(fontMetricsInt) <= 0) {
            return;
        }
        boolean z11 = false;
        if (i10 == this.startIndex) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (i11 == this.endIndex) {
            z11 = true;
        }
        if (z10 && z11 && this.trimFirstLineTop && this.trimLastLineBottom) {
            return;
        }
        if (z10) {
            calculateTargetMetrics(fontMetricsInt);
        }
        if (z10) {
            i14 = this.firstAscent;
        } else {
            i14 = this.ascent;
        }
        fontMetricsInt.ascent = i14;
        if (z11) {
            i15 = this.lastDescent;
        } else {
            i15 = this.descent;
        }
        fontMetricsInt.descent = i15;
    }

    public final int getFirstAscentDiff() {
        return this.firstAscentDiff;
    }

    public final int getLastDescentDiff() {
        return this.lastDescentDiff;
    }

    public final float getLineHeight() {
        return this.lineHeight;
    }
}
