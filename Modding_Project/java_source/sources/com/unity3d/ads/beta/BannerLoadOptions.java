package com.unity3d.ads.beta;

import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BannerLoadOptions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BannerLoadOptions {
    @Nullable
    private final String adMarkup;
    @NotNull
    private final Pair<Integer, Integer> bannerSize;
    @Nullable
    private final Map<String, String> extras;
    @Nullable
    private final BannerShowListener listener;
    @NotNull
    private final String placementId;

    /* compiled from: BannerLoadOptions.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Builder {
        @Nullable
        private String adMarkup;
        @NotNull
        private final Pair<Integer, Integer> bannerSize;
        @Nullable
        private Map<String, String> extras;
        @Nullable
        private BannerShowListener listener;
        @NotNull
        private final String placementId;

        public Builder(@NotNull String placementId, @NotNull Pair<Integer, Integer> bannerSize) {
            Intrinsics.checkNotNullParameter(placementId, "placementId");
            Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
            this.placementId = placementId;
            this.bannerSize = bannerSize;
        }

        @NotNull
        public final BannerLoadOptions build() {
            return new BannerLoadOptions(this.placementId, this.bannerSize, this.adMarkup, this.extras, this.listener);
        }

        @NotNull
        public final Builder withAdMarkup(@NotNull String adMarkup) {
            Intrinsics.checkNotNullParameter(adMarkup, "adMarkup");
            this.adMarkup = adMarkup;
            return this;
        }

        @NotNull
        public final Builder withExtras(@NotNull Map<String, String> extras) {
            Intrinsics.checkNotNullParameter(extras, "extras");
            this.extras = extras;
            return this;
        }

        @NotNull
        public final Builder withListener(@NotNull BannerShowListener listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.listener = listener;
            return this;
        }
    }

    public BannerLoadOptions(@NotNull String placementId, @NotNull Pair<Integer, Integer> bannerSize, @Nullable String str, @Nullable Map<String, String> map, @Nullable BannerShowListener bannerShowListener) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
        this.placementId = placementId;
        this.bannerSize = bannerSize;
        this.adMarkup = str;
        this.extras = map;
        this.listener = bannerShowListener;
    }

    @Nullable
    public final String getAdMarkup() {
        return this.adMarkup;
    }

    @NotNull
    public final Pair<Integer, Integer> getBannerSize() {
        return this.bannerSize;
    }

    @Nullable
    public final Map<String, String> getExtras() {
        return this.extras;
    }

    @Nullable
    public final BannerShowListener getListener() {
        return this.listener;
    }

    @NotNull
    public final String getPlacementId() {
        return this.placementId;
    }

    public /* synthetic */ BannerLoadOptions(String str, Pair pair, String str2, Map map, BannerShowListener bannerShowListener, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, pair, (i10 & 4) != 0 ? null : str2, (i10 & 8) != 0 ? null : map, (i10 & 16) != 0 ? null : bannerShowListener);
    }
}
