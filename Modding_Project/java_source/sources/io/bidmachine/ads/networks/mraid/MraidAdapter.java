package io.bidmachine.ads.networks.mraid;

import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.HeaderBiddingAdRequestParams;
import io.bidmachine.HeaderBiddingAdapter;
import io.bidmachine.HeaderBiddingCollectParamsCallback;
import io.bidmachine.InitializationParams;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfigParams;
import io.bidmachine.NetworkInitializationCallback;
import io.bidmachine.iab.mraid.MraidType;
import io.bidmachine.iab.utils.Logger;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes7.dex */
public class MraidAdapter extends HeaderBiddingAdapter {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicBoolean f53829a = new AtomicBoolean(false);

    public MraidAdapter() {
        super(CampaignEx.JSON_KEY_MRAID, "3.4.0", "3.4.0.1", 1, new AdsType[]{AdsType.Banner, AdsType.Interstitial, AdsType.Rewarded});
    }

    @Override // io.bidmachine.NetworkAdapter
    public xq.e createBanner() {
        return new a();
    }

    @Override // io.bidmachine.NetworkAdapter
    public xq.h createInterstitial() {
        return new g(MraidType.Static);
    }

    @Override // io.bidmachine.NetworkAdapter
    public xq.h createRewarded() {
        return new g(MraidType.Rewarded);
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
        if (f53829a.compareAndSet(false, true)) {
            rm.b.b(new rm.c());
        }
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
        io.bidmachine.iab.mraid.h.g(logLevel);
    }
}
