package com.applovin.impl.mediation;

import androidx.annotation.NonNull;
import com.applovin.mediation.MaxAdViewConfiguration;
/* loaded from: classes2.dex */
public class MaxAdViewConfigurationImpl extends MaxAdViewConfiguration {

    /* renamed from: a  reason: collision with root package name */
    private final MaxAdViewConfiguration.AdaptiveType f8502a;

    /* renamed from: b  reason: collision with root package name */
    private final int f8503b;

    /* renamed from: c  reason: collision with root package name */
    private final int f8504c;

    /* loaded from: classes2.dex */
    public static class BuilderImpl implements MaxAdViewConfiguration.Builder {

        /* renamed from: a  reason: collision with root package name */
        private MaxAdViewConfiguration.AdaptiveType f8505a = MaxAdViewConfiguration.AdaptiveType.NONE;

        /* renamed from: b  reason: collision with root package name */
        private int f8506b = -1;

        /* renamed from: c  reason: collision with root package name */
        private int f8507c = -1;

        @Override // com.applovin.mediation.MaxAdViewConfiguration.Builder
        public MaxAdViewConfiguration build() {
            return new MaxAdViewConfigurationImpl(this);
        }

        public MaxAdViewConfiguration.AdaptiveType getAdaptiveType() {
            return this.f8505a;
        }

        public int getAdaptiveWidth() {
            return this.f8506b;
        }

        public int getInlineMaximumHeight() {
            return this.f8507c;
        }

        @Override // com.applovin.mediation.MaxAdViewConfiguration.Builder
        public MaxAdViewConfiguration.Builder setAdaptiveType(MaxAdViewConfiguration.AdaptiveType adaptiveType) {
            com.applovin.impl.sdk.o.e("MaxAdViewConfiguration", "setAdaptiveType(adaptiveType=" + adaptiveType + ")");
            this.f8505a = adaptiveType;
            return this;
        }

        @Override // com.applovin.mediation.MaxAdViewConfiguration.Builder
        public MaxAdViewConfiguration.Builder setAdaptiveWidth(int i10) {
            com.applovin.impl.sdk.o.e("MaxAdViewConfiguration", "setAdaptiveWidth(adaptiveWidth=" + i10 + ")");
            this.f8506b = i10;
            return this;
        }

        @Override // com.applovin.mediation.MaxAdViewConfiguration.Builder
        public MaxAdViewConfiguration.Builder setInlineMaximumHeight(int i10) {
            com.applovin.impl.sdk.o.e("MaxAdViewConfiguration", "setInlineMaximumHeight(inlineMaximumHeight=" + i10 + ")");
            this.f8507c = i10;
            return this;
        }

        @NonNull
        public String toString() {
            return "MaxAdViewConfiguration.Builder{adaptiveType=" + this.f8505a + ", adaptiveWidth=" + this.f8506b + ", inlineMaximumHeight=" + this.f8507c + "}";
        }
    }

    @Override // com.applovin.mediation.MaxAdViewConfiguration
    public MaxAdViewConfiguration.AdaptiveType getAdaptiveType() {
        return this.f8502a;
    }

    @Override // com.applovin.mediation.MaxAdViewConfiguration
    public int getAdaptiveWidth() {
        return this.f8503b;
    }

    @Override // com.applovin.mediation.MaxAdViewConfiguration
    public int getInlineMaximumHeight() {
        return this.f8504c;
    }

    @NonNull
    public String toString() {
        return "MaxAdViewConfiguration{adaptiveType=" + this.f8502a + ", adaptiveWidth=" + this.f8503b + ", inlineMaximumHeight=" + this.f8504c + "}";
    }

    private MaxAdViewConfigurationImpl(BuilderImpl builderImpl) {
        this.f8502a = builderImpl.f8505a;
        this.f8503b = builderImpl.f8506b;
        this.f8504c = builderImpl.f8507c;
    }
}
