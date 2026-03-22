package com.vungle.ads;

import android.app.Application;
import android.content.Context;
import com.vungle.ads.fpd.FirstPartyData;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.VungleInitializer;
import com.vungle.ads.internal.VungleInternal;
import com.vungle.ads.internal.model.Placement;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VungleAds.kt */
@Metadata
/* loaded from: classes7.dex */
public final class VungleAds {
    @NotNull
    public static final String TAG = "VungleAds";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static VungleInternal vungleInternal = new VungleInternal();
    @NotNull
    private static VungleInitializer initializer = new VungleInitializer();
    @NotNull
    public static final FirstPartyData firstPartyData = new FirstPartyData();

    /* compiled from: VungleAds.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void deInit(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            VungleAds.initializer.deInit$vungle_ads_release();
        }

        @ms.c
        @Nullable
        public final String getBiddingToken(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return VungleAds.vungleInternal.getAvailableBidTokens(context);
        }

        @NotNull
        public final String getSdkVersion() {
            return VungleAds.vungleInternal.getSdkVersion();
        }

        public final void init(@NotNull Context appContext, @NotNull String appId, @NotNull InitializationListener callback) {
            Intrinsics.checkNotNullParameter(appContext, "context");
            Intrinsics.checkNotNullParameter(appId, "appId");
            Intrinsics.checkNotNullParameter(callback, "callback");
            if (!(appContext instanceof Application)) {
                appContext = appContext.getApplicationContext();
            }
            VungleInitializer vungleInitializer = VungleAds.initializer;
            Intrinsics.checkNotNullExpressionValue(appContext, "appContext");
            vungleInitializer.init(appId, appContext, callback);
        }

        public final boolean isInitialized() {
            return VungleAds.initializer.isInitialized();
        }

        public final boolean isInline(@NotNull String placementId) {
            Intrinsics.checkNotNullParameter(placementId, "placementId");
            Placement placement = ConfigManager.INSTANCE.getPlacement(placementId);
            if (placement != null) {
                return placement.isInline();
            }
            return false;
        }

        public final void setIntegrationName(@NotNull VungleWrapperFramework wrapperFramework, @NotNull String wrapperFrameworkVersion) {
            Intrinsics.checkNotNullParameter(wrapperFramework, "wrapperFramework");
            Intrinsics.checkNotNullParameter(wrapperFrameworkVersion, "wrapperFrameworkVersion");
            VungleAds.initializer.setIntegrationName(wrapperFramework, wrapperFrameworkVersion);
        }

        private Companion() {
        }

        public final void getBiddingToken(@NotNull Context context, @NotNull BidTokenCallback callback) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(callback, "callback");
            VungleAds.vungleInternal.getAvailableBidTokensAsync(context, callback);
        }
    }

    public static final void deInit(@NotNull Context context) {
        Companion.deInit(context);
    }

    @ms.c
    @Nullable
    public static final String getBiddingToken(@NotNull Context context) {
        return Companion.getBiddingToken(context);
    }

    @NotNull
    public static final String getSdkVersion() {
        return Companion.getSdkVersion();
    }

    public static final void init(@NotNull Context context, @NotNull String str, @NotNull InitializationListener initializationListener) {
        Companion.init(context, str, initializationListener);
    }

    public static final boolean isInitialized() {
        return Companion.isInitialized();
    }

    public static final boolean isInline(@NotNull String str) {
        return Companion.isInline(str);
    }

    public static final void setIntegrationName(@NotNull VungleWrapperFramework vungleWrapperFramework, @NotNull String str) {
        Companion.setIntegrationName(vungleWrapperFramework, str);
    }

    public static final void getBiddingToken(@NotNull Context context, @NotNull BidTokenCallback bidTokenCallback) {
        Companion.getBiddingToken(context, bidTokenCallback);
    }
}
