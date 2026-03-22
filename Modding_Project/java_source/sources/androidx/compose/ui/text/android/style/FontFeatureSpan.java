package androidx.compose.ui.text.android.style;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import androidx.compose.ui.text.android.InternalPlatformTextApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FontFeatureSpan.kt */
@InternalPlatformTextApi
@Metadata
/* loaded from: classes.dex */
public final class FontFeatureSpan extends MetricAffectingSpan {
    @NotNull
    private final String fontFeatureSettings;

    public FontFeatureSpan(@NotNull String fontFeatureSettings) {
        Intrinsics.checkNotNullParameter(fontFeatureSettings, "fontFeatureSettings");
        this.fontFeatureSettings = fontFeatureSettings;
    }

    @NotNull
    public final String getFontFeatureSettings() {
        return this.fontFeatureSettings;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(@NotNull TextPaint textPaint) {
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        textPaint.setFontFeatureSettings(this.fontFeatureSettings);
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(@NotNull TextPaint textPaint) {
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        textPaint.setFontFeatureSettings(this.fontFeatureSettings);
    }
}
