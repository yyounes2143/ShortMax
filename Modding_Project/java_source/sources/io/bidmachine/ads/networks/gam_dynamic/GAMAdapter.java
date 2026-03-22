package io.bidmachine.ads.networks.gam_dynamic;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.applovin.mediation.adapters.bidmachine.BuildConfig;
import com.explorestack.protobuf.Struct;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.ExtraParamsManager;
import io.bidmachine.HeaderBiddingAdRequestParams;
import io.bidmachine.HeaderBiddingAdapter;
import io.bidmachine.HeaderBiddingCollectParamsCallback;
import io.bidmachine.InitializationParams;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfigParams;
import io.bidmachine.NetworkInitializationCallback;
import io.bidmachine.protobuf.Waterfall;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes7.dex */
public class GAMAdapter extends HeaderBiddingAdapter {
    @Nullable
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    o f53721a;

    @VisibleForTesting
    /* loaded from: classes7.dex */
    static class a extends hm.t {
        public a(@NonNull String str, @NonNull String str2) {
            super(str, str2);
        }

        @Override // hm.s
        @Nullable
        public Struct b(@NonNull Context context) {
            return ExtraParamsManager.get().getPrivateStruct(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GAMAdapter(@NonNull String str) {
        this(str, "null", BuildConfig.VERSION_NAME, 16);
    }

    @NonNull
    public String a() {
        return "GAMDynamic";
    }

    @Nullable
    @VisibleForTesting
    Waterfall.Context b(@NonNull String str) {
        try {
            return Waterfall.Context.parseFrom(Base64.decode(str, 0));
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // io.bidmachine.NetworkAdapter
    public void clearAuction(@NonNull NetworkAdUnit networkAdUnit) throws Throwable {
        o oVar = this.f53721a;
        if (oVar != null) {
            oVar.b(networkAdUnit);
        }
    }

    @Override // io.bidmachine.NetworkAdapter
    public xq.e createBanner() {
        o oVar = this.f53721a;
        if (oVar != null) {
            return new h(oVar);
        }
        throw new IllegalArgumentException("GAMNetwork is null");
    }

    @Override // io.bidmachine.NetworkAdapter
    public xq.h createInterstitial() {
        o oVar = this.f53721a;
        if (oVar != null) {
            return new n(oVar);
        }
        throw new IllegalArgumentException("GAMNetwork is null");
    }

    @Override // io.bidmachine.NetworkAdapter
    public xq.h createRewarded() {
        o oVar = this.f53721a;
        if (oVar != null) {
            return new t(oVar);
        }
        throw new IllegalArgumentException("GAMNetwork is null");
    }

    @Override // io.bidmachine.NetworkAdapter
    @Nullable
    public String getNetworkSdkVersion() throws Throwable {
        o oVar = this.f53721a;
        if (oVar != null) {
            return oVar.getVersion();
        }
        return null;
    }

    @Override // io.bidmachine.NetworkAdapter
    protected boolean isNetworkInitializationStatusCheckSupported() {
        return true;
    }

    @Override // io.bidmachine.NetworkAdapter
    protected boolean isNetworkInitialized(@NonNull ContextProvider contextProvider) throws Throwable {
        o oVar = this.f53721a;
        if (oVar != null && oVar.isInitialized()) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.HeaderBiddingAdapter
    protected void onCollectHeaderBiddingParams(@NonNull ContextProvider contextProvider, @NonNull xq.d dVar, @NonNull NetworkAdUnit networkAdUnit, @NonNull HeaderBiddingAdRequestParams headerBiddingAdRequestParams, @NonNull HeaderBiddingCollectParamsCallback headerBiddingCollectParamsCallback) throws Throwable {
        o oVar = this.f53721a;
        if (oVar == null) {
            headerBiddingCollectParamsCallback.onCollectFail(fr.a.a("GAM network is null"));
            return;
        }
        hm.j f10 = oVar.f(networkAdUnit, networkAdUnit.getAdsFormat());
        if (f10 == null) {
            headerBiddingCollectParamsCallback.onCollectFail(fr.a.a("Can't find idle ad"));
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("ad_unit_id", f10.getAdUnitId());
        hashMap.put("price", String.valueOf(f10.getPrice()));
        for (Map.Entry<String, Object> entry : f10.getCustomParamsMap().entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (!TextUtils.isEmpty(key) && value != null) {
                hashMap.put(key, String.valueOf(value));
            }
        }
        headerBiddingCollectParamsCallback.onCollectFinished(hashMap);
    }

    @Override // io.bidmachine.NetworkAdapter
    public void onLossAuction(@NonNull NetworkAdUnit networkAdUnit) throws Throwable {
        o oVar = this.f53721a;
        if (oVar != null) {
            oVar.b(networkAdUnit);
        }
    }

    @Override // io.bidmachine.NetworkAdapter
    protected void onNetworkInitialize(@NonNull ContextProvider contextProvider, @NonNull InitializationParams initializationParams, @NonNull NetworkConfigParams networkConfigParams, @NonNull NetworkInitializationCallback networkInitializationCallback) throws Throwable {
        String removeFromNetworkParams = networkConfigParams.removeFromNetworkParams("supported_versions_range");
        if (TextUtils.isEmpty(removeFromNetworkParams)) {
            networkInitializationCallback.onFail("supported_versions_range not provided");
            return;
        }
        im.b c10 = VersionManager.c(removeFromNetworkParams);
        if (c10 == null) {
            networkInitializationCallback.onFail("Unsupported GAM version (VersionWrapper not found)");
            return;
        }
        Context applicationContext = contextProvider.getApplicationContext();
        if (!c10.d(applicationContext)) {
            networkInitializationCallback.onFail("GAM is absent or used unsupported version");
            return;
        }
        String removeFromNetworkParams2 = networkConfigParams.removeFromNetworkParams("context");
        if (TextUtils.isEmpty(removeFromNetworkParams2)) {
            networkInitializationCallback.onFail("context not provided");
            return;
        }
        Waterfall.Context b10 = b(removeFromNetworkParams2);
        if (b10 == null) {
            networkInitializationCallback.onFail("context can't transform to model");
            return;
        }
        s sVar = new s(applicationContext, new a(getKey(), a()), b10, c10);
        this.f53721a = sVar;
        sVar.init(applicationContext);
        this.f53721a.a();
        networkInitializationCallback.onSuccess();
    }

    protected GAMAdapter(@NonNull String str, @NonNull String str2, @NonNull String str3, int i10) {
        this(str, str2, str3, i10, new AdsType[]{AdsType.Banner, AdsType.Interstitial, AdsType.Rewarded});
    }

    protected GAMAdapter(@NonNull String str, @NonNull String str2, @NonNull String str3, int i10, @NonNull AdsType[] adsTypeArr) {
        super(str, str2, str3, i10, adsTypeArr);
    }
}
