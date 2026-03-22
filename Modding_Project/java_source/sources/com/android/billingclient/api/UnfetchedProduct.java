package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
@zzo
/* loaded from: classes2.dex */
public final class UnfetchedProduct {

    /* renamed from: a  reason: collision with root package name */
    private final String f6574a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6575b;

    /* renamed from: c  reason: collision with root package name */
    private final String f6576c;

    /* renamed from: d  reason: collision with root package name */
    private final int f6577d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final String f6578e;

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface StatusCode {
        @zzo
        public static final int INVALID_PRODUCT_ID_FORMAT = 2;
        @zzo
        public static final int NO_ELIGIBLE_OFFER = 4;
        @zzo
        public static final int PRODUCT_NOT_FOUND = 3;
        @zzo
        public static final int UNKNOWN = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnfetchedProduct(String str) throws JSONException {
        int i10;
        this.f6574a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f6575b = jSONObject.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
        String optString = jSONObject.optString("type");
        this.f6576c = optString;
        if (jSONObject.has(HiAnalyticsConstant.HaKey.BI_KEY_RESULT)) {
            i10 = jSONObject.optInt(HiAnalyticsConstant.HaKey.BI_KEY_RESULT);
        } else {
            i10 = 0;
        }
        this.f6577d = i10;
        if (!TextUtils.isEmpty(optString)) {
            this.f6578e = jSONObject.optString("serializedDocid");
            return;
        }
        throw new IllegalArgumentException("Product type cannot be empty.");
    }

    @NonNull
    @VisibleForTesting
    public static UnfetchedProduct fromJson(@NonNull String str) throws JSONException {
        return new UnfetchedProduct(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UnfetchedProduct)) {
            return false;
        }
        return TextUtils.equals(this.f6574a, ((UnfetchedProduct) obj).f6574a);
    }

    @NonNull
    @zzo
    public String getProductId() {
        return this.f6575b;
    }

    @NonNull
    @zzo
    public String getProductType() {
        return this.f6576c;
    }

    @Nullable
    public String getSerializedDocid() {
        return this.f6578e;
    }

    @zzo
    public int getStatusCode() {
        return this.f6577d;
    }

    public int hashCode() {
        return this.f6574a.hashCode();
    }

    @NonNull
    public String toString() {
        return "UnfetchedProduct{productId='" + this.f6575b + "', productType='" + this.f6576c + "', statusCode=" + this.f6577d + "}";
    }
}
