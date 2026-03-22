package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public class Purchase {

    /* renamed from: a  reason: collision with root package name */
    private final String f6550a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6551b;

    /* renamed from: c  reason: collision with root package name */
    private final JSONObject f6552c;

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    @zzn
    /* loaded from: classes2.dex */
    public static final class PendingPurchaseUpdate {

        /* renamed from: a  reason: collision with root package name */
        private final JSONObject f6553a;

        private PendingPurchaseUpdate(JSONObject jSONObject) {
            this.f6553a = jSONObject;
        }

        @NonNull
        public List<String> getProducts() {
            JSONArray optJSONArray;
            ArrayList arrayList = new ArrayList();
            if (this.f6553a.has("productIds") && (optJSONArray = this.f6553a.optJSONArray("productIds")) != null) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    arrayList.add(optJSONArray.optString(i10));
                }
            }
            return arrayList;
        }

        @NonNull
        public String getPurchaseToken() {
            return this.f6553a.optString("purchaseToken");
        }
    }

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface PurchaseState {
        public static final int PENDING = 2;
        public static final int PURCHASED = 1;
        public static final int UNSPECIFIED_STATE = 0;
    }

    public Purchase(@NonNull String str, @NonNull String str2) throws JSONException {
        this.f6550a = str;
        this.f6551b = str2;
        this.f6552c = new JSONObject(str);
    }

    private final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        JSONObject jSONObject = this.f6552c;
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
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        if (TextUtils.equals(this.f6550a, purchase.getOriginalJson()) && TextUtils.equals(this.f6551b, purchase.getSignature())) {
            return true;
        }
        return false;
    }

    @Nullable
    public AccountIdentifiers getAccountIdentifiers() {
        JSONObject jSONObject = this.f6552c;
        String optString = jSONObject.optString("obfuscatedAccountId");
        String optString2 = jSONObject.optString("obfuscatedProfileId");
        if (optString == null && optString2 == null) {
            return null;
        }
        return new AccountIdentifiers(optString, optString2);
    }

    @NonNull
    public String getDeveloperPayload() {
        return this.f6552c.optString("developerPayload");
    }

    @Nullable
    public String getOrderId() {
        String optString = this.f6552c.optString("orderId");
        if (TextUtils.isEmpty(optString)) {
            return null;
        }
        return optString;
    }

    @NonNull
    public String getOriginalJson() {
        return this.f6550a;
    }

    @NonNull
    public String getPackageName() {
        return this.f6552c.optString("packageName");
    }

    @Nullable
    @zzn
    public PendingPurchaseUpdate getPendingPurchaseUpdate() {
        JSONObject optJSONObject = this.f6552c.optJSONObject("pendingPurchaseUpdate");
        if (optJSONObject == null) {
            return null;
        }
        return new PendingPurchaseUpdate(optJSONObject);
    }

    @NonNull
    public List<String> getProducts() {
        return a();
    }

    public int getPurchaseState() {
        if (this.f6552c.optInt("purchaseState", 1) != 4) {
            return 1;
        }
        return 2;
    }

    public long getPurchaseTime() {
        return this.f6552c.optLong("purchaseTime");
    }

    @NonNull
    public String getPurchaseToken() {
        JSONObject jSONObject = this.f6552c;
        return jSONObject.optString(BidResponsed.KEY_TOKEN, jSONObject.optString("purchaseToken"));
    }

    public int getQuantity() {
        return this.f6552c.optInt("quantity", 1);
    }

    @NonNull
    public String getSignature() {
        return this.f6551b;
    }

    @NonNull
    @Deprecated
    public ArrayList<String> getSkus() {
        return a();
    }

    public int hashCode() {
        return this.f6550a.hashCode();
    }

    public boolean isAcknowledged() {
        return this.f6552c.optBoolean("acknowledged", true);
    }

    public boolean isAutoRenewing() {
        return this.f6552c.optBoolean("autoRenewing");
    }

    @NonNull
    public String toString() {
        return "Purchase. Json: ".concat(String.valueOf(this.f6550a));
    }
}
