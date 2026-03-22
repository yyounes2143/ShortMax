package androidx.compose.ui.text.android.style;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import androidx.compose.ui.text.android.InternalPlatformTextApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BaselineShiftSpan.kt */
@InternalPlatformTextApi
@Metadata
/* loaded from: classes.dex */
public class BaselineShiftSpan extends MetricAffectingSpan {
    private final float multiplier;

    public BaselineShiftSpan(float f10) {
        this.multiplier = f10;
    }

    public final float getMultiplier() {
        return this.multiplier;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(@NotNull TextPaint textPaint) {
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        textPaint.baselineShift += (int) Math.ceil(textPaint.ascent() * this.multiplier);
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(@NotNull TextPaint textPaint) {
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        textPaint.baselineShift += (int) Math.ceil(textPaint.ascent() * this.multiplier);
    }
}
