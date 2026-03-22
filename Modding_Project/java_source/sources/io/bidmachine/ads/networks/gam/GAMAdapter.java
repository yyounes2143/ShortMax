package io.bidmachine.ads.networks.gam;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.mmkv.MMKV;
import io.bidmachine.AdsFormat;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.HeaderBiddingAdRequestParams;
import io.bidmachine.HeaderBiddingAdapter;
import io.bidmachine.HeaderBiddingCollectParamsCallback;
import io.bidmachine.InitializationParams;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfigParams;
import io.bidmachine.NetworkInitializationCallback;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes7.dex */
public class GAMAdapter extends HeaderBiddingAdapter {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private o f53640a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GAMAdapter() {
        this("gam", "null", "3.4.0.3", 16);
    }

    @Nullable
    private Map<AdsFormat, r> b(@NonNull String str) {
        r a10;
        HashMap hashMap = new HashMap();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                if (optJSONObject != null && (a10 = s.a(optJSONObject)) != null) {
                    hashMap.put(a10.a(), a10);
                }
            }
            return hashMap;
        } catch (Throwable unused) {
            return null;
        }
    }

    @NonNull
    public String a() {
        return "GAM";
    }

    @Override // io.bidmachine.NetworkAdapter
    public void clearAuction(@NonNull NetworkAdUnit networkAdUnit) throws Throwable {
        o oVar = this.f53640a;
        if (oVar != null) {
            oVar.r(networkAdUnit);
        }
    }

    @Override // io.bidmachine.NetworkAdapter
    public xq.e createBanner() {
        if (this.f53640a != null) {
            return new a(this.f53640a);
        }
        throw new IllegalArgumentException("GAMNetwork is null");
    }

    @Override // io.bidmachine.NetworkAdapter
    public xq.h createInterstitial() {
        if (this.f53640a != null) {
            return new d(this.f53640a);
        }
        throw new IllegalArgumentException("GAMNetwork is null");
    }

    @Override // io.bidmachine.NetworkAdapter
    public xq.h createRewarded() {
        if (this.f53640a != null) {
            return new q(this.f53640a);
        }
        throw new IllegalArgumentException("GAMNetwork is null");
    }

    @Override // io.bidmachine.NetworkAdapter
    @Nullable
    public String getNetworkSdkVersion() throws Throwable {
        o oVar = this.f53640a;
        if (oVar != null) {
            return oVar.f();
        }
        return null;
    }

    @Override // io.bidmachine.NetworkAdapter
    protected boolean isNetworkInitializationStatusCheckSupported() {
        return true;
    }

    @Override // io.bidmachine.NetworkAdapter
    protected boolean isNetworkInitialized(@NonNull ContextProvider contextProvider) throws Throwable {
        o oVar = this.f53640a;
        if (oVar != null && oVar.h()) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.HeaderBiddingAdapter
    protected void onCollectHeaderBiddingParams(@NonNull ContextProvider contextProvider, @NonNull xq.d dVar, @NonNull NetworkAdUnit networkAdUnit, @NonNull HeaderBiddingAdRequestParams headerBiddingAdRequestParams, @NonNull HeaderBiddingCollectParamsCallback headerBiddingCollectParamsCallback) throws Throwable {
        String mediationParameter = networkAdUnit.getMediationParameter("ad_unit_id");
        if (TextUtils.isEmpty(mediationParameter)) {
            headerBiddingCollectParamsCallback.onCollectFail(fr.a.b("ad_unit_id"));
            return;
        }
        o oVar = this.f53640a;
        if (oVar == null) {
            headerBiddingCollectParamsCallback.onCollectFail(fr.a.a("GAM network is null"));
            return;
        }
        t q10 = oVar.q(networkAdUnit, mediationParameter);
        this.f53640a.e(dVar.getAdRequestParameters().getAdsFormat());
        if (q10 == null) {
            headerBiddingCollectParamsCallback.onCollectFail(fr.a.a("Can't find idle ad"));
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("ad_unit_id", q10.a());
        hashMap.put("score", String.valueOf(q10.d()));
        hashMap.put("price", String.valueOf(q10.c()));
        headerBiddingCollectParamsCallback.onCollectFinished(hashMap);
    }

    @Override // io.bidmachine.NetworkAdapter
    public void onLossAuction(@NonNull NetworkAdUnit networkAdUnit) throws Throwable {
        o oVar = this.f53640a;
        if (oVar != null) {
            oVar.r(networkAdUnit);
        }
    }

    @Override // io.bidmachine.NetworkAdapter
    protected void onNetworkInitialize(@NonNull ContextProvider contextProvider, @NonNull InitializationParams initializationParams, @NonNull NetworkConfigParams networkConfigParams, @NonNull NetworkInitializationCallback networkInitializationCallback) throws Throwable {
        String removeFromNetworkParams = networkConfigParams.removeFromNetworkParams("supported_versions_range");
        if (TextUtils.isEmpty(removeFromNetworkParams)) {
            networkInitializationCallback.onFail("supported_versions_range not provided");
            return;
        }
        dm.b c10 = p0.c(removeFromNetworkParams);
        if (c10 == null) {
            networkInitializationCallback.onFail("Unsupported GAM version (VersionWrapper not found)");
            return;
        }
        Context applicationContext = contextProvider.getApplicationContext();
        if (!c10.d(applicationContext)) {
            networkInitializationCallback.onFail("GAM is absent or used unsupported version");
            return;
        }
        String removeFromNetworkParams2 = networkConfigParams.removeFromNetworkParams("waterfall_configurations");
        if (TextUtils.isEmpty(removeFromNetworkParams2)) {
            networkInitializationCallback.onFail("waterfall_configurations not provided");
            return;
        }
        Map<AdsFormat, r> b10 = b(removeFromNetworkParams2);
        if (b10 != null && !b10.isEmpty()) {
            String removeFromNetworkParams3 = networkConfigParams.removeFromNetworkParams("request_agent");
            int f02 = io.bidmachine.core.g.f0(networkConfigParams.removeFromNetworkParams("expiration_time"), MMKV.ExpireInHour);
            o oVar = new o(applicationContext, c10, a(), b10, removeFromNetworkParams3, TimeUnit.SECONDS.toMillis(f02), Boolean.parseBoolean(networkConfigParams.removeFromNetworkParams("override_callbacks")));
            this.f53640a = oVar;
            oVar.g(applicationContext);
            this.f53640a.d();
            networkInitializationCallback.onSuccess();
            return;
        }
        networkInitializationCallback.onFail("waterfall_configurations is empty");
    }

    protected GAMAdapter(@NonNull String str, @NonNull String str2, @NonNull String str3, int i10) {
        this(str, str2, str3, i10, new AdsType[]{AdsType.Banner, AdsType.Interstitial, AdsType.Rewarded});
    }

    protected GAMAdapter(@NonNull String str, @NonNull String str2, @NonNull String str3, int i10, @NonNull AdsType[] adsTypeArr) {
        super(str, str2, str3, i10, adsTypeArr);
    }
}
