package com.applovin.mediation.nativeAds;

import android.view.View;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
/* loaded from: classes2.dex */
public class MaxNativeAdViewBinder {
    @IdRes
    protected final int advertiserTextViewId;
    @IdRes
    protected final int bodyTextViewId;
    @IdRes
    protected final int callToActionButtonId;
    @IdRes
    protected final int iconContentViewId;
    @IdRes
    protected final int iconImageViewId;
    @LayoutRes
    protected final int layoutResourceId;
    protected final View mainView;
    @IdRes
    protected final int mediaContentFrameLayoutId;
    @IdRes
    protected final int mediaContentViewGroupId;
    @IdRes
    protected final int optionsContentFrameLayoutId;
    @IdRes
    protected final int optionsContentViewGroupId;
    @IdRes
    protected final int starRatingContentViewGroupId;
    protected final String templateType;
    @IdRes
    protected final int titleTextViewId;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final View f10834a;

        /* renamed from: b  reason: collision with root package name */
        private final int f10835b;

        /* renamed from: c  reason: collision with root package name */
        private int f10836c;

        /* renamed from: d  reason: collision with root package name */
        private int f10837d;

        /* renamed from: e  reason: collision with root package name */
        private int f10838e;

        /* renamed from: f  reason: collision with root package name */
        private int f10839f;

        /* renamed from: g  reason: collision with root package name */
        private int f10840g;

        /* renamed from: h  reason: collision with root package name */
        private int f10841h;

        /* renamed from: i  reason: collision with root package name */
        private int f10842i;

        /* renamed from: j  reason: collision with root package name */
        private int f10843j;

        /* renamed from: k  reason: collision with root package name */
        private int f10844k;

        /* renamed from: l  reason: collision with root package name */
        private int f10845l;

        /* renamed from: m  reason: collision with root package name */
        private int f10846m;

        /* renamed from: n  reason: collision with root package name */
        private String f10847n;

        public Builder(View view) {
            this(-1, view);
        }

        public MaxNativeAdViewBinder build() {
            return new MaxNativeAdViewBinder(this.f10834a, this.f10835b, this.f10836c, this.f10837d, this.f10838e, this.f10839f, this.f10840g, this.f10843j, this.f10841h, this.f10842i, this.f10844k, this.f10845l, this.f10846m, this.f10847n);
        }

        public Builder setAdvertiserTextViewId(@IdRes int i10) {
            this.f10837d = i10;
            return this;
        }

        public Builder setBodyTextViewId(@IdRes int i10) {
            this.f10838e = i10;
            return this;
        }

        public Builder setCallToActionButtonId(@IdRes int i10) {
            this.f10846m = i10;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Deprecated
        public Builder setIconContentViewId(@IdRes int i10) {
            this.f10840g = i10;
            return this;
        }

        public Builder setIconImageViewId(@IdRes int i10) {
            this.f10839f = i10;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Deprecated
        public Builder setMediaContentFrameLayoutId(@IdRes int i10) {
            this.f10845l = i10;
            return this;
        }

        public Builder setMediaContentViewGroupId(@IdRes int i10) {
            this.f10844k = i10;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Deprecated
        public Builder setOptionsContentFrameLayoutId(@IdRes int i10) {
            this.f10842i = i10;
            return this;
        }

        public Builder setOptionsContentViewGroupId(@IdRes int i10) {
            this.f10841h = i10;
            return this;
        }

        public Builder setStarRatingContentViewGroupId(@IdRes int i10) {
            this.f10843j = i10;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Builder setTemplateType(String str) {
            this.f10847n = str;
            return this;
        }

        public Builder setTitleTextViewId(@IdRes int i10) {
            this.f10836c = i10;
            return this;
        }

        public Builder(@LayoutRes int i10) {
            this(i10, null);
        }

        private Builder(int i10, View view) {
            this.f10836c = -1;
            this.f10837d = -1;
            this.f10838e = -1;
            this.f10839f = -1;
            this.f10840g = -1;
            this.f10841h = -1;
            this.f10842i = -1;
            this.f10843j = -1;
            this.f10844k = -1;
            this.f10845l = -1;
            this.f10846m = -1;
            this.f10835b = i10;
            this.f10834a = view;
        }
    }

    private MaxNativeAdViewBinder(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, String str) {
        this.mainView = view;
        this.layoutResourceId = i10;
        this.titleTextViewId = i11;
        this.advertiserTextViewId = i12;
        this.bodyTextViewId = i13;
        this.iconImageViewId = i14;
        this.iconContentViewId = i15;
        this.starRatingContentViewGroupId = i16;
        this.optionsContentViewGroupId = i17;
        this.optionsContentFrameLayoutId = i18;
        this.mediaContentViewGroupId = i19;
        this.mediaContentFrameLayoutId = i20;
        this.callToActionButtonId = i21;
        this.templateType = str;
    }
}
