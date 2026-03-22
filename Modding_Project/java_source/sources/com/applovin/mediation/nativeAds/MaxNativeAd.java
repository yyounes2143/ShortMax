package com.applovin.mediation.nativeAds;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.applovin.impl.mediation.nativeAds.MaxNativeAdImpl;
import com.applovin.mediation.MaxAdFormat;
import java.util.List;
/* loaded from: classes2.dex */
public class MaxNativeAd extends MaxNativeAdImpl {
    private static final float MINIMUM_STARS_TO_RENDER = 3.0f;
    private final String advertiser;
    private final String body;
    private final String callToAction;
    private final MaxAdFormat format;
    private final MaxNativeAdImage icon;
    private final View iconView;
    private boolean isExpired;
    private final MaxNativeAdImage mainImage;
    private final float mediaContentAspectRatio;
    private final View mediaView;
    private MaxNativeAdView nativeAdView;
    private final View optionsView;
    private final Double starRating;
    private final String title;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private MaxAdFormat f10803a;

        /* renamed from: b  reason: collision with root package name */
        private String f10804b;

        /* renamed from: c  reason: collision with root package name */
        private String f10805c;

        /* renamed from: d  reason: collision with root package name */
        private String f10806d;

        /* renamed from: e  reason: collision with root package name */
        private String f10807e;

        /* renamed from: f  reason: collision with root package name */
        private MaxNativeAdImage f10808f;

        /* renamed from: g  reason: collision with root package name */
        private View f10809g;

        /* renamed from: h  reason: collision with root package name */
        private View f10810h;

        /* renamed from: i  reason: collision with root package name */
        private View f10811i;

        /* renamed from: j  reason: collision with root package name */
        private MaxNativeAdImage f10812j;

        /* renamed from: k  reason: collision with root package name */
        private float f10813k;

        /* renamed from: l  reason: collision with root package name */
        private Double f10814l;

        public MaxNativeAd build() {
            return new MaxNativeAd(this);
        }

        public Builder setAdFormat(MaxAdFormat maxAdFormat) {
            this.f10803a = maxAdFormat;
            return this;
        }

        public Builder setAdvertiser(String str) {
            this.f10805c = str;
            return this;
        }

        public Builder setBody(String str) {
            this.f10806d = str;
            return this;
        }

        public Builder setCallToAction(String str) {
            this.f10807e = str;
            return this;
        }

        public Builder setIcon(MaxNativeAdImage maxNativeAdImage) {
            this.f10808f = maxNativeAdImage;
            return this;
        }

        public Builder setIconView(View view) {
            this.f10809g = view;
            return this;
        }

        public Builder setMainImage(MaxNativeAdImage maxNativeAdImage) {
            this.f10812j = maxNativeAdImage;
            return this;
        }

        public Builder setMediaContentAspectRatio(float f10) {
            this.f10813k = f10;
            return this;
        }

        public Builder setMediaView(View view) {
            this.f10811i = view;
            return this;
        }

        public Builder setOptionsView(View view) {
            this.f10810h = view;
            return this;
        }

        public Builder setStarRating(Double d10) {
            this.f10814l = d10;
            return this;
        }

        public Builder setTitle(String str) {
            this.f10804b = str;
            return this;
        }
    }

    public MaxNativeAd(Builder builder) {
        this.format = builder.f10803a;
        this.title = builder.f10804b;
        this.advertiser = builder.f10805c;
        this.body = builder.f10806d;
        this.callToAction = builder.f10807e;
        this.icon = builder.f10808f;
        this.iconView = builder.f10809g;
        this.optionsView = builder.f10810h;
        this.mediaView = builder.f10811i;
        this.mainImage = builder.f10812j;
        this.mediaContentAspectRatio = builder.f10813k;
        Double d10 = builder.f10814l;
        this.starRating = (d10 == null || d10.doubleValue() < 3.0d) ? null : null;
    }

    @Nullable
    public final String getAdvertiser() {
        return this.advertiser;
    }

    @Nullable
    public final String getBody() {
        return this.body;
    }

    @Nullable
    public final String getCallToAction() {
        return this.callToAction;
    }

    @NonNull
    public final MaxAdFormat getFormat() {
        return this.format;
    }

    @Nullable
    public final MaxNativeAdImage getIcon() {
        return this.icon;
    }

    @Nullable
    public final View getIconView() {
        return this.iconView;
    }

    @Nullable
    public final MaxNativeAdImage getMainImage() {
        return this.mainImage;
    }

    public final float getMediaContentAspectRatio() {
        return this.mediaContentAspectRatio;
    }

    @Nullable
    public final View getMediaView() {
        return this.mediaView;
    }

    @Nullable
    public final View getOptionsView() {
        return this.optionsView;
    }

    @Nullable
    public final Double getStarRating() {
        return this.starRating;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public boolean isContainerClickable() {
        return false;
    }

    public final boolean isExpired() {
        return this.isExpired;
    }

    @UiThread
    public void performClick() {
        Button callToActionButton;
        MaxNativeAdView maxNativeAdView = this.nativeAdView;
        if (maxNativeAdView != null && (callToActionButton = maxNativeAdView.getCallToActionButton()) != null) {
            callToActionButton.performClick();
        }
    }

    public boolean prepareForInteraction(List<View> list, ViewGroup viewGroup) {
        return false;
    }

    public void setExpired() {
        this.isExpired = true;
    }

    public void setNativeAdView(MaxNativeAdView maxNativeAdView) {
        this.nativeAdView = maxNativeAdView;
    }

    public boolean shouldPrepareViewForInteractionOnMainThread() {
        return true;
    }

    /* loaded from: classes2.dex */
    public static class MaxNativeAdImage {

        /* renamed from: a  reason: collision with root package name */
        private Drawable f10815a;

        /* renamed from: b  reason: collision with root package name */
        private Uri f10816b;

        public MaxNativeAdImage(Drawable drawable) {
            this.f10815a = drawable;
        }

        @Nullable
        public Drawable getDrawable() {
            return this.f10815a;
        }

        @Nullable
        public Uri getUri() {
            return this.f10816b;
        }

        public MaxNativeAdImage(Uri uri) {
            this.f10816b = uri;
        }
    }

    @Deprecated
    public void prepareViewForInteraction(MaxNativeAdView maxNativeAdView) {
    }
}
