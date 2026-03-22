package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
@Deprecated
/* loaded from: classes2.dex */
public class SkuDetails {

    /* renamed from: a  reason: collision with root package name */
    private final String f6568a;

    /* renamed from: b  reason: collision with root package name */
    private final JSONObject f6569b;

    public SkuDetails(@NonNull String str) throws JSONException {
        this.f6568a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f6569b = jSONObject;
        if (!TextUtils.isEmpty(jSONObject.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID))) {
            if (!TextUtils.isEmpty(jSONObject.optString("type"))) {
                return;
            }
            throw new IllegalArgumentException("SkuType cannot be empty.");
        }
        throw new IllegalArgumentException("SKU cannot be empty.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a() {
        return this.f6569b.optString("skuDetailsToken");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SkuDetails)) {
            return false;
        }
        return TextUtils.equals(this.f6568a, ((SkuDetails) obj).f6568a);
    }

    @NonNull
    public String getDescription() {
        return this.f6569b.optString(InMobiNetworkValues.DESCRIPTION);
    }

    @NonNull
    public String getFreeTrialPeriod() {
        return this.f6569b.optString("freeTrialPeriod");
    }

    @NonNull
    public String getIconUrl() {
        return this.f6569b.optString("iconUrl");
    }

    @NonNull
    public String getIntroductoryPrice() {
        return this.f6569b.optString("introductoryPrice");
    }

    public long getIntroductoryPriceAmountMicros() {
        return this.f6569b.optLong("introductoryPriceAmountMicros");
    }

    public int getIntroductoryPriceCycles() {
        return this.f6569b.optInt("introductoryPriceCycles");
    }

    @NonNull
    public String getIntroductoryPricePeriod() {
        return this.f6569b.optString("introductoryPricePeriod");
    }

    @NonNull
    public String getOriginalJson() {
        return this.f6568a;
    }

    @NonNull
    public String getOriginalPrice() {
        JSONObject jSONObject = this.f6569b;
        if (jSONObject.has("original_price")) {
            return jSONObject.optString("original_price");
        }
        return getPrice();
    }

    public long getOriginalPriceAmountMicros() {
        JSONObject jSONObject = this.f6569b;
        if (jSONObject.has("original_price_micros")) {
            return jSONObject.optLong("original_price_micros");
        }
        return getPriceAmountMicros();
    }

    @NonNull
    public String getPrice() {
        return this.f6569b.optString("price");
    }

    public long getPriceAmountMicros() {
        return this.f6569b.optLong("price_amount_micros");
    }

    @NonNull
    public String getPriceCurrencyCode() {
        return this.f6569b.optString("price_currency_code");
    }

    @NonNull
    public String getSku() {
        return this.f6569b.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
    }

    @NonNull
    public String getSubscriptionPeriod() {
        return this.f6569b.optString("subscriptionPeriod");
    }

    @NonNull
    public String getTitle() {
        return this.f6569b.optString("title");
    }

    @NonNull
    public String getType() {
        return this.f6569b.optString("type");
    }

    public int hashCode() {
        return this.f6568a.hashCode();
    }

    @NonNull
    public String toString() {
        return "SkuDetails: ".concat(String.valueOf(this.f6568a));
    }

    public int zza() {
        return this.f6569b.optInt(CampaignEx.JSON_KEY_OFFER_TYPE);
    }

    @NonNull
    public String zzb() {
        return this.f6569b.optString("offer_id");
    }

    @NonNull
    public String zzc() {
        JSONObject jSONObject = this.f6569b;
        String optString = jSONObject.optString("offerIdToken");
        if (optString.isEmpty()) {
            return jSONObject.optString("offer_id_token");
        }
        return optString;
    }

    @NonNull
    public final String zzd() {
        return this.f6569b.optString("packageName");
    }

    @NonNull
    public String zze() {
        return this.f6569b.optString("serializedDocid");
    }
}
