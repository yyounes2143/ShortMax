package com.unity3d.ads.beta;

import com.unity3d.ads.core.data.model.AdObject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BannerAd.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BannerAd {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final AdObject adObject;
    @NotNull
    private final BannerLoadOptions loadOptions;

    /* compiled from: BannerAd.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void load(@NotNull BannerLoadOptions options, @NotNull LoadListener<BannerAd> listener) {
            Intrinsics.checkNotNullParameter(options, "options");
            Intrinsics.checkNotNullParameter(listener, "listener");
        }

        private Companion() {
        }
    }

    public BannerAd(@NotNull AdObject adObject, @NotNull BannerLoadOptions loadOptions) {
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        Intrinsics.checkNotNullParameter(loadOptions, "loadOptions");
        this.adObject = adObject;
        this.loadOptions = loadOptions;
    }

    public static final void load(@NotNull BannerLoadOptions bannerLoadOptions, @NotNull LoadListener<BannerAd> loadListener) {
        Companion.load(bannerLoadOptions, loadListener);
    }
}
