package io.bidmachine;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdPlacementConfig.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdPlacementConfig {
    @NotNull
    private final AdsFormat adsFormat;
    @Nullable
    private final CustomParams customParams;
    @Nullable
    private final String placementId;

    /* compiled from: AdPlacementConfig.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Builder {
        @NotNull
        private final AdsFormat adsFormat;
        @Nullable
        private CustomParams customParams;
        @Nullable
        private String placementId;

        public Builder(@NotNull AdsFormat adsFormat) {
            Intrinsics.checkNotNullParameter(adsFormat, "adsFormat");
            this.adsFormat = adsFormat;
        }

        @NotNull
        public final AdPlacementConfig build() {
            return new AdPlacementConfig(this.adsFormat, this.placementId, this.customParams);
        }

        @NotNull
        public final Builder withCustomParams(@Nullable CustomParams customParams) {
            this.customParams = customParams;
            return this;
        }

        @NotNull
        public final Builder withPlacementId(@Nullable String str) {
            this.placementId = str;
            return this;
        }
    }

    public AdPlacementConfig(@NotNull AdsFormat adsFormat, @Nullable String str, @Nullable CustomParams customParams) {
        Intrinsics.checkNotNullParameter(adsFormat, "adsFormat");
        this.adsFormat = adsFormat;
        this.placementId = str;
        this.customParams = customParams;
    }

    public static /* synthetic */ AdPlacementConfig copy$default(AdPlacementConfig adPlacementConfig, AdsFormat adsFormat, String str, CustomParams customParams, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            adsFormat = adPlacementConfig.adsFormat;
        }
        if ((i10 & 2) != 0) {
            str = adPlacementConfig.placementId;
        }
        if ((i10 & 4) != 0) {
            customParams = adPlacementConfig.customParams;
        }
        return adPlacementConfig.copy(adsFormat, str, customParams);
    }

    @NotNull
    public final AdsFormat component1() {
        return this.adsFormat;
    }

    @Nullable
    public final String component2() {
        return this.placementId;
    }

    @Nullable
    public final CustomParams component3() {
        return this.customParams;
    }

    @NotNull
    public final AdPlacementConfig copy(@NotNull AdsFormat adsFormat, @Nullable String str, @Nullable CustomParams customParams) {
        Intrinsics.checkNotNullParameter(adsFormat, "adsFormat");
        return new AdPlacementConfig(adsFormat, str, customParams);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdPlacementConfig)) {
            return false;
        }
        AdPlacementConfig adPlacementConfig = (AdPlacementConfig) obj;
        if (this.adsFormat == adPlacementConfig.adsFormat && Intrinsics.areEqual(this.placementId, adPlacementConfig.placementId) && Intrinsics.areEqual(this.customParams, adPlacementConfig.customParams)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final AdsFormat getAdsFormat() {
        return this.adsFormat;
    }

    @Nullable
    public final CustomParams getCustomParams() {
        return this.customParams;
    }

    @Nullable
    public final String getPlacementId() {
        return this.placementId;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.adsFormat.hashCode() * 31;
        String str = this.placementId;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode2 + hashCode) * 31;
        CustomParams customParams = this.customParams;
        if (customParams != null) {
            i10 = customParams.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "AdPlacementConfig(adsFormat=" + this.adsFormat + ", placementId=" + this.placementId + ", customParams=" + this.customParams + ')';
    }
}
