package com.adjust.sdk;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class ResponseData {
    public ActivityKind activityKind;
    public ActivityPackage activityPackage;
    public String adid;
    public Long askIn;
    public AdjustAttribution attribution;
    public Long continueIn;
    public JSONObject controlParams;
    public JSONObject jsonResponse;
    public String message;
    public String resolvedDeeplink;
    public Long retryIn;
    public Map<String, String> sendingParameters;
    public Map<String, String> signedParameters;
    public String timestamp;
    public TrackingState trackingState;
    public boolean success = false;
    public boolean willRetry = false;

    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f4258a;

        static {
            int[] iArr = new int[ActivityKind.values().length];
            f4258a = iArr;
            try {
                iArr[ActivityKind.SESSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4258a[ActivityKind.CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4258a[ActivityKind.ATTRIBUTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4258a[ActivityKind.EVENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4258a[ActivityKind.PURCHASE_VERIFICATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static ResponseData buildResponseData(ActivityPackage activityPackage, Map<String, String> map, Map<String, String> map2) {
        ResponseData sessionResponseData;
        ActivityKind activityKind = activityPackage.getActivityKind();
        int i10 = a.f4258a[activityKind.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            sessionResponseData = new ResponseData();
                        } else {
                            sessionResponseData = new PurchaseVerificationResponseData();
                        }
                    } else {
                        sessionResponseData = new EventResponseData(activityPackage);
                    }
                } else {
                    sessionResponseData = new AttributionResponseData();
                }
            } else {
                sessionResponseData = new SdkClickResponseData();
            }
        } else {
            sessionResponseData = new SessionResponseData(activityPackage);
        }
        sessionResponseData.activityKind = activityKind;
        sessionResponseData.activityPackage = activityPackage;
        sessionResponseData.sendingParameters = map;
        sessionResponseData.signedParameters = map2;
        return sessionResponseData;
    }

    public String toString() {
        return Util.formatString("message:%s timestamp:%s json:%s", this.message, this.timestamp, this.jsonResponse);
    }
}
