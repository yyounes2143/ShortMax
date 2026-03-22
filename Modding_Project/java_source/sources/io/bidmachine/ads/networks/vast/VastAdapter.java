package io.bidmachine.ads.networks.vast;

import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.HeaderBiddingAdRequestParams;
import io.bidmachine.HeaderBiddingAdapter;
import io.bidmachine.HeaderBiddingCollectParamsCallback;
import io.bidmachine.InitializationParams;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfigParams;
import io.bidmachine.NetworkInitializationCallback;
import io.bidmachine.iab.utils.Logger;
import io.bidmachine.iab.vast.VideoType;
import java.util.HashMap;
import xq.h;
/* loaded from: classes7.dex */
public class VastAdapter extends HeaderBiddingAdapter {
    public VastAdapter() {
        super("vast", "3.4.0", "3.4.0.1", 1, new AdsType[]{AdsType.Interstitial, AdsType.Rewarded});
    }

    @Override // io.bidmachine.NetworkAdapter
    public h createInterstitial() {
        return new a(VideoType.NonRewarded);
    }

    @Override // io.bidmachine.NetworkAdapter
    public h createRewarded() {
        return new a(VideoType.Rewarded);
    }

    @Override // io.bidmachine.NetworkAdapter
    protected boolean isNetworkInitializationStatusCheckSupported() {
        return false;
    }

    @Override // io.bidmachine.NetworkAdapter
    protected boolean isNetworkInitialized(@NonNull ContextProvider contextProvider) throws Throwable {
        return false;
    }

    @Override // io.bidmachine.HeaderBiddingAdapter
    protected void onCollectHeaderBiddingParams(@NonNull ContextProvider contextProvider, @NonNull xq.d dVar, @NonNull NetworkAdUnit networkAdUnit, @NonNull HeaderBiddingAdRequestParams headerBiddingAdRequestParams, @NonNull HeaderBiddingCollectParamsCallback headerBiddingCollectParamsCallback) throws Throwable {
        headerBiddingCollectParamsCallback.onCollectFinished(new HashMap());
    }

    @Override // io.bidmachine.NetworkAdapter
    @WorkerThread
    protected void onNetworkInitialize(@NonNull ContextProvider contextProvider, @NonNull InitializationParams initializationParams, @NonNull NetworkConfigParams networkConfigParams, @NonNull NetworkInitializationCallback networkInitializationCallback) throws Throwable {
        ym.a.f(contextProvider.getContext());
        networkInitializationCallback.onSuccess();
    }

    @Override // io.bidmachine.NetworkAdapter
    public void setLogging(boolean z10) throws Throwable {
        Logger.LogLevel logLevel;
        if (z10) {
            logLevel = Logger.LogLevel.debug;
        } else {
            logLevel = Logger.LogLevel.none;
        }
        tm.d.d(logLevel);
    }
}
