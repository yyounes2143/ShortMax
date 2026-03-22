package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.AdInternal;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.presenter.AdPlayCallback;
import com.vungle.ads.internal.presenter.AdPlayCallbackWrapper;
import com.vungle.ads.internal.util.ViewUtility;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BannerAdImpl.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BannerAdInternal extends AdInternal {
    @NotNull
    private final VungleAdSize adSize;
    @Nullable
    private VungleAdSize updatedAdSize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerAdInternal(@NotNull Context context, @NotNull VungleAdSize adSize) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        this.adSize = adSize;
    }

    @Override // com.vungle.ads.internal.AdInternal
    public void adLoadedAndUpdateConfigure$vungle_ads_release(@NotNull AdPayload advertisement) {
        int width;
        int height;
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        super.adLoadedAndUpdateConfigure$vungle_ads_release(advertisement);
        if (this.adSize.isAdaptiveWidth$vungle_ads_release() || this.adSize.isAdaptiveHeight$vungle_ads_release()) {
            Pair<Integer, Integer> deviceWidthAndHeightWithOrientation = ViewUtility.INSTANCE.getDeviceWidthAndHeightWithOrientation(getContext(), 0);
            int intValue = deviceWidthAndHeightWithOrientation.b().intValue();
            int intValue2 = deviceWidthAndHeightWithOrientation.d().intValue();
            if (this.adSize.isAdaptiveWidth$vungle_ads_release()) {
                width = advertisement.adWidth();
            } else {
                width = this.adSize.getWidth();
            }
            if (this.adSize.isAdaptiveHeight$vungle_ads_release()) {
                height = advertisement.adHeight();
            } else {
                height = this.adSize.getHeight();
            }
            int min = Math.min(intValue, width);
            int min2 = Math.min(intValue2, height);
            if (this.adSize.isAdaptiveHeight$vungle_ads_release() && this.adSize.getHeight() > 0) {
                min2 = Math.min(this.adSize.getHeight(), min2);
            }
            this.updatedAdSize = new VungleAdSize(min, min2);
        }
    }

    @Override // com.vungle.ads.internal.AdInternal
    @NotNull
    public VungleAdSize getAdSizeForAdRequest() {
        return this.adSize;
    }

    @Nullable
    public final VungleAdSize getUpdatedAdSize$vungle_ads_release() {
        return this.updatedAdSize;
    }

    @Override // com.vungle.ads.internal.AdInternal
    public boolean isValidAdSize(@Nullable VungleAdSize vungleAdSize) {
        if (vungleAdSize != null) {
            return vungleAdSize.isValidSize$vungle_ads_release();
        }
        return false;
    }

    @Override // com.vungle.ads.internal.AdInternal
    public boolean isValidAdTypeForPlacement(@NotNull Placement placement) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        if (!placement.isBanner() && !placement.isMREC() && !placement.isInline()) {
            return false;
        }
        return true;
    }

    public final void setUpdatedAdSize$vungle_ads_release(@Nullable VungleAdSize vungleAdSize) {
        this.updatedAdSize = vungleAdSize;
    }

    @NotNull
    public final AdPlayCallbackWrapper wrapCallback$vungle_ads_release(@NotNull final AdPlayCallback adPlayCallback) {
        Intrinsics.checkNotNullParameter(adPlayCallback, "adPlayCallback");
        return new AdPlayCallbackWrapper(adPlayCallback) { // from class: com.vungle.ads.internal.BannerAdInternal$wrapCallback$1
            @Override // com.vungle.ads.internal.presenter.AdPlayCallbackWrapper, com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdEnd(@Nullable String str) {
                this.setAdState(AdInternal.AdState.FINISHED);
                super.onAdEnd(str);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallbackWrapper, com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdStart(@Nullable String str) {
                this.setAdState(AdInternal.AdState.PLAYING);
                super.onAdStart(str);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallbackWrapper, com.vungle.ads.internal.presenter.AdPlayCallback
            public void onFailure(@NotNull VungleError error) {
                Intrinsics.checkNotNullParameter(error, "error");
                this.setAdState(AdInternal.AdState.ERROR);
                super.onFailure(error);
            }
        };
    }
}
