package com.vungle.ads.internal.load;

import com.vungle.ads.APIFailedStatusCodeError;
import com.vungle.ads.AdResponseEmptyError;
import com.vungle.ads.AdRetryError;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.network.Call;
import com.vungle.ads.internal.network.Callback;
import com.vungle.ads.internal.network.Response;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultAdLoader.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DefaultAdLoader$fetchAdMetadata$1 implements Callback<AdPayload> {
    final /* synthetic */ Placement $placement;
    final /* synthetic */ DefaultAdLoader this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultAdLoader$fetchAdMetadata$1(DefaultAdLoader defaultAdLoader, Placement placement) {
        this.this$0 = defaultAdLoader;
        this.$placement = placement;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onFailure$lambda-1  reason: not valid java name */
    public static final void m4806onFailure$lambda1(DefaultAdLoader this$0, Throwable th2) {
        VungleError retrofitToVungleError;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        retrofitToVungleError = this$0.retrofitToVungleError(th2);
        this$0.onAdLoadFailed(retrofitToVungleError.setLogEntry$vungle_ads_release(this$0.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onResponse$lambda-0  reason: not valid java name */
    public static final void m4807onResponse$lambda0(DefaultAdLoader this$0, Placement placement, Response response) {
        AdPayload adPayload;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(placement, "$placement");
        if (this$0.getVungleApiClient().getRetryAfterHeaderValue(placement.getReferenceId()) > 0) {
            this$0.onAdLoadFailed(new AdRetryError().setLogEntry$vungle_ads_release(this$0.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
        } else if (response != null && !response.isSuccessful()) {
            this$0.onAdLoadFailed(new APIFailedStatusCodeError("ads API: " + response.code()).setLogEntry$vungle_ads_release(this$0.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
        } else {
            AdPayload.AdUnit adUnit = null;
            if (response != null) {
                adPayload = (AdPayload) response.body();
            } else {
                adPayload = null;
            }
            if (adPayload != null) {
                adUnit = adPayload.adUnit();
            }
            if (adUnit == null) {
                this$0.onAdLoadFailed(new AdResponseEmptyError("Ad response is empty").setLogEntry$vungle_ads_release(this$0.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
            } else {
                this$0.handleAdMetaData$vungle_ads_release(adPayload, new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.CONFIG_LOADED_FROM_AD_LOAD));
            }
        }
    }

    @Override // com.vungle.ads.internal.network.Callback
    public void onFailure(@Nullable Call<AdPayload> call, @Nullable final Throwable th2) {
        VungleThreadPoolExecutor backgroundExecutor = this.this$0.getSdkExecutors().getBackgroundExecutor();
        final DefaultAdLoader defaultAdLoader = this.this$0;
        backgroundExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.d
            @Override // java.lang.Runnable
            public final void run() {
                DefaultAdLoader$fetchAdMetadata$1.m4806onFailure$lambda1(DefaultAdLoader.this, th2);
            }
        });
    }

    @Override // com.vungle.ads.internal.network.Callback
    public void onResponse(@Nullable Call<AdPayload> call, @Nullable final Response<AdPayload> response) {
        VungleThreadPoolExecutor backgroundExecutor = this.this$0.getSdkExecutors().getBackgroundExecutor();
        final DefaultAdLoader defaultAdLoader = this.this$0;
        final Placement placement = this.$placement;
        backgroundExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.e
            @Override // java.lang.Runnable
            public final void run() {
                DefaultAdLoader$fetchAdMetadata$1.m4807onResponse$lambda0(DefaultAdLoader.this, placement, response);
            }
        });
    }
}
