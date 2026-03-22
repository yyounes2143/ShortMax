package com.vungle.ads.internal.load;

import android.content.Context;
import com.vungle.ads.AdRetryActiveError;
import com.vungle.ads.NetworkTimeoutError;
import com.vungle.ads.NetworkUnreachable;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.network.Call;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.omsdk.OMInjector;
import com.vungle.ads.internal.util.PathProvider;
import java.net.SocketTimeoutException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DefaultAdLoader.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DefaultAdLoader extends BaseAdLoader {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultAdLoader(@NotNull Context context, @NotNull VungleApiClient vungleApiClient, @NotNull Executors sdkExecutors, @NotNull OMInjector omInjector, @NotNull Downloader downloader, @NotNull PathProvider pathProvider, @NotNull AdRequest adRequest) {
        super(context, vungleApiClient, sdkExecutors, omInjector, downloader, pathProvider, adRequest);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(vungleApiClient, "vungleApiClient");
        Intrinsics.checkNotNullParameter(sdkExecutors, "sdkExecutors");
        Intrinsics.checkNotNullParameter(omInjector, "omInjector");
        Intrinsics.checkNotNullParameter(downloader, "downloader");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
    }

    private final void fetchAdMetadata(VungleAdSize vungleAdSize, Placement placement) {
        if (getVungleApiClient().checkIsRetryAfterActive(placement.getReferenceId())) {
            onAdLoadFailed(new AdRetryActiveError().setLogEntry$vungle_ads_release(getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
            return;
        }
        Call<AdPayload> requestAd = getVungleApiClient().requestAd(placement.getReferenceId(), vungleAdSize);
        if (requestAd == null) {
            onAdLoadFailed(new NetworkUnreachable("adsCall is null").setLogEntry$vungle_ads_release(getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
        } else {
            requestAd.enqueue(new DefaultAdLoader$fetchAdMetadata$1(this, placement));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VungleError retrofitToVungleError(Throwable th2) {
        String str;
        if (th2 instanceof SocketTimeoutException) {
            return new NetworkTimeoutError();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ads request fail: ");
        if (th2 != null) {
            str = th2.getMessage();
        } else {
            str = null;
        }
        sb2.append(str);
        return new NetworkUnreachable(sb2.toString());
    }

    @Override // com.vungle.ads.internal.load.BaseAdLoader
    protected void requestAd() {
        fetchAdMetadata(getAdRequest().getRequestAdSize(), getAdRequest().getPlacement());
    }

    @Override // com.vungle.ads.internal.load.BaseAdLoader
    public void onAdLoadReady() {
    }
}
