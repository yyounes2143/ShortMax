package com.adjust.sdk;

import android.net.Uri;
import io.bidmachine.Framework;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class SessionResponseData extends ResponseData {
    public Uri deeplink;
    private String sdkPlatform;

    public SessionResponseData(ActivityPackage activityPackage) {
        this.sdkPlatform = Util.getSdkPrefixPlatform(activityPackage.getClientSdk());
    }

    public AdjustSessionFailure getFailureResponseData() {
        if (this.success) {
            return null;
        }
        AdjustSessionFailure adjustSessionFailure = new AdjustSessionFailure();
        if (Framework.UNITY.equals(this.sdkPlatform)) {
            String str = this.message;
            String str2 = "";
            if (str == null) {
                str = "";
            }
            adjustSessionFailure.message = str;
            String str3 = this.timestamp;
            if (str3 == null) {
                str3 = "";
            }
            adjustSessionFailure.timestamp = str3;
            String str4 = this.adid;
            if (str4 != null) {
                str2 = str4;
            }
            adjustSessionFailure.adid = str2;
            adjustSessionFailure.willRetry = this.willRetry;
            JSONObject jSONObject = this.jsonResponse;
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            adjustSessionFailure.jsonResponse = jSONObject;
            return adjustSessionFailure;
        }
        adjustSessionFailure.message = this.message;
        adjustSessionFailure.timestamp = this.timestamp;
        adjustSessionFailure.adid = this.adid;
        adjustSessionFailure.willRetry = this.willRetry;
        adjustSessionFailure.jsonResponse = this.jsonResponse;
        return adjustSessionFailure;
    }

    public AdjustSessionSuccess getSuccessResponseData() {
        if (!this.success) {
            return null;
        }
        AdjustSessionSuccess adjustSessionSuccess = new AdjustSessionSuccess();
        if (Framework.UNITY.equals(this.sdkPlatform)) {
            String str = this.message;
            String str2 = "";
            if (str == null) {
                str = "";
            }
            adjustSessionSuccess.message = str;
            String str3 = this.timestamp;
            if (str3 == null) {
                str3 = "";
            }
            adjustSessionSuccess.timestamp = str3;
            String str4 = this.adid;
            if (str4 != null) {
                str2 = str4;
            }
            adjustSessionSuccess.adid = str2;
            JSONObject jSONObject = this.jsonResponse;
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            adjustSessionSuccess.jsonResponse = jSONObject;
            return adjustSessionSuccess;
        }
        adjustSessionSuccess.message = this.message;
        adjustSessionSuccess.timestamp = this.timestamp;
        adjustSessionSuccess.adid = this.adid;
        adjustSessionSuccess.jsonResponse = this.jsonResponse;
        return adjustSessionSuccess;
    }
}
