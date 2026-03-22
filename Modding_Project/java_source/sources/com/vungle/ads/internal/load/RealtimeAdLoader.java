package com.vungle.ads.internal.load;

import android.content.Context;
import com.vungle.ads.AdMarkupInvalidError;
import com.vungle.ads.InvalidBidPayloadError;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.Constants;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.network.TpatRequest;
import com.vungle.ads.internal.network.TpatSender;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.omsdk.OMInjector;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: RealtimeAdLoader.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RealtimeAdLoader extends BaseAdLoader {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealtimeAdLoader(@NotNull Context context, @NotNull VungleApiClient vungleApiClient, @NotNull Executors sdkExecutors, @NotNull OMInjector omInjector, @NotNull Downloader downloader, @NotNull PathProvider pathProvider, @NotNull AdRequest adRequest) {
        super(context, vungleApiClient, sdkExecutors, omInjector, downloader, pathProvider, adRequest);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(vungleApiClient, "vungleApiClient");
        Intrinsics.checkNotNullParameter(sdkExecutors, "sdkExecutors");
        Intrinsics.checkNotNullParameter(omInjector, "omInjector");
        Intrinsics.checkNotNullParameter(downloader, "downloader");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
    }

    /* renamed from: requestAd$lambda-0  reason: not valid java name */
    private static final VungleApiClient m4811requestAd$lambda0(i<VungleApiClient> iVar) {
        return iVar.getValue();
    }

    private final void sendWinNotification(List<String> list) {
        if (list != null && list.isEmpty()) {
            return;
        }
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = getContext();
        i a10 = kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<TpatSender>() { // from class: com.vungle.ads.internal.load.RealtimeAdLoader$sendWinNotification$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.TpatSender, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TpatSender invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(TpatSender.class);
            }
        });
        if (list != null) {
            for (String str : list) {
                TpatSender.sendTpat$default(m4812sendWinNotification$lambda2(a10), new TpatRequest.Builder(str).tpatKey(Constants.WIN_NOTIFICATION).withLogEntry(getLogEntry$vungle_ads_release()).build(), false, 2, null);
            }
        }
    }

    /* renamed from: sendWinNotification$lambda-2  reason: not valid java name */
    private static final TpatSender m4812sendWinNotification$lambda2(i<TpatSender> iVar) {
        return iVar.getValue();
    }

    @Override // com.vungle.ads.internal.load.BaseAdLoader
    public void onAdLoadReady() {
        List<String> list;
        AdPayload advertisement$vungle_ads_release = getAdvertisement$vungle_ads_release();
        if (advertisement$vungle_ads_release != null) {
            list = advertisement$vungle_ads_release.getWinNotifications();
        } else {
            list = null;
        }
        sendWinNotification(list);
    }

    @Override // com.vungle.ads.internal.load.BaseAdLoader
    protected void requestAd() {
        BidPayload adMarkup = getAdRequest().getAdMarkup();
        if (adMarkup == null) {
            onAdLoadFailed(new InvalidBidPayloadError().setLogEntry$vungle_ads_release(getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
            return;
        }
        if (ConfigManager.INSTANCE.rtaDebuggingEnabled()) {
            try {
                String decodedAdsResponse = adMarkup.getDecodedAdsResponse();
                Logger.Companion.d("RTA_DEBUGGER", String.valueOf(decodedAdsResponse));
                ServiceLocator.Companion companion = ServiceLocator.Companion;
                final Context context = getContext();
                i a10 = kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.load.RealtimeAdLoader$requestAd$$inlined$inject$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final VungleApiClient invoke() {
                        return ServiceLocator.Companion.getInstance(context).getService(VungleApiClient.class);
                    }
                });
                if (decodedAdsResponse != null) {
                    new RTADebugger(m4811requestAd$lambda0(a10)).reportAdMarkup(decodedAdsResponse);
                }
            } catch (Throwable unused) {
            }
        }
        AdPayload adPayload = adMarkup.getAdPayload();
        Integer version = adMarkup.getVersion();
        if (version != null && version.intValue() == 2 && adPayload != null) {
            handleAdMetaData$vungle_ads_release(adPayload, new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.CONFIG_LOADED_FROM_ADM_LOAD));
        } else {
            onAdLoadFailed(new AdMarkupInvalidError("The ad response did not contain valid ad markup").setLogEntry$vungle_ads_release(getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
        }
    }
}
