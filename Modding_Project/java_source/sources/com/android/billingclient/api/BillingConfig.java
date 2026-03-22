package com.android.billingclient.api;

import androidx.annotation.NonNull;
import com.huawei.hms.support.feature.result.CommonConstant;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
@zzi
/* loaded from: classes2.dex */
public final class BillingConfig {

    /* renamed from: a  reason: collision with root package name */
    private final String f6456a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BillingConfig(String str) throws JSONException {
        this.f6456a = new JSONObject(str).optString(CommonConstant.KEY_COUNTRY_CODE);
    }

    @NonNull
    public String getCountryCode() {
        return this.f6456a;
    }
}
