package com.google.android.material.internal;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Constructor;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
final class StaticLayoutBuilderCompat {
    static final int DEFAULT_HYPHENATION_FREQUENCY = 1;
    static final float DEFAULT_LINE_SPACING_ADD = 0.0f;
    static final float DEFAULT_LINE_SPACING_MULTIPLIER = 1.0f;
    private static final String TEXT_DIRS_CLASS = "android.text.TextDirectionHeuristics";
    private static final String TEXT_DIR_CLASS = "android.text.TextDirectionHeuristic";
    private static final String TEXT_DIR_CLASS_LTR = "LTR";
    private static final String TEXT_DIR_CLASS_RTL = "RTL";
    @Nullable
    private static Constructor<StaticLayout> constructor;
    private static boolean initialized;
    @Nullable
    private static Object textDirection;
    private int end;
    private boolean isRtl;
    private final TextPaint paint;
    private CharSequence source;
    @Nullable
    private StaticLayoutBuilderConfigurer staticLayoutBuilderConfigurer;
    private final int width;
    private int start = 0;
    private Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
    private int maxLines = Integer.MAX_VALUE;
    private float lineSpacingAdd = 0.0f;
    private float lineSpacingMultiplier = 1.0f;
    private int hyphenationFrequency = DEFAULT_HYPHENATION_FREQUENCY;
    private boolean includePad = true;
    @Nullable
    private TextUtils.TruncateAt ellipsize = null;

    /* loaded from: classes5.dex */
    static class StaticLayoutBuilderCompatException extends Exception {
        StaticLayoutBuilderCompatException(Throwable th2) {
            super("Error thrown initializing StaticLayout " + th2.getMessage(), th2);
        }
    }

    private StaticLayoutBuilderCompat(CharSequence charSequence, TextPaint textPaint, int i10) {
        this.source = charSequence;
        this.paint = textPaint;
        this.width = i10;
        this.end = charSequence.length();
    }

    private void createConstructorWithReflection() throws StaticLayoutBuilderCompatException {
        TextDirectionHeuristic textDirectionHeuristic;
        if (initialized) {
            return;
        }
        try {
            if (this.isRtl) {
                textDirectionHeuristic = TextDirectionHeuristics.RTL;
            } else {
                textDirectionHeuristic = TextDirectionHeuristics.LTR;
            }
            textDirection = textDirectionHeuristic;
            Class cls = Integer.TYPE;
            Class cls2 = Float.TYPE;
            Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, cls, cls, TextPaint.class, cls, Layout.Alignment.class, TextDirectionHeuristic.class, cls2, cls2, Boolean.TYPE, TextUtils.TruncateAt.class, cls, cls);
            constructor = declaredConstructor;
            declaredConstructor.setAccessible(true);
            initialized = true;
        } catch (Exception e10) {
            throw new StaticLayoutBuilderCompatException(e10);
        }
    }

    @NonNull
    public static StaticLayoutBuilderCompat obtain(@NonNull CharSequence charSequence, @NonNull TextPaint textPaint, @IntRange(from = 0) int i10) {
        return new StaticLayoutBuilderCompat(charSequence, textPaint, i10);
    }

    public StaticLayout build() throws StaticLayoutBuilderCompatException {
        TextDirectionHeuristic textDirectionHeuristic;
        if (this.source == null) {
            this.source = "";
        }
        int max = Math.max(0, this.width);
        CharSequence charSequence = this.source;
        if (this.maxLines == 1) {
            charSequence = TextUtils.ellipsize(charSequence, this.paint, max, this.ellipsize);
        }
        int min = Math.min(charSequence.length(), this.end);
        this.end = min;
        if (this.isRtl && this.maxLines == 1) {
            this.alignment = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, this.start, min, this.paint, max);
        obtain.setAlignment(this.alignment);
        obtain.setIncludePad(this.includePad);
        if (this.isRtl) {
            textDirectionHeuristic = TextDirectionHeuristics.RTL;
        } else {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        }
        obtain.setTextDirection(textDirectionHeuristic);
        TextUtils.TruncateAt truncateAt = this.ellipsize;
        if (truncateAt != null) {
            obtain.setEllipsize(truncateAt);
        }
        obtain.setMaxLines(this.maxLines);
        float f10 = this.lineSpacingAdd;
        if (f10 != 0.0f || this.lineSpacingMultiplier != 1.0f) {
            obtain.setLineSpacing(f10, this.lineSpacingMultiplier);
        }
        if (this.maxLines > 1) {
            obtain.setHyphenationFrequency(this.hyphenationFrequency);
        }
        StaticLayoutBuilderConfigurer staticLayoutBuilderConfigurer = this.staticLayoutBuilderConfigurer;
        if (staticLayoutBuilderConfigurer != null) {
            staticLayoutBuilderConfigurer.configure(obtain);
        }
        return obtain.build();
    }

    @NonNull
    public StaticLayoutBuilderCompat setAlignment(@NonNull Layout.Alignment alignment) {
        this.alignment = alignment;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat setEllipsize(@Nullable TextUtils.TruncateAt truncateAt) {
        this.ellipsize = truncateAt;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat setEnd(@IntRange(from = 0) int i10) {
        this.end = i10;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat setHyphenationFrequency(int i10) {
        this.hyphenationFrequency = i10;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat setIncludePad(boolean z10) {
        this.includePad = z10;
        return this;
    }

    public StaticLayoutBuilderCompat setIsRtl(boolean z10) {
        this.isRtl = z10;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat setLineSpacing(float f10, float f11) {
        this.lineSpacingAdd = f10;
        this.lineSpacingMultiplier = f11;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat setMaxLines(@IntRange(from = 0) int i10) {
        this.maxLines = i10;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat setStart(@IntRange(from = 0) int i10) {
        this.start = i10;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat setStaticLayoutBuilderConfigurer(@Nullable StaticLayoutBuilderConfigurer staticLayoutBuilderConfigurer) {
        this.staticLayoutBuilderConfigurer = staticLayoutBuilderConfigurer;
        return this;
    }
}
