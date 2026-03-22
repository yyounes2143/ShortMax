package com.facebook.fresco.vito.options;

import android.graphics.Bitmap;
import android.graphics.PointF;
import c3.q;
import com.facebook.fresco.vito.options.EncodedImageOptions;
import com.facebook.imagepipeline.core.DownsampleMode;
import e4.b;
import k2.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import s3.d;
import s3.f;
import s3.g;
/* compiled from: DecodedImageOptions.kt */
@Metadata
/* loaded from: classes3.dex */
public class DecodedImageOptions extends EncodedImageOptions {
    @Nullable
    private final PointF actualImageFocusPoint;
    @NotNull
    private final q actualImageScaleType;
    @Nullable
    private final Bitmap.Config bitmapConfig;
    @Nullable
    private final BorderOptions borderOptions;
    @Nullable
    private final DownsampleMode downsampleOverride;
    @Nullable
    private final d imageDecodeOptions;
    @Nullable
    private final Boolean isProgressiveDecodingEnabled;
    private final boolean loadThumbnailOnly;
    private final boolean mLocalThumbnailPreviewsEnabled;
    @Nullable
    private final b postprocessor;
    @Nullable
    private final f resizeOptions;
    @Nullable
    private final g rotationOptions;
    @Nullable
    private final RoundingOptions roundingOptions;

    /* compiled from: DecodedImageOptions.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDecodedImageOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DecodedImageOptions.kt\ncom/facebook/fresco/vito/options/DecodedImageOptions$Builder\n*L\n1#1,205:1\n200#1,2:206\n200#1,2:208\n200#1,2:210\n200#1,2:212\n200#1,2:214\n200#1,2:216\n200#1,2:218\n200#1,2:220\n200#1,2:222\n200#1,2:224\n200#1,2:226\n200#1,2:228\n200#1,2:230\n*S KotlinDebug\n*F\n+ 1 DecodedImageOptions.kt\ncom/facebook/fresco/vito/options/DecodedImageOptions$Builder\n*L\n134#1:206,2\n142#1:208,2\n146#1:210,2\n150#1:212,2\n154#1:214,2\n164#1:216,2\n168#1:218,2\n170#1:220,2\n175#1:222,2\n183#1:224,2\n187#1:226,2\n191#1:228,2\n193#1:230,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static class Builder<T extends Builder<T>> extends EncodedImageOptions.Builder<T> {
        @Nullable
        private PointF actualFocusPoint;
        @NotNull
        private q actualImageScaleType;
        @Nullable
        private Bitmap.Config bitmapConfig;
        @Nullable
        private BorderOptions borderOptions;
        @Nullable
        private DownsampleMode downsampleOverride;
        @Nullable
        private d imageDecodeOptions;
        private boolean loadThumbnailOnly;
        private boolean localThumbnailPreviewsEnabled;
        @Nullable
        private b postprocessor;
        @Nullable
        private Boolean progressiveDecodingEnabled;
        @Nullable
        private f resizeOptions;
        @Nullable
        private g rotationOptions;
        @Nullable
        private RoundingOptions roundingOptions;

        public Builder() {
            q CENTER_CROP = q.f3027i;
            Intrinsics.checkNotNullExpressionValue(CENTER_CROP, "CENTER_CROP");
            this.actualImageScaleType = CENTER_CROP;
        }

        private final T modify(Function1<? super Builder<T>, Unit> function1) {
            function1.invoke(this);
            return (T) getThis();
        }

        @NotNull
        public final T bitmapConfig(@Nullable Bitmap.Config config) {
            this.bitmapConfig = config;
            return (T) getThis();
        }

        @NotNull
        public final T borders(@Nullable BorderOptions borderOptions) {
            this.borderOptions = borderOptions;
            return (T) getThis();
        }

        @NotNull
        public final T downsampleOverride(@Nullable DownsampleMode downsampleMode) {
            this.downsampleOverride = downsampleMode;
            return (T) getThis();
        }

        @NotNull
        public final T focusPoint(@Nullable PointF pointF) {
            this.actualFocusPoint = pointF;
            return (T) getThis();
        }

        @Nullable
        public final PointF getActualFocusPoint$options_release() {
            return this.actualFocusPoint;
        }

        @NotNull
        public final q getActualImageScaleType$options_release() {
            return this.actualImageScaleType;
        }

        @Nullable
        public final Bitmap.Config getBitmapConfig$options_release() {
            return this.bitmapConfig;
        }

        @Nullable
        public final BorderOptions getBorderOptions$options_release() {
            return this.borderOptions;
        }

        @Nullable
        public final DownsampleMode getDownsampleOverride$options_release() {
            return this.downsampleOverride;
        }

        @Nullable
        public final d getImageDecodeOptions$options_release() {
            return this.imageDecodeOptions;
        }

        public final boolean getLoadThumbnailOnly$options_release() {
            return this.loadThumbnailOnly;
        }

        public final boolean getLocalThumbnailPreviewsEnabled$options_release() {
            return this.localThumbnailPreviewsEnabled;
        }

        @Nullable
        public final b getPostprocessor$options_release() {
            return this.postprocessor;
        }

        @Nullable
        public final Boolean getProgressiveDecodingEnabled$options_release() {
            return this.progressiveDecodingEnabled;
        }

        @Nullable
        public final f getResizeOptions$options_release() {
            return this.resizeOptions;
        }

        @Nullable
        public final g getRotationOptions$options_release() {
            return this.rotationOptions;
        }

        @Nullable
        public final RoundingOptions getRoundingOptions$options_release() {
            return this.roundingOptions;
        }

        @NotNull
        public final T imageDecodeOptions(@Nullable d dVar) {
            this.imageDecodeOptions = dVar;
            return (T) getThis();
        }

        @NotNull
        public final T loadThumbnailOnly(boolean z10) {
            this.loadThumbnailOnly = z10;
            return (T) getThis();
        }

        @NotNull
        public final T localThumbnailPreviewsEnabled(boolean z10) {
            this.localThumbnailPreviewsEnabled = z10;
            return (T) getThis();
        }

        @NotNull
        public final T postprocess(@Nullable b bVar) {
            this.postprocessor = bVar;
            return (T) getThis();
        }

        @NotNull
        public final T progressiveRendering(@Nullable Boolean bool) {
            this.progressiveDecodingEnabled = bool;
            return (T) getThis();
        }

        @NotNull
        public final T resize(@Nullable f fVar) {
            this.resizeOptions = fVar;
            return (T) getThis();
        }

        @NotNull
        public final T rotate(@Nullable g gVar) {
            this.rotationOptions = gVar;
            return (T) getThis();
        }

        @NotNull
        public final T round(@Nullable RoundingOptions roundingOptions) {
            this.roundingOptions = roundingOptions;
            return (T) getThis();
        }

        @NotNull
        public final T scale(@Nullable q qVar) {
            if (qVar == null) {
                qVar = ImageOptions.Companion.defaults().getActualImageScaleType();
            }
            this.actualImageScaleType = qVar;
            return (T) getThis();
        }

        public final void setActualFocusPoint$options_release(@Nullable PointF pointF) {
            this.actualFocusPoint = pointF;
        }

        public final void setActualImageScaleType$options_release(@NotNull q qVar) {
            Intrinsics.checkNotNullParameter(qVar, "<set-?>");
            this.actualImageScaleType = qVar;
        }

        public final void setBitmapConfig$options_release(@Nullable Bitmap.Config config) {
            this.bitmapConfig = config;
        }

        public final void setBorderOptions$options_release(@Nullable BorderOptions borderOptions) {
            this.borderOptions = borderOptions;
        }

        public final void setDownsampleOverride$options_release(@Nullable DownsampleMode downsampleMode) {
            this.downsampleOverride = downsampleMode;
        }

        public final void setImageDecodeOptions$options_release(@Nullable d dVar) {
            this.imageDecodeOptions = dVar;
        }

        public final void setLoadThumbnailOnly$options_release(boolean z10) {
            this.loadThumbnailOnly = z10;
        }

        public final void setLocalThumbnailPreviewsEnabled$options_release(boolean z10) {
            this.localThumbnailPreviewsEnabled = z10;
        }

        public final void setPostprocessor$options_release(@Nullable b bVar) {
            this.postprocessor = bVar;
        }

        public final void setProgressiveDecodingEnabled$options_release(@Nullable Boolean bool) {
            this.progressiveDecodingEnabled = bool;
        }

        public final void setResizeOptions$options_release(@Nullable f fVar) {
            this.resizeOptions = fVar;
        }

        public final void setRotationOptions$options_release(@Nullable g gVar) {
            this.rotationOptions = gVar;
        }

        public final void setRoundingOptions$options_release(@Nullable RoundingOptions roundingOptions) {
            this.roundingOptions = roundingOptions;
        }

        @Override // com.facebook.fresco.vito.options.EncodedImageOptions.Builder
        @NotNull
        public DecodedImageOptions build() {
            return new DecodedImageOptions(this);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(@NotNull DecodedImageOptions decodedImageOptions) {
            super(decodedImageOptions);
            Intrinsics.checkNotNullParameter(decodedImageOptions, "decodedImageOptions");
            q CENTER_CROP = q.f3027i;
            Intrinsics.checkNotNullExpressionValue(CENTER_CROP, "CENTER_CROP");
            this.actualImageScaleType = CENTER_CROP;
            this.resizeOptions = decodedImageOptions.getResizeOptions();
            this.downsampleOverride = decodedImageOptions.getDownsampleOverride();
            this.rotationOptions = decodedImageOptions.getRotationOptions();
            this.postprocessor = decodedImageOptions.getPostprocessor();
            this.imageDecodeOptions = decodedImageOptions.getImageDecodeOptions();
            this.roundingOptions = decodedImageOptions.getRoundingOptions();
            this.borderOptions = decodedImageOptions.getBorderOptions();
            this.actualImageScaleType = decodedImageOptions.getActualImageScaleType();
            this.actualFocusPoint = decodedImageOptions.getActualImageFocusPoint();
            this.localThumbnailPreviewsEnabled = decodedImageOptions.areLocalThumbnailPreviewsEnabled();
            this.loadThumbnailOnly = decodedImageOptions.getLoadThumbnailOnly();
            this.bitmapConfig = decodedImageOptions.getBitmapConfig();
            this.progressiveDecodingEnabled = decodedImageOptions.isProgressiveDecodingEnabled();
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(@NotNull ImageOptions defaultOptions) {
            this((DecodedImageOptions) defaultOptions);
            Intrinsics.checkNotNullParameter(defaultOptions, "defaultOptions");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DecodedImageOptions(@NotNull Builder<?> builder) {
        super(builder);
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.resizeOptions = builder.getResizeOptions$options_release();
        this.downsampleOverride = builder.getDownsampleOverride$options_release();
        this.rotationOptions = builder.getRotationOptions$options_release();
        this.postprocessor = builder.getPostprocessor$options_release();
        this.imageDecodeOptions = builder.getImageDecodeOptions$options_release();
        this.roundingOptions = builder.getRoundingOptions$options_release();
        this.borderOptions = builder.getBorderOptions$options_release();
        this.actualImageScaleType = builder.getActualImageScaleType$options_release();
        this.actualImageFocusPoint = builder.getActualFocusPoint$options_release();
        this.mLocalThumbnailPreviewsEnabled = builder.getLocalThumbnailPreviewsEnabled$options_release();
        this.loadThumbnailOnly = builder.getLoadThumbnailOnly$options_release();
        this.bitmapConfig = builder.getBitmapConfig$options_release();
        this.isProgressiveDecodingEnabled = builder.getProgressiveDecodingEnabled$options_release();
    }

    public final boolean areLocalThumbnailPreviewsEnabled() {
        return this.mLocalThumbnailPreviewsEnabled;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean equalDecodedOptions(@NotNull DecodedImageOptions other) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (k2.f.a(this.resizeOptions, other.resizeOptions) && k2.f.a(this.downsampleOverride, other.downsampleOverride) && k2.f.a(this.rotationOptions, other.rotationOptions) && k2.f.a(this.postprocessor, other.postprocessor) && k2.f.a(this.imageDecodeOptions, other.imageDecodeOptions) && k2.f.a(this.roundingOptions, other.roundingOptions) && k2.f.a(this.borderOptions, other.borderOptions) && k2.f.a(this.actualImageScaleType, other.actualImageScaleType) && k2.f.a(this.actualImageFocusPoint, other.actualImageFocusPoint) && this.mLocalThumbnailPreviewsEnabled == other.mLocalThumbnailPreviewsEnabled && this.loadThumbnailOnly == other.loadThumbnailOnly && this.isProgressiveDecodingEnabled == other.isProgressiveDecodingEnabled && k2.f.a(this.bitmapConfig, other.bitmapConfig)) {
            return equalEncodedOptions(other);
        }
        return false;
    }

    @Override // com.facebook.fresco.vito.options.EncodedImageOptions
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Intrinsics.areEqual(getClass(), obj.getClass())) {
            return equalDecodedOptions((DecodedImageOptions) obj);
        }
        return false;
    }

    @Nullable
    public final PointF getActualImageFocusPoint() {
        return this.actualImageFocusPoint;
    }

    @NotNull
    public final q getActualImageScaleType() {
        return this.actualImageScaleType;
    }

    @Nullable
    public final Bitmap.Config getBitmapConfig() {
        return this.bitmapConfig;
    }

    @Nullable
    public final BorderOptions getBorderOptions() {
        return this.borderOptions;
    }

    @Nullable
    public final DownsampleMode getDownsampleOverride() {
        return this.downsampleOverride;
    }

    @Nullable
    public final d getImageDecodeOptions() {
        return this.imageDecodeOptions;
    }

    public final boolean getLoadThumbnailOnly() {
        return this.loadThumbnailOnly;
    }

    public final boolean getMLocalThumbnailPreviewsEnabled() {
        return this.mLocalThumbnailPreviewsEnabled;
    }

    @Nullable
    public final b getPostprocessor() {
        return this.postprocessor;
    }

    @Nullable
    public final f getResizeOptions() {
        return this.resizeOptions;
    }

    @Nullable
    public final g getRotationOptions() {
        return this.rotationOptions;
    }

    @Nullable
    public final RoundingOptions getRoundingOptions() {
        return this.roundingOptions;
    }

    @Override // com.facebook.fresco.vito.options.EncodedImageOptions
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
        int hashCode = super.hashCode() * 31;
        f fVar = this.resizeOptions;
        int i19 = 0;
        if (fVar != null) {
            i10 = fVar.hashCode();
        } else {
            i10 = 0;
        }
        int i20 = (hashCode + i10) * 31;
        DownsampleMode downsampleMode = this.downsampleOverride;
        if (downsampleMode != null) {
            i11 = downsampleMode.hashCode();
        } else {
            i11 = 0;
        }
        int i21 = (i20 + i11) * 31;
        g gVar = this.rotationOptions;
        if (gVar != null) {
            i12 = gVar.hashCode();
        } else {
            i12 = 0;
        }
        int i22 = (i21 + i12) * 31;
        b bVar = this.postprocessor;
        if (bVar != null) {
            i13 = bVar.hashCode();
        } else {
            i13 = 0;
        }
        int i23 = (i22 + i13) * 31;
        d dVar = this.imageDecodeOptions;
        if (dVar != null) {
            i14 = dVar.hashCode();
        } else {
            i14 = 0;
        }
        int i24 = (i23 + i14) * 31;
        RoundingOptions roundingOptions = this.roundingOptions;
        if (roundingOptions != null) {
            i15 = roundingOptions.hashCode();
        } else {
            i15 = 0;
        }
        int i25 = (i24 + i15) * 31;
        BorderOptions borderOptions = this.borderOptions;
        if (borderOptions != null) {
            i16 = borderOptions.hashCode();
        } else {
            i16 = 0;
        }
        int hashCode2 = (((i25 + i16) * 31) + this.actualImageScaleType.hashCode()) * 31;
        PointF pointF = this.actualImageFocusPoint;
        if (pointF != null) {
            i17 = pointF.hashCode();
        } else {
            i17 = 0;
        }
        int i26 = (((((hashCode2 + i17) * 31) + (this.mLocalThumbnailPreviewsEnabled ? 1 : 0)) * 31) + (this.loadThumbnailOnly ? 1 : 0)) * 31;
        Bitmap.Config config = this.bitmapConfig;
        if (config != null) {
            i18 = config.hashCode();
        } else {
            i18 = 0;
        }
        int i27 = (i26 + i18) * 31;
        Boolean bool = this.isProgressiveDecodingEnabled;
        if (bool != null) {
            i19 = bool.hashCode();
        }
        return i27 + i19;
    }

    @Nullable
    public final Boolean isProgressiveDecodingEnabled() {
        return this.isProgressiveDecodingEnabled;
    }

    @Override // com.facebook.fresco.vito.options.EncodedImageOptions
    @NotNull
    public String toString() {
        f.a stringHelper = toStringHelper();
        return "DecodedImageOptions{" + stringHelper + "}";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.fresco.vito.options.EncodedImageOptions
    @NotNull
    public f.a toStringHelper() {
        f.a c10 = super.toStringHelper().c("resizeOptions", this.resizeOptions).c("downsampleOverride", this.downsampleOverride).c("rotationOptions", this.rotationOptions).c("postprocessor", this.postprocessor).c("imageDecodeOptions", this.imageDecodeOptions).c("roundingOptions", this.roundingOptions).c("borderOptions", this.borderOptions).c("actualImageScaleType", this.actualImageScaleType).c("actualImageFocusPoint", this.actualImageFocusPoint).d("localThumbnailPreviewsEnabled", this.mLocalThumbnailPreviewsEnabled).d("loadThumbnailOnly", this.loadThumbnailOnly).c("bitmapConfig", this.bitmapConfig).c("progressiveRenderingEnabled", this.isProgressiveDecodingEnabled);
        Intrinsics.checkNotNullExpressionValue(c10, "add(...)");
        return c10;
    }
}
