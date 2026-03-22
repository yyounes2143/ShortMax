package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.presenter.NativePresenterDelegate;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NativeAdInternal.kt */
@Metadata
/* loaded from: classes7.dex */
public final class NativeAdInternal extends AdInternal implements NativePresenterDelegate {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TOKEN_APP_DESCRIPTION = "APP_DESCRIPTION";
    @NotNull
    public static final String TOKEN_APP_ICON = "APP_ICON";
    @NotNull
    public static final String TOKEN_APP_NAME = "APP_NAME";
    @NotNull
    public static final String TOKEN_APP_RATING_VALUE = "APP_RATING_VALUE";
    @NotNull
    public static final String TOKEN_CTA_BUTTON_TEXT = "CTA_BUTTON_TEXT";
    @NotNull
    public static final String TOKEN_CTA_BUTTON_URL = "CTA_BUTTON_URL";
    @NotNull
    public static final String TOKEN_MAIN_IMAGE = "MAIN_IMAGE";
    @NotNull
    public static final String TOKEN_OM_SDK_DATA = "OM_SDK_DATA";
    @NotNull
    public static final String TOKEN_SPONSORED_BY = "SPONSORED_BY";
    @NotNull
    public static final String TOKEN_VUNGLE_PRIVACY_ICON_URL = "VUNGLE_PRIVACY_ICON_URL";
    @NotNull
    public static final String TOKEN_VUNGLE_PRIVACY_URL = "VUNGLE_PRIVACY_URL";

    /* compiled from: NativeAdInternal.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAdInternal(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.vungle.ads.internal.AdInternal
    @Nullable
    public VungleAdSize getAdSizeForAdRequest() {
        return null;
    }

    @Override // com.vungle.ads.internal.presenter.NativePresenterDelegate
    @Nullable
    public List<String> getImpressionUrls() {
        BidPayload bidPayload = getBidPayload();
        if (bidPayload != null) {
            return bidPayload.getImpression();
        }
        return null;
    }

    @Override // com.vungle.ads.internal.presenter.NativePresenterDelegate
    @Nullable
    public String getPlacementRefId() {
        Placement placement = getPlacement();
        if (placement != null) {
            return placement.getReferenceId();
        }
        return null;
    }

    @Override // com.vungle.ads.internal.AdInternal
    public boolean isValidAdSize(@Nullable VungleAdSize vungleAdSize) {
        return true;
    }

    @Override // com.vungle.ads.internal.AdInternal
    public boolean isValidAdTypeForPlacement(@NotNull Placement placement) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        return placement.isNative();
    }
}
