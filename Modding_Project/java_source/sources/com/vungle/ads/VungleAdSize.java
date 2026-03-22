package com.vungle.ads;

import android.content.Context;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.util.ViewUtility;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdSize.kt */
@Metadata
/* loaded from: classes7.dex */
public final class VungleAdSize {
    private final int height;
    private boolean isAdaptiveHeight;
    private boolean isAdaptiveWidth;
    private final int width;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final VungleAdSize BANNER = new VungleAdSize(320, 50);
    @NotNull
    public static final VungleAdSize BANNER_SHORT = new VungleAdSize(300, 50);
    @NotNull
    public static final VungleAdSize BANNER_LEADERBOARD = new VungleAdSize(728, 90);
    @NotNull
    public static final VungleAdSize MREC = new VungleAdSize(300, 250);

    /* compiled from: AdSize.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final VungleAdSize getAdSizeWithWidth(@NotNull Context context, int i10) {
            Intrinsics.checkNotNullParameter(context, "context");
            int intValue = ViewUtility.INSTANCE.getDeviceWidthAndHeightWithOrientation(context, 0).d().intValue();
            if (i10 < 0) {
                i10 = 0;
            }
            VungleAdSize vungleAdSize = new VungleAdSize(i10, intValue);
            if (vungleAdSize.getWidth() == 0) {
                vungleAdSize.setAdaptiveWidth$vungle_ads_release(true);
            }
            vungleAdSize.setAdaptiveHeight$vungle_ads_release(true);
            return vungleAdSize;
        }

        @NotNull
        public final VungleAdSize getAdSizeWithWidthAndHeight(int i10, int i11) {
            if (i10 < 0) {
                i10 = 0;
            }
            if (i11 < 0) {
                i11 = 0;
            }
            VungleAdSize vungleAdSize = new VungleAdSize(i10, i11);
            if (vungleAdSize.getWidth() == 0) {
                vungleAdSize.setAdaptiveWidth$vungle_ads_release(true);
            }
            if (vungleAdSize.getHeight() == 0) {
                vungleAdSize.setAdaptiveHeight$vungle_ads_release(true);
            }
            return vungleAdSize;
        }

        @NotNull
        public final VungleAdSize getValidAdSizeFromSize(int i10, int i11, @NotNull String placementId) {
            Intrinsics.checkNotNullParameter(placementId, "placementId");
            Placement placement = ConfigManager.INSTANCE.getPlacement(placementId);
            if (placement != null) {
                if (!placement.isInline()) {
                    placement = null;
                }
                if (placement != null) {
                    return VungleAdSize.Companion.getAdSizeWithWidthAndHeight(i10, i11);
                }
            }
            VungleAdSize vungleAdSize = VungleAdSize.MREC;
            if (i10 >= vungleAdSize.getWidth() && i11 >= vungleAdSize.getHeight()) {
                return vungleAdSize;
            }
            VungleAdSize vungleAdSize2 = VungleAdSize.BANNER_LEADERBOARD;
            if (i10 >= vungleAdSize2.getWidth() && i11 >= vungleAdSize2.getHeight()) {
                return vungleAdSize2;
            }
            VungleAdSize vungleAdSize3 = VungleAdSize.BANNER;
            if (i10 >= vungleAdSize3.getWidth() && i11 >= vungleAdSize3.getHeight()) {
                return vungleAdSize3;
            }
            VungleAdSize vungleAdSize4 = VungleAdSize.BANNER_SHORT;
            if (i10 >= vungleAdSize4.getWidth() && i11 >= vungleAdSize4.getHeight()) {
                return vungleAdSize4;
            }
            return getAdSizeWithWidthAndHeight(i10, i11);
        }

        private Companion() {
        }
    }

    public VungleAdSize(int i10, int i11) {
        this.width = i10;
        this.height = i11;
    }

    @NotNull
    public static final VungleAdSize getAdSizeWithWidth(@NotNull Context context, int i10) {
        return Companion.getAdSizeWithWidth(context, i10);
    }

    @NotNull
    public static final VungleAdSize getAdSizeWithWidthAndHeight(int i10, int i11) {
        return Companion.getAdSizeWithWidthAndHeight(i10, i11);
    }

    @NotNull
    public static final VungleAdSize getValidAdSizeFromSize(int i10, int i11, @NotNull String str) {
        return Companion.getValidAdSizeFromSize(i10, i11, str);
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getWidth() {
        return this.width;
    }

    public final boolean isAdaptiveHeight$vungle_ads_release() {
        return this.isAdaptiveHeight;
    }

    public final boolean isAdaptiveWidth$vungle_ads_release() {
        return this.isAdaptiveWidth;
    }

    public final boolean isValidSize$vungle_ads_release() {
        if (this.width >= 0 && this.height >= 0) {
            return true;
        }
        return false;
    }

    public final void setAdaptiveHeight$vungle_ads_release(boolean z10) {
        this.isAdaptiveHeight = z10;
    }

    public final void setAdaptiveWidth$vungle_ads_release(boolean z10) {
        this.isAdaptiveWidth = z10;
    }

    @NotNull
    public String toString() {
        return "VungleAdSize(width=" + this.width + ", height=" + this.height + ')';
    }
}
