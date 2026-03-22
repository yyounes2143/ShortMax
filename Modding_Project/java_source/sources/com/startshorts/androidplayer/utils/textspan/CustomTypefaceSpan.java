package com.startshorts.androidplayer.utils.textspan;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.TypefaceSpan;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CustomTypefaceSpan.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CustomTypefaceSpan extends TypefaceSpan {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Typeface f48209a;

    private final void a(Paint paint, Typeface typeface) {
        paint.setTypeface(typeface);
    }

    @Override // android.text.style.TypefaceSpan, android.text.style.CharacterStyle
    public void updateDrawState(@NotNull TextPaint ds2) {
        Intrinsics.checkNotNullParameter(ds2, "ds");
        a(ds2, this.f48209a);
    }

    @Override // android.text.style.TypefaceSpan, android.text.style.MetricAffectingSpan
    public void updateMeasureState(@NotNull TextPaint paint) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        a(paint, this.f48209a);
    }
}
