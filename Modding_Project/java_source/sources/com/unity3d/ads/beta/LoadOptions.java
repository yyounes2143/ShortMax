package com.unity3d.ads.beta;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LoadOptions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class LoadOptions {
    @Nullable
    private final String adMarkup;
    @NotNull
    private final Map<String, String> extras;
    @NotNull
    private final String placementId;

    /* compiled from: LoadOptions.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Builder {
        @Nullable
        private String adMarkup;
        @NotNull
        private final Map<String, String> extras;
        @NotNull
        private final String placementId;

        public Builder(@NotNull String placementId) {
            Intrinsics.checkNotNullParameter(placementId, "placementId");
            this.placementId = placementId;
            this.extras = new LinkedHashMap();
        }

        @NotNull
        public final LoadOptions build() {
            return new LoadOptions(this.placementId, this.adMarkup, this.extras);
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
            this.extras.putAll(extras);
            return this;
        }
    }

    public LoadOptions(@NotNull String placementId, @Nullable String str, @NotNull Map<String, String> extras) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.placementId = placementId;
        this.adMarkup = str;
        this.extras = extras;
    }

    @Nullable
    public final String getAdMarkup() {
        return this.adMarkup;
    }

    @NotNull
    public final Map<String, String> getExtras() {
        return this.extras;
    }

    @NotNull
    public final String getPlacementId() {
        return this.placementId;
    }

    public /* synthetic */ LoadOptions(String str, String str2, Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? p0.i() : map);
    }
}
