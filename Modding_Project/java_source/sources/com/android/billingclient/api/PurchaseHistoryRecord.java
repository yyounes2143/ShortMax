package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public class PurchaseHistoryRecord {

    /* renamed from: a  reason: collision with root package name */
    private final String f6554a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6555b;

    /* renamed from: c  reason: collision with root package name */
    private final JSONObject f6556c;

    public PurchaseHistoryRecord(@NonNull String str, @NonNull String str2) throws JSONException {
        this.f6554a = str;
        this.f6555b = str2;
        this.f6556c = new JSONObject(str);
    }

    private final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        JSONObject jSONObject = this.f6556c;
        if (jSONObject.has("productIds")) {
            JSONArray optJSONArray = jSONObject.optJSONArray("productIds");
            if (optJSONArray != null) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    arrayList.add(optJSONArray.optString(i10));
                }
            }
        } else if (jSONObject.has(InAppPurchaseMetaData.KEY_PRODUCT_ID)) {
            arrayList.add(jSONObject.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID));
        }
        return arrayList;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PurchaseHistoryRecord)) {
            return false;
        }
        PurchaseHistoryRecord purchaseHistoryRecord = (PurchaseHistoryRecord) obj;
        if (TextUtils.equals(this.f6554a, purchaseHistoryRecord.getOriginalJson()) && TextUtils.equals(this.f6555b, purchaseHistoryRecord.getSignature())) {
            return true;
        }
        return false;
    }

    @NonNull
    public String getDeveloperPayload() {
        return this.f6556c.optString("developerPayload");
    }

    @NonNull
    public String getOriginalJson() {
        return this.f6554a;
    }

    @NonNull
    public List<String> getProducts() {
        return a();
    }

    public long getPurchaseTime() {
        return this.f6556c.optLong("purchaseTime");
    }

    @NonNull
    public String getPurchaseToken() {
        JSONObject jSONObject = this.f6556c;
        return jSONObject.optString(BidResponsed.KEY_TOKEN, jSONObject.optString("purchaseToken"));
    }

    public int getQuantity() {
        return this.f6556c.optInt("quantity", 1);
    }

    @NonNull
    public String getSignature() {
        return this.f6555b;
    }

    @NonNull
    @Deprecated
    public ArrayList<String> getSkus() {
        return a();
    }

    public int hashCode() {
        return this.f6554a.hashCode();
    }

    @NonNull
    public String toString() {
        return "PurchaseHistoryRecord. Json: ".concat(String.valueOf(this.f6554a));
    }
}
