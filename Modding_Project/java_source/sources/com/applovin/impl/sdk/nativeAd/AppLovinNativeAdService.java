package com.applovin.impl.sdk.nativeAd;

import android.text.TextUtils;
import com.applovin.impl.b6;
import com.applovin.impl.e6;
import com.applovin.impl.g5;
import com.applovin.impl.k;
import com.applovin.impl.q2;
import com.applovin.impl.r0;
import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.v5;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AppLovinNativeAdService {
    private static final String TAG = "AppLovinNativeAdService";
    private final o logger;
    private final k sdk;

    public AppLovinNativeAdService(k kVar) {
        this.sdk = kVar;
        this.logger = kVar.O();
    }

    public void loadNextAdForAdToken(String str, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        String str2;
        if (str != null) {
            str2 = str.trim();
        } else {
            str2 = null;
        }
        if (TextUtils.isEmpty(str2)) {
            o.h(TAG, "Empty ad token");
            q2.b(appLovinNativeAdLoadListener, new AppLovinError(-8, "Empty ad token"));
            return;
        }
        com.applovin.impl.k kVar = new com.applovin.impl.k(str2, this.sdk);
        if (kVar.c() == k.a.REGULAR) {
            if (o.a()) {
                this.logger.a(TAG, "Loading next ad for token: " + kVar);
            }
            this.sdk.r0().a((g5) new v5(kVar, appLovinNativeAdLoadListener, this.sdk), b6.b.CORE);
        } else if (kVar.c() == k.a.AD_RESPONSE_JSON) {
            JSONObject a10 = kVar.a();
            if (a10 != null) {
                r0.c(a10, this.sdk);
                r0.b(a10, this.sdk);
                r0.a(a10, this.sdk);
                if (JsonUtils.getJSONArray(a10, com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, new JSONArray()).length() > 0) {
                    if (o.a()) {
                        this.logger.a(TAG, "Rendering ad for token: " + kVar);
                    }
                    this.sdk.r0().a((g5) new e6(a10, appLovinNativeAdLoadListener, this.sdk), b6.b.CORE);
                    return;
                }
                if (o.a()) {
                    this.logger.b(TAG, "No ad returned from the server for token: " + kVar);
                }
                q2.b(appLovinNativeAdLoadListener, AppLovinError.NO_FILL);
                return;
            }
            String str3 = "Unable to retrieve ad response JSON from token: " + kVar.b();
            AppLovinError appLovinError = new AppLovinError(-8, str3);
            o.h(TAG, str3);
            q2.b(appLovinNativeAdLoadListener, appLovinError);
        } else {
            AppLovinError appLovinError2 = new AppLovinError(-8, "Invalid token type");
            o.h(TAG, "Invalid token type");
            q2.b(appLovinNativeAdLoadListener, appLovinError2);
        }
    }
}
