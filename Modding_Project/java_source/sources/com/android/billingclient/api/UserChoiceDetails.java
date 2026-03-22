package com.android.billingclient.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
@zzp
/* loaded from: classes2.dex */
public final class UserChoiceDetails {

    /* renamed from: a  reason: collision with root package name */
    private final String f6579a;

    /* renamed from: b  reason: collision with root package name */
    private final JSONObject f6580b;

    /* renamed from: c  reason: collision with root package name */
    private final List<Product> f6581c;

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    @zzp
    /* loaded from: classes2.dex */
    public static class Product {

        /* renamed from: a  reason: collision with root package name */
        private final String f6582a;

        /* renamed from: b  reason: collision with root package name */
        private final String f6583b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final String f6584c;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Product)) {
                return false;
            }
            Product product = (Product) obj;
            if (this.f6582a.equals(product.getId()) && this.f6583b.equals(product.getType()) && Objects.equals(this.f6584c, product.getOfferToken())) {
                return true;
            }
            return false;
        }

        @NonNull
        public String getId() {
            return this.f6582a;
        }

        @Nullable
        public String getOfferToken() {
            return this.f6584c;
        }

        @NonNull
        public String getType() {
            return this.f6583b;
        }

        public int hashCode() {
            return Objects.hash(this.f6582a, this.f6583b, this.f6584c);
        }

        @NonNull
        public String toString() {
            return String.format("{id: %s, type: %s, offer token: %s}", this.f6582a, this.f6583b, this.f6584c);
        }

        private Product(JSONObject jSONObject) {
            this.f6582a = jSONObject.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
            this.f6583b = jSONObject.optString("productType");
            String optString = jSONObject.optString("offerToken");
            this.f6584c = true == optString.isEmpty() ? null : optString;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserChoiceDetails(String str) throws JSONException {
        this.f6579a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f6580b = jSONObject;
        this.f6581c = a(jSONObject.optJSONArray("products"));
    }

    private static List<Product> a(@Nullable JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                if (optJSONObject != null) {
                    arrayList.add(new Product(optJSONObject));
                }
            }
        }
        return arrayList;
    }

    @NonNull
    public String getExternalTransactionToken() {
        return this.f6580b.optString("externalTransactionToken");
    }

    @Nullable
    public String getOriginalExternalTransactionId() {
        String optString = this.f6580b.optString("originalExternalTransactionId");
        if (optString.isEmpty()) {
            return null;
        }
        return optString;
    }

    @NonNull
    public List<Product> getProducts() {
        return this.f6581c;
    }
}
