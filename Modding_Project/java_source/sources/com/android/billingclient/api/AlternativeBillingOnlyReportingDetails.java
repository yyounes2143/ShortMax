package com.android.billingclient.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
@zzf
@KeepForSdk
/* loaded from: classes2.dex */
public final class AlternativeBillingOnlyReportingDetails {

    /* renamed from: a  reason: collision with root package name */
    private final String f6448a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AlternativeBillingOnlyReportingDetails(String str) throws JSONException {
        this.f6448a = new JSONObject(str).optString("externalTransactionToken");
    }

    @NonNull
    public String getExternalTransactionToken() {
        return this.f6448a;
    }
}
