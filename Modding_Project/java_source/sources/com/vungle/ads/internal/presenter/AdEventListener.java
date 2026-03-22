package com.vungle.ads.internal.presenter;

import com.vungle.ads.VungleError;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.util.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdEventListener.kt */
@Metadata
/* loaded from: classes7.dex */
public class AdEventListener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "AdEventListener";
    private boolean adRewarded;
    @Nullable
    private Placement placement;
    @Nullable
    private final AdPlayCallback playAdCallback;

    /* compiled from: AdEventListener.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public AdEventListener(@Nullable AdPlayCallback adPlayCallback, @Nullable Placement placement) {
        this.playAdCallback = adPlayCallback;
        this.placement = placement;
    }

    public final void onError(@NotNull VungleError error, @Nullable String str) {
        Intrinsics.checkNotNullParameter(error, "error");
        AdPlayCallback adPlayCallback = this.playAdCallback;
        if (adPlayCallback != null) {
            adPlayCallback.onFailure(error);
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "AdEventListener#PlayAdCallback " + str, error);
        }
    }

    public final void onNext(@NotNull String s10, @Nullable String str, @Nullable String str2) {
        Placement placement;
        AdPlayCallback adPlayCallback;
        AdPlayCallback adPlayCallback2;
        AdPlayCallback adPlayCallback3;
        AdPlayCallback adPlayCallback4;
        Intrinsics.checkNotNullParameter(s10, "s");
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "s=" + s10 + ", value=" + str + ", id=" + str2);
        switch (s10.hashCode()) {
            case -1912374177:
                if (s10.equals(MRAIDPresenter.SUCCESSFUL_VIEW) && (placement = this.placement) != null && placement.isRewardedVideo() && !this.adRewarded) {
                    this.adRewarded = true;
                    AdPlayCallback adPlayCallback5 = this.playAdCallback;
                    if (adPlayCallback5 != null) {
                        adPlayCallback5.onAdRewarded(str2);
                        return;
                    }
                    return;
                }
                return;
            case -1627831289:
                if (s10.equals("adViewed") && (adPlayCallback = this.playAdCallback) != null) {
                    adPlayCallback.onAdImpression(str2);
                    return;
                }
                return;
            case 100571:
                if (s10.equals("end") && (adPlayCallback2 = this.playAdCallback) != null) {
                    adPlayCallback2.onAdEnd(str2);
                    return;
                }
                return;
            case 3417674:
                if (s10.equals(MRAIDPresenter.OPEN)) {
                    if (Intrinsics.areEqual(str, "adClick")) {
                        AdPlayCallback adPlayCallback6 = this.playAdCallback;
                        if (adPlayCallback6 != null) {
                            adPlayCallback6.onAdClick(str2);
                            return;
                        }
                        return;
                    } else if (Intrinsics.areEqual(str, "adLeftApplication") && (adPlayCallback3 = this.playAdCallback) != null) {
                        adPlayCallback3.onAdLeftApplication(str2);
                        return;
                    } else {
                        return;
                    }
                }
                return;
            case 109757538:
                if (s10.equals("start") && (adPlayCallback4 = this.playAdCallback) != null) {
                    adPlayCallback4.onAdStart(str2);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
