package com.facebook.fresco.vito.options;

import android.graphics.ColorFilter;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import c3.q;
import com.facebook.fresco.vito.options.DecodedImageOptions;
import com.facebook.imagepipeline.common.Priority;
import k2.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageOptions.kt */
@Metadata
/* loaded from: classes3.dex */
public final class ImageOptions extends DecodedImageOptions {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static ImageOptions defaultImageOptions;
    private final boolean _autoPlay;
    private final boolean _autoStop;
    private final boolean _resizeToViewport;
    @Nullable
    private final ColorFilter actualImageColorFilter;
    @Nullable
    private final Drawable backgroundDrawable;
    @Nullable
    private final ImageOptionsDrawableFactory customDrawableFactory;
    private final boolean errorApplyRoundingOptions;
    @ColorInt
    @Nullable
    private final Integer errorColor;
    @Nullable
    private final Drawable errorDrawable;
    @Nullable
    private final PointF errorFocusPoint;
    @DrawableRes
    private final int errorRes;
    @Nullable
    private final q errorScaleType;
    private final int fadeDurationMs;
    private final boolean isPerfMediaRemountInstrumentationFix;
    @Nullable
    private final Drawable overlayDrawable;
    @DrawableRes
    private final int overlayRes;
    private final boolean placeholderApplyRoundingOptions;
    @ColorInt
    @Nullable
    private final Integer placeholderColor;
    @Nullable
    private final Drawable placeholderDrawable;
    @Nullable
    private final PointF placeholderFocusPoint;
    @DrawableRes
    private final int placeholderRes;
    @Nullable
    private final q placeholderScaleType;
    @Nullable
    private final Drawable progressDrawable;
    @DrawableRes
    private final int progressRes;
    @Nullable
    private final q progressScaleType;

    /* compiled from: ImageOptions.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nImageOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageOptions.kt\ncom/facebook/fresco/vito/options/ImageOptions$Builder\n*L\n1#1,475:1\n449#1,2:476\n449#1,2:478\n449#1,2:480\n449#1,2:482\n449#1,2:484\n449#1,2:486\n449#1,2:488\n449#1,2:490\n449#1,2:492\n449#1,2:494\n449#1,2:496\n449#1,2:498\n449#1,2:500\n449#1,2:502\n449#1,2:504\n449#1,2:506\n449#1,2:508\n449#1,2:510\n449#1,2:512\n449#1,2:514\n449#1,2:516\n449#1,2:518\n449#1,2:520\n449#1,2:522\n449#1,2:524\n449#1,2:526\n449#1,2:528\n449#1,2:530\n449#1,2:532\n*S KotlinDebug\n*F\n+ 1 ImageOptions.kt\ncom/facebook/fresco/vito/options/ImageOptions$Builder\n*L\n280#1:476,2\n289#1:478,2\n296#1:480,2\n302#1:482,2\n311#1:484,2\n318#1:486,2\n322#1:488,2\n327#1:490,2\n331#1:492,2\n337#1:494,2\n343#1:496,2\n347#1:498,2\n351#1:500,2\n357#1:502,2\n361#1:504,2\n364#1:506,2\n369#1:508,2\n374#1:510,2\n379#1:512,2\n383#1:514,2\n388#1:516,2\n393#1:518,2\n395#1:520,2\n404#1:522,2\n411#1:524,2\n413#1:526,2\n424#1:528,2\n433#1:530,2\n442#1:532,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Builder extends DecodedImageOptions.Builder<Builder> {
        @Nullable
        private ColorFilter _actualImageColorFilter;
        private boolean _autoPlay;
        private boolean _autoStop;
        @Nullable
        private Drawable _backgroundDrawable;
        @Nullable
        private ImageOptionsDrawableFactory _customDrawableFactory;
        private boolean _errorApplyRoundingOptions;
        @ColorInt
        @Nullable
        private Integer _errorColor;
        @Nullable
        private Drawable _errorDrawable;
        @Nullable
        private PointF _errorFocusPoint;
        @DrawableRes
        private int _errorRes;
        @Nullable
        private q _errorScaleType;
        private int _fadeDurationMs;
        @Nullable
        private Drawable _overlayDrawable;
        @DrawableRes
        private int _overlayRes;
        private boolean _perfMediaRemountInstrumentationFix;
        private boolean _placeholderApplyRoundingOptions;
        @ColorInt
        @Nullable
        private Integer _placeholderColor;
        @Nullable
        private Drawable _placeholderDrawable;
        @Nullable
        private PointF _placeholderFocusPoint;
        @DrawableRes
        private int _placeholderRes;
        @Nullable
        private q _placeholderScaleType;
        @Nullable
        private Drawable _progressDrawable;
        @DrawableRes
        private int _progressRes;
        @Nullable
        private q _progressScaleType;
        private boolean _resizeToViewport;

        public Builder() {
            this._autoStop = true;
        }

        private final Builder modify(Function1<? super Builder, Unit> function1) {
            function1.invoke(this);
            return this;
        }

        @NotNull
        public final Builder autoPlay(boolean z10) {
            this._autoPlay = z10;
            return this;
        }

        @NotNull
        public final Builder autoStop(boolean z10) {
            this._autoStop = z10;
            return this;
        }

        @NotNull
        public final Builder background(@Nullable Drawable drawable) {
            this._backgroundDrawable = drawable;
            return this;
        }

        @NotNull
        public final Builder colorFilter(@Nullable ColorFilter colorFilter) {
            this._actualImageColorFilter = colorFilter;
            return this;
        }

        @NotNull
        public final Builder customDrawableFactory(@Nullable ImageOptionsDrawableFactory imageOptionsDrawableFactory) {
            this._customDrawableFactory = imageOptionsDrawableFactory;
            return this;
        }

        @NotNull
        public final Builder errorApplyRoundingOptions(boolean z10) {
            this._errorApplyRoundingOptions = z10;
            return this;
        }

        @NotNull
        public final Builder errorColor(@ColorInt int i10) {
            this._errorColor = Integer.valueOf(i10);
            this._errorRes = 0;
            this._errorDrawable = null;
            return this;
        }

        @NotNull
        public final Builder errorDrawable(@Nullable Drawable drawable) {
            this._errorColor = null;
            this._errorRes = 0;
            this._errorDrawable = drawable;
            return this;
        }

        @NotNull
        public final Builder errorFocusPoint(@Nullable PointF pointF) {
            this._errorFocusPoint = pointF;
            return this;
        }

        @NotNull
        public final Builder errorRes(@DrawableRes int i10) {
            this._errorColor = null;
            this._errorRes = i10;
            this._errorDrawable = null;
            return this;
        }

        @NotNull
        public final Builder errorScaleType(@Nullable q qVar) {
            this._errorScaleType = qVar;
            return this;
        }

        @NotNull
        public final Builder fadeDurationMs(int i10) {
            this._fadeDurationMs = i10;
            return this;
        }

        @Nullable
        public final ColorFilter get_actualImageColorFilter$options_release() {
            return this._actualImageColorFilter;
        }

        public final boolean get_autoPlay$options_release() {
            return this._autoPlay;
        }

        public final boolean get_autoStop$options_release() {
            return this._autoStop;
        }

        @Nullable
        public final Drawable get_backgroundDrawable$options_release() {
            return this._backgroundDrawable;
        }

        @Nullable
        public final ImageOptionsDrawableFactory get_customDrawableFactory$options_release() {
            return this._customDrawableFactory;
        }

        public final boolean get_errorApplyRoundingOptions$options_release() {
            return this._errorApplyRoundingOptions;
        }

        @Nullable
        public final Integer get_errorColor$options_release() {
            return this._errorColor;
        }

        @Nullable
        public final Drawable get_errorDrawable$options_release() {
            return this._errorDrawable;
        }

        @Nullable
        public final PointF get_errorFocusPoint$options_release() {
            return this._errorFocusPoint;
        }

        public final int get_errorRes$options_release() {
            return this._errorRes;
        }

        @Nullable
        public final q get_errorScaleType$options_release() {
            return this._errorScaleType;
        }

        public final int get_fadeDurationMs$options_release() {
            return this._fadeDurationMs;
        }

        @Nullable
        public final Drawable get_overlayDrawable$options_release() {
            return this._overlayDrawable;
        }

        public final int get_overlayRes$options_release() {
            return this._overlayRes;
        }

        public final boolean get_perfMediaRemountInstrumentationFix$options_release() {
            return this._perfMediaRemountInstrumentationFix;
        }

        public final boolean get_placeholderApplyRoundingOptions$options_release() {
            return this._placeholderApplyRoundingOptions;
        }

        @Nullable
        public final Integer get_placeholderColor$options_release() {
            return this._placeholderColor;
        }

        @Nullable
        public final Drawable get_placeholderDrawable$options_release() {
            return this._placeholderDrawable;
        }

        @Nullable
        public final PointF get_placeholderFocusPoint$options_release() {
            return this._placeholderFocusPoint;
        }

        public final int get_placeholderRes$options_release() {
            return this._placeholderRes;
        }

        @Nullable
        public final q get_placeholderScaleType$options_release() {
            return this._placeholderScaleType;
        }

        @Nullable
        public final Drawable get_progressDrawable$options_release() {
            return this._progressDrawable;
        }

        public final int get_progressRes$options_release() {
            return this._progressRes;
        }

        @Nullable
        public final q get_progressScaleType$options_release() {
            return this._progressScaleType;
        }

        public final boolean get_resizeToViewport$options_release() {
            return this._resizeToViewport;
        }

        @NotNull
        public final Builder overlay(@Nullable Drawable drawable) {
            this._overlayDrawable = drawable;
            this._overlayRes = 0;
            return this;
        }

        @NotNull
        public final Builder overlayRes(@DrawableRes int i10) {
            this._overlayRes = i10;
            this._overlayDrawable = null;
            return this;
        }

        @NotNull
        public final Builder perfMediaRemountInstrumentationFix(boolean z10) {
            this._perfMediaRemountInstrumentationFix = z10;
            return this;
        }

        @NotNull
        public final Builder placeholder(@Nullable Drawable drawable) {
            this._placeholderDrawable = drawable;
            this._placeholderColor = null;
            this._placeholderRes = 0;
            return this;
        }

        @NotNull
        public final Builder placeholderApplyRoundingOptions(boolean z10) {
            this._placeholderApplyRoundingOptions = z10;
            return this;
        }

        @NotNull
        public final Builder placeholderColor(@ColorInt int i10) {
            this._placeholderColor = Integer.valueOf(i10);
            this._placeholderRes = 0;
            this._placeholderDrawable = null;
            return this;
        }

        @NotNull
        public final Builder placeholderFocusPoint(@Nullable PointF pointF) {
            this._placeholderFocusPoint = pointF;
            return this;
        }

        @NotNull
        public final Builder placeholderRes(@DrawableRes int i10) {
            this._placeholderRes = i10;
            this._placeholderColor = null;
            this._placeholderDrawable = null;
            return this;
        }

        @NotNull
        public final Builder placeholderScaleType(@Nullable q qVar) {
            this._placeholderScaleType = qVar;
            return this;
        }

        @NotNull
        public final Builder progress(@Nullable Drawable drawable) {
            this._progressDrawable = drawable;
            return this;
        }

        @NotNull
        public final Builder progressRes(@DrawableRes int i10) {
            this._progressRes = i10;
            return this;
        }

        @NotNull
        public final Builder progressScaleType(@Nullable q qVar) {
            this._progressScaleType = qVar;
            return this;
        }

        @NotNull
        public final Builder resizeToViewport(boolean z10) {
            this._resizeToViewport = z10;
            return this;
        }

        public final void set_actualImageColorFilter$options_release(@Nullable ColorFilter colorFilter) {
            this._actualImageColorFilter = colorFilter;
        }

        public final void set_autoPlay$options_release(boolean z10) {
            this._autoPlay = z10;
        }

        public final void set_autoStop$options_release(boolean z10) {
            this._autoStop = z10;
        }

        public final void set_backgroundDrawable$options_release(@Nullable Drawable drawable) {
            this._backgroundDrawable = drawable;
        }

        public final void set_customDrawableFactory$options_release(@Nullable ImageOptionsDrawableFactory imageOptionsDrawableFactory) {
            this._customDrawableFactory = imageOptionsDrawableFactory;
        }

        public final void set_errorApplyRoundingOptions$options_release(boolean z10) {
            this._errorApplyRoundingOptions = z10;
        }

        public final void set_errorColor$options_release(@Nullable Integer num) {
            this._errorColor = num;
        }

        public final void set_errorDrawable$options_release(@Nullable Drawable drawable) {
            this._errorDrawable = drawable;
        }

        public final void set_errorFocusPoint$options_release(@Nullable PointF pointF) {
            this._errorFocusPoint = pointF;
        }

        public final void set_errorRes$options_release(int i10) {
            this._errorRes = i10;
        }

        public final void set_errorScaleType$options_release(@Nullable q qVar) {
            this._errorScaleType = qVar;
        }

        public final void set_fadeDurationMs$options_release(int i10) {
            this._fadeDurationMs = i10;
        }

        public final void set_overlayDrawable$options_release(@Nullable Drawable drawable) {
            this._overlayDrawable = drawable;
        }

        public final void set_overlayRes$options_release(int i10) {
            this._overlayRes = i10;
        }

        public final void set_perfMediaRemountInstrumentationFix$options_release(boolean z10) {
            this._perfMediaRemountInstrumentationFix = z10;
        }

        public final void set_placeholderApplyRoundingOptions$options_release(boolean z10) {
            this._placeholderApplyRoundingOptions = z10;
        }

        public final void set_placeholderColor$options_release(@Nullable Integer num) {
            this._placeholderColor = num;
        }

        public final void set_placeholderDrawable$options_release(@Nullable Drawable drawable) {
            this._placeholderDrawable = drawable;
        }

        public final void set_placeholderFocusPoint$options_release(@Nullable PointF pointF) {
            this._placeholderFocusPoint = pointF;
        }

        public final void set_placeholderRes$options_release(int i10) {
            this._placeholderRes = i10;
        }

        public final void set_placeholderScaleType$options_release(@Nullable q qVar) {
            this._placeholderScaleType = qVar;
        }

        public final void set_progressDrawable$options_release(@Nullable Drawable drawable) {
            this._progressDrawable = drawable;
        }

        public final void set_progressRes$options_release(int i10) {
            this._progressRes = i10;
        }

        public final void set_progressScaleType$options_release(@Nullable q qVar) {
            this._progressScaleType = qVar;
        }

        public final void set_resizeToViewport$options_release(boolean z10) {
            this._resizeToViewport = z10;
        }

        @NotNull
        public final Builder progress(@Nullable Drawable drawable, @Nullable q qVar) {
            this._progressDrawable = drawable;
            this._progressScaleType = qVar;
            return this;
        }

        @NotNull
        public final Builder progressRes(@DrawableRes int i10, @Nullable q qVar) {
            this._progressRes = i10;
            this._progressScaleType = qVar;
            return this;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(@NotNull ImageOptions defaultOptions) {
            super(defaultOptions);
            Intrinsics.checkNotNullParameter(defaultOptions, "defaultOptions");
            this._autoStop = true;
            this._placeholderColor = defaultOptions.getPlaceholderColor();
            this._placeholderRes = defaultOptions.getPlaceholderRes();
            this._placeholderDrawable = defaultOptions.getPlaceholderDrawable();
            this._placeholderScaleType = defaultOptions.getPlaceholderScaleType();
            this._placeholderFocusPoint = defaultOptions.getPlaceholderFocusPoint();
            this._placeholderApplyRoundingOptions = defaultOptions.getPlaceholderApplyRoundingOptions();
            this._progressRes = defaultOptions.getProgressRes();
            this._progressDrawable = defaultOptions.getProgressDrawable();
            this._progressScaleType = defaultOptions.getProgressScaleType();
            this._errorColor = defaultOptions.getErrorColor();
            this._errorRes = defaultOptions.getErrorRes();
            this._errorScaleType = defaultOptions.getErrorScaleType();
            this._errorFocusPoint = defaultOptions.getErrorFocusPoint();
            this._errorDrawable = defaultOptions.getErrorDrawable();
            this._errorApplyRoundingOptions = defaultOptions.getErrorApplyRoundingOptions();
            this._actualImageColorFilter = defaultOptions.getActualImageColorFilter();
            this._overlayRes = defaultOptions.getOverlayRes();
            this._overlayDrawable = defaultOptions.getOverlayDrawable();
            this._resizeToViewport = defaultOptions.shouldResizeToViewport();
            this._autoPlay = defaultOptions.shouldAutoPlay();
            this._autoStop = defaultOptions.shouldAutoStop();
            this._fadeDurationMs = defaultOptions.getFadeDurationMs();
            this._customDrawableFactory = defaultOptions.getCustomDrawableFactory();
        }

        @Override // com.facebook.fresco.vito.options.DecodedImageOptions.Builder, com.facebook.fresco.vito.options.EncodedImageOptions.Builder
        @NotNull
        public ImageOptions build() {
            return new ImageOptions(this);
        }

        @NotNull
        public final Builder placeholder(@Nullable Drawable drawable, @Nullable q qVar) {
            this._placeholderDrawable = drawable;
            this._placeholderScaleType = qVar;
            this._placeholderColor = null;
            this._placeholderRes = 0;
            return this;
        }

        @NotNull
        public final Builder placeholderRes(@DrawableRes int i10, @Nullable q qVar) {
            this._placeholderRes = i10;
            this._placeholderScaleType = qVar;
            this._placeholderColor = null;
            this._placeholderDrawable = null;
            return this;
        }
    }

    /* compiled from: ImageOptions.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Builder create() {
            return extend(defaults());
        }

        @NotNull
        public final ImageOptions defaults() {
            return ImageOptions.defaultImageOptions;
        }

        @NotNull
        public final Builder extend(@NotNull ImageOptions imageOptions) {
            Intrinsics.checkNotNullParameter(imageOptions, "imageOptions");
            return new Builder(imageOptions);
        }

        public final void setDefaults(@NotNull ImageOptions imageOptions) {
            Intrinsics.checkNotNullParameter(imageOptions, "imageOptions");
            ImageOptions.defaultImageOptions = imageOptions;
        }

        private Companion() {
        }
    }

    static {
        Builder builder = new Builder();
        q qVar = q.f3026h;
        defaultImageOptions = ((Builder) builder.placeholderScaleType(qVar).progressScaleType(qVar).errorScaleType(qVar).priority(Priority.HIGH)).build();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageOptions(@NotNull Builder builder) {
        super(builder);
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.placeholderColor = builder.get_placeholderColor$options_release();
        this.placeholderRes = builder.get_placeholderRes$options_release();
        this.placeholderDrawable = builder.get_placeholderDrawable$options_release();
        this.placeholderScaleType = builder.get_placeholderScaleType$options_release();
        this.placeholderFocusPoint = builder.get_placeholderFocusPoint$options_release();
        this.placeholderApplyRoundingOptions = builder.get_placeholderApplyRoundingOptions$options_release();
        this.progressRes = builder.get_progressRes$options_release();
        this.progressDrawable = builder.get_progressDrawable$options_release();
        this.progressScaleType = builder.get_progressScaleType$options_release();
        this.errorColor = builder.get_errorColor$options_release();
        this.errorRes = builder.get_errorRes$options_release();
        this.errorScaleType = builder.get_errorScaleType$options_release();
        this.errorFocusPoint = builder.get_errorFocusPoint$options_release();
        this.errorDrawable = builder.get_errorDrawable$options_release();
        this.errorApplyRoundingOptions = builder.get_errorApplyRoundingOptions$options_release();
        this.actualImageColorFilter = builder.get_actualImageColorFilter$options_release();
        this.overlayRes = builder.get_overlayRes$options_release();
        this.overlayDrawable = builder.get_overlayDrawable$options_release();
        this.backgroundDrawable = builder.get_backgroundDrawable$options_release();
        this._resizeToViewport = builder.get_resizeToViewport$options_release();
        this.fadeDurationMs = builder.get_fadeDurationMs$options_release();
        this._autoPlay = builder.get_autoPlay$options_release();
        this._autoStop = builder.get_autoStop$options_release();
        this.isPerfMediaRemountInstrumentationFix = builder.get_perfMediaRemountInstrumentationFix$options_release();
        this.customDrawableFactory = builder.get_customDrawableFactory$options_release();
    }

    @NotNull
    public static final Builder create() {
        return Companion.create();
    }

    @NotNull
    public static final ImageOptions defaults() {
        return Companion.defaults();
    }

    @NotNull
    public static final Builder extend(@NotNull ImageOptions imageOptions) {
        return Companion.extend(imageOptions);
    }

    public static final void setDefaults(@NotNull ImageOptions imageOptions) {
        Companion.setDefaults(imageOptions);
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x01a4, code lost:
        if (r3.errorDrawable == r4.errorDrawable) goto L60;
     */
    @Override // com.facebook.fresco.vito.options.DecodedImageOptions, com.facebook.fresco.vito.options.EncodedImageOptions
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r4) {
        /*
            Method dump skipped, instructions count: 429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.fresco.vito.options.ImageOptions.equals(java.lang.Object):boolean");
    }

    public final boolean equalsForActualImage(@NotNull ImageOptions other) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (this == other) {
            return true;
        }
        if (this.isPerfMediaRemountInstrumentationFix) {
            if (this.overlayRes != other.overlayRes || !f.a(this.overlayDrawable, other.overlayDrawable) || !f.a(this.backgroundDrawable, other.backgroundDrawable) || !f.a(this.actualImageColorFilter, other.actualImageColorFilter) || this._resizeToViewport != other._resizeToViewport || this._autoPlay != other._autoPlay || this._autoStop != other._autoStop || !f.a(this.customDrawableFactory, other.customDrawableFactory) || this.isPerfMediaRemountInstrumentationFix != other.isPerfMediaRemountInstrumentationFix) {
                return false;
            }
        } else if (this.overlayRes != other.overlayRes || !f.a(this.overlayDrawable, other.overlayDrawable) || !f.a(this.backgroundDrawable, other.backgroundDrawable) || !f.a(this.actualImageColorFilter, other.actualImageColorFilter) || this._resizeToViewport != other._resizeToViewport || !f.a(this.customDrawableFactory, other.customDrawableFactory)) {
            return false;
        }
        return equalDecodedOptions(other);
    }

    @Nullable
    public final ColorFilter getActualImageColorFilter() {
        return this.actualImageColorFilter;
    }

    @Nullable
    public final Drawable getBackgroundDrawable() {
        return this.backgroundDrawable;
    }

    @Nullable
    public final ImageOptionsDrawableFactory getCustomDrawableFactory() {
        return this.customDrawableFactory;
    }

    public final boolean getErrorApplyRoundingOptions() {
        return this.errorApplyRoundingOptions;
    }

    @ColorInt
    @Nullable
    public final Integer getErrorColor() {
        return this.errorColor;
    }

    @Nullable
    public final Drawable getErrorDrawable() {
        return this.errorDrawable;
    }

    @Nullable
    public final PointF getErrorFocusPoint() {
        return this.errorFocusPoint;
    }

    @DrawableRes
    public final int getErrorRes() {
        return this.errorRes;
    }

    @Nullable
    public final q getErrorScaleType() {
        return this.errorScaleType;
    }

    public final int getFadeDurationMs() {
        return this.fadeDurationMs;
    }

    @Nullable
    public final Drawable getOverlayDrawable() {
        return this.overlayDrawable;
    }

    @DrawableRes
    public final int getOverlayRes() {
        return this.overlayRes;
    }

    public final boolean getPlaceholderApplyRoundingOptions() {
        return this.placeholderApplyRoundingOptions;
    }

    @ColorInt
    @Nullable
    public final Integer getPlaceholderColor() {
        return this.placeholderColor;
    }

    @Nullable
    public final Drawable getPlaceholderDrawable() {
        return this.placeholderDrawable;
    }

    @Nullable
    public final PointF getPlaceholderFocusPoint() {
        return this.placeholderFocusPoint;
    }

    @DrawableRes
    public final int getPlaceholderRes() {
        return this.placeholderRes;
    }

    @Nullable
    public final q getPlaceholderScaleType() {
        return this.placeholderScaleType;
    }

    @Nullable
    public final Drawable getProgressDrawable() {
        return this.progressDrawable;
    }

    @DrawableRes
    public final int getProgressRes() {
        return this.progressRes;
    }

    @Nullable
    public final q getProgressScaleType() {
        return this.progressScaleType;
    }

    @Override // com.facebook.fresco.vito.options.DecodedImageOptions, com.facebook.fresco.vito.options.EncodedImageOptions
    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int hashCode = super.hashCode() * 31;
        Integer num = this.placeholderColor;
        int i23 = 0;
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = 0;
        }
        int i24 = (((hashCode + i10) * 31) + this.placeholderRes) * 31;
        Drawable drawable = this.placeholderDrawable;
        if (drawable != null) {
            i11 = drawable.hashCode();
        } else {
            i11 = 0;
        }
        int i25 = (i24 + i11) * 31;
        q qVar = this.placeholderScaleType;
        if (qVar != null) {
            i12 = qVar.hashCode();
        } else {
            i12 = 0;
        }
        int i26 = (i25 + i12) * 31;
        PointF pointF = this.placeholderFocusPoint;
        if (pointF != null) {
            i13 = pointF.hashCode();
        } else {
            i13 = 0;
        }
        int i27 = (((i26 + i13) * 31) + (this.placeholderApplyRoundingOptions ? 1 : 0)) * 31;
        Integer num2 = this.errorColor;
        if (num2 != null) {
            i14 = num2.intValue();
        } else {
            i14 = 0;
        }
        int i28 = (((i27 + i14) * 31) + this.errorRes) * 31;
        q qVar2 = this.errorScaleType;
        if (qVar2 != null) {
            i15 = qVar2.hashCode();
        } else {
            i15 = 0;
        }
        int i29 = (i28 + i15) * 31;
        PointF pointF2 = this.errorFocusPoint;
        if (pointF2 != null) {
            i16 = pointF2.hashCode();
        } else {
            i16 = 0;
        }
        int i30 = (i29 + i16) * 31;
        Drawable drawable2 = this.errorDrawable;
        if (drawable2 != null) {
            i17 = drawable2.hashCode();
        } else {
            i17 = 0;
        }
        int i31 = (((((i30 + i17) * 31) + (this.errorApplyRoundingOptions ? 1 : 0)) * 31) + this.overlayRes) * 31;
        Drawable drawable3 = this.overlayDrawable;
        if (drawable3 != null) {
            i18 = drawable3.hashCode();
        } else {
            i18 = 0;
        }
        int i32 = (i31 + i18) * 31;
        Drawable drawable4 = this.backgroundDrawable;
        if (drawable4 != null) {
            i19 = drawable4.hashCode();
        } else {
            i19 = 0;
        }
        int i33 = (i32 + i19) * 31;
        Drawable drawable5 = this.progressDrawable;
        if (drawable5 != null) {
            i20 = drawable5.hashCode();
        } else {
            i20 = 0;
        }
        int i34 = (i33 + i20) * 31;
        q qVar3 = this.progressScaleType;
        if (qVar3 != null) {
            i21 = qVar3.hashCode();
        } else {
            i21 = 0;
        }
        int i35 = (i34 + i21) * 31;
        ColorFilter colorFilter = this.actualImageColorFilter;
        if (colorFilter != null) {
            i22 = colorFilter.hashCode();
        } else {
            i22 = 0;
        }
        int i36 = (((((((((((((i35 + i22) * 31) + (this._resizeToViewport ? 1 : 0)) * 31) + this.fadeDurationMs) * 31) + (this._autoPlay ? 1 : 0)) * 31) + (this._autoStop ? 1 : 0)) * 31) + (this.isPerfMediaRemountInstrumentationFix ? 1 : 0)) * 31) + this.progressRes) * 31;
        ImageOptionsDrawableFactory imageOptionsDrawableFactory = this.customDrawableFactory;
        if (imageOptionsDrawableFactory != null) {
            i23 = imageOptionsDrawableFactory.hashCode();
        }
        return i36 + i23;
    }

    public final boolean isPerfMediaRemountInstrumentationFix() {
        return this.isPerfMediaRemountInstrumentationFix;
    }

    public final boolean shouldAutoPlay() {
        return this._autoPlay;
    }

    public final boolean shouldAutoStop() {
        return this._autoStop;
    }

    public final boolean shouldResizeToViewport() {
        return this._resizeToViewport;
    }

    @Override // com.facebook.fresco.vito.options.DecodedImageOptions, com.facebook.fresco.vito.options.EncodedImageOptions
    @NotNull
    public String toString() {
        f.a stringHelper = toStringHelper();
        return "ImageOptions{" + stringHelper + "}";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.fresco.vito.options.DecodedImageOptions, com.facebook.fresco.vito.options.EncodedImageOptions
    @NotNull
    public f.a toStringHelper() {
        f.a c10 = super.toStringHelper().c("placeholderColor", this.placeholderColor).a("placeholderRes", this.placeholderRes).c("placeholderDrawable", this.placeholderDrawable).c("placeholderScaleType", this.placeholderScaleType).c("placeholderFocusPoint", this.placeholderFocusPoint).d("placeholderApplyRoundingOptions", this.placeholderApplyRoundingOptions).a("progressRes", this.progressRes).c("progressDrawable", this.progressDrawable).c("progressScaleType", this.progressScaleType).c("errorColor", this.errorColor).a("errorRes", this.errorRes).c("errorScaleType", this.errorScaleType).c("errorFocusPoint", this.errorFocusPoint).c("errorDrawable", this.errorDrawable).d("errorApplyRoundingOptions", this.errorApplyRoundingOptions).c("actualImageColorFilter", this.actualImageColorFilter).a("overlayRes", this.overlayRes).c("overlayDrawable", this.overlayDrawable).c("backgroundDrawable", this.backgroundDrawable).d("resizeToViewport", this._resizeToViewport).d("autoPlay", this._autoPlay).d("autoStop", this._autoStop).d("mPerfMediaRemountInstrumentationFix", this.isPerfMediaRemountInstrumentationFix).a("fadeDurationMs", this.fadeDurationMs).c("customDrawableFactory", this.customDrawableFactory);
        Intrinsics.checkNotNullExpressionValue(c10, "add(...)");
        return c10;
    }

    @NotNull
    public final Builder extend() {
        return Companion.extend(this);
    }
}
