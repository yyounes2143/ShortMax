package androidx.compose.ui.text.android.style;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import androidx.compose.ui.text.android.InternalPlatformTextApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TypefaceSpan.kt */
@InternalPlatformTextApi
@Metadata
/* loaded from: classes.dex */
public final class TypefaceSpan extends MetricAffectingSpan {
    @NotNull
    private final Typeface typeface;

    public TypefaceSpan(@NotNull Typeface typeface) {
        Intrinsics.checkNotNullParameter(typeface, "typeface");
        this.typeface = typeface;
    }

    private final void updateTypeface(Paint paint) {
        paint.setTypeface(this.typeface);
    }

    @NotNull
    public final Typeface getTypeface() {
        return this.typeface;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(@NotNull TextPaint ds2) {
        Intrinsics.checkNotNullParameter(ds2, "ds");
        updateTypeface(ds2);
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(@NotNull TextPaint paint) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        updateTypeface(paint);
    }
}
