package com.android.billingclient.api;

import androidx.annotation.NonNull;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
@zzh
/* loaded from: classes2.dex */
public final class ExternalOfferReportingDetails {

    /* renamed from: a  reason: collision with root package name */
    private final String f6489a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ExternalOfferReportingDetails(String str) throws JSONException {
        this.f6489a = new JSONObject(str).optString("externalTransactionToken");
    }

    @NonNull
    public String getExternalTransactionToken() {
        return this.f6489a;
    }
}
