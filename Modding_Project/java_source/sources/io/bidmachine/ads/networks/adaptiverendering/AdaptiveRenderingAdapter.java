package io.bidmachine.ads.networks.adaptiverendering;

import android.content.Context;
import bm.c;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.HeaderBiddingAdRequestParams;
import io.bidmachine.HeaderBiddingAdapter;
import io.bidmachine.HeaderBiddingCollectParamsCallback;
import io.bidmachine.InitializationParams;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfigParams;
import io.bidmachine.NetworkInitializationCallback;
import io.bidmachine.iab.mraid.i;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import pp.f;
import xq.d;
import xq.e;
import xq.h;
/* compiled from: AdaptiveRenderingAdapter.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdaptiveRenderingAdapter extends HeaderBiddingAdapter {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f53602a = new a(null);

    /* compiled from: AdaptiveRenderingAdapter.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public AdaptiveRenderingAdapter() {
        super("adaptive_rendering", "3.4.0", "3.4.0.1", 1, new AdsType[]{AdsType.Banner, AdsType.Interstitial, AdsType.Rewarded});
    }

    @Override // io.bidmachine.NetworkAdapter
    @NotNull
    public e createBanner() {
        return new bm.a();
    }

    @Override // io.bidmachine.NetworkAdapter
    @NotNull
    public h createInterstitial() {
        return new c();
    }

    @Override // io.bidmachine.NetworkAdapter
    @NotNull
    public h createRewarded() {
        return new c();
    }

    @Override // io.bidmachine.NetworkAdapter
    protected boolean isNetworkInitializationStatusCheckSupported() {
        return false;
    }

    @Override // io.bidmachine.NetworkAdapter
    protected boolean isNetworkInitialized(@NotNull ContextProvider contextProvider) throws Throwable {
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        return false;
    }

    @Override // io.bidmachine.HeaderBiddingAdapter
    protected void onCollectHeaderBiddingParams(@NotNull ContextProvider contextProvider, @NotNull d adRequestParams, @NotNull NetworkAdUnit networkAdUnit, @NotNull HeaderBiddingAdRequestParams hbAdRequestParams, @NotNull HeaderBiddingCollectParamsCallback collectCallback) throws Throwable {
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        Intrinsics.checkNotNullParameter(adRequestParams, "adRequestParams");
        Intrinsics.checkNotNullParameter(networkAdUnit, "networkAdUnit");
        Intrinsics.checkNotNullParameter(hbAdRequestParams, "hbAdRequestParams");
        Intrinsics.checkNotNullParameter(collectCallback, "collectCallback");
        HashMap hashMap = new HashMap();
        String[] b10 = i.b(contextProvider.getApplicationContext());
        Intrinsics.checkNotNullExpressionValue(b10, "getSupportedFeatures(con….getApplicationContext())");
        hashMap.put("features", n.U0(b10, ",", null, null, 0, null, null, 62, null));
        collectCallback.onCollectFinished(hashMap);
    }

    @Override // io.bidmachine.NetworkAdapter
    protected void onNetworkInitialize(@NotNull ContextProvider contextProvider, @NotNull InitializationParams initializationParams, @NotNull NetworkConfigParams networkConfigParams, @NotNull NetworkInitializationCallback callback) throws Throwable {
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        Intrinsics.checkNotNullParameter(initializationParams, "initializationParams");
        Intrinsics.checkNotNullParameter(networkConfigParams, "networkConfigParams");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Context applicationContext = contextProvider.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "contextProvider.getApplicationContext()");
        ym.a.f(applicationContext);
        f.b(applicationContext);
        callback.onSuccess();
    }

    @Override // io.bidmachine.NetworkAdapter
    public void setLogging(boolean z10) throws Throwable {
        f.c(z10);
    }
}
