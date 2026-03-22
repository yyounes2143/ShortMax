package com.mbridge.msdk.scheme.applet;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.foundation.same.net.exception.a;
import com.mbridge.msdk.foundation.same.net.utils.d;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.mbridge.msdk.scheme.report.AppletsReport;
import com.mbridge.msdk.scheme.request.AppletSchemeRequest;
import com.mbridge.msdk.scheme.response.AppletSchemeResponse;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.io.Serializable;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class AppletsModel implements Serializable {
    private static final String DYNAMIC_VIEW_WX_IS_REDIRECT_0 = "0";
    private static final String DYNAMIC_VIEW_WX_IS_REDIRECT_1 = "1";
    private static final String DYNAMIC_VIEW_WX_QUERY_PARAM_EVENT_CALLBACK = "event_callback";
    private static final String DYNAMIC_VIEW_WX_QUERY_PARAM_INSTALL_CALLBACK = "install_callback";
    public static final int REQUEST_TYPE_CLICK = 1;
    public static final int REQUEST_TYPE_SHOW = 0;
    private static String TAG = "AppletsModel";
    private static final String URL_ENCODE_UTF_8 = "UTF-8";
    private static final String WX_MINIPROGRAM = "wx_miniprogram";
    private static final int WX_SCHEME_REQUEST_ERROR_CODE_44993 = 44993;
    private volatile IAppletSchemeCallBack appletSchemeCallBack;
    private final CampaignEx campaignEx;
    private String deepLink = "";
    private volatile boolean isRequestSuccess = false;
    private boolean isRequestTimesMaxPerDay = false;
    private volatile boolean isRequesting = false;
    private boolean isSupportWxScheme = false;
    private boolean isUserClick = false;
    private int lastRequestType = -1;
    private Map<String, String> params;
    private String reBuildClickUrl;
    private final String requestId;
    private final String unitID;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class DefaultAppletSchemeResponse extends AppletSchemeResponse {
        private AppletsModel appletsModel;

        public DefaultAppletSchemeResponse(AppletsModel appletsModel) {
            this.appletsModel = appletsModel;
        }

        @Override // com.mbridge.msdk.scheme.response.AppletSchemeResponse, com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
        public void onError(a aVar) {
            super.onError(aVar);
            AppletsModel appletsModel = this.appletsModel;
            if (appletsModel != null) {
                appletsModel.changeRequestingState(false);
                this.appletsModel.handlerSchemeRequestNetworkError(aVar);
            }
        }

        @Override // com.mbridge.msdk.scheme.response.AppletSchemeResponse, com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
        public void onSuccess(e<JSONObject> eVar) {
            super.onSuccess(eVar);
            AppletsModel appletsModel = this.appletsModel;
            if (appletsModel != null) {
                appletsModel.changeRequestingState(false);
                if (eVar == null || eVar.f27118c == null) {
                    this.appletsModel.handlerRequestNetworkError();
                    return;
                }
                try {
                    this.appletsModel.handlerSchemeRequestResult(eVar);
                } catch (SchemeRequestException e10) {
                    this.appletsModel.handlerSchemeRequestFailed(-2, e10.getMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class SchemeRequestException extends Exception {
        public SchemeRequestException(String str) {
            super(str);
        }
    }

    public AppletsModel(CampaignEx campaignEx, String str, String str2) {
        this.campaignEx = campaignEx;
        this.unitID = str;
        this.requestId = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeRequestingState(boolean z10) {
        this.isRequesting = z10;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:11|(8:12|13|(4:15|16|(2:44|45)(10:20|21|22|23|(2:34|35)|27|28|(1:30)|31|32)|33)(1:52)|46|47|48|(1:50)|51)|53|54|55|(14:101|58|59|60|(9:94|63|64|65|(4:87|68|69|70)|67|68|69|70)|62|63|64|65|(0)|67|68|69|70)|57|58|59|60|(0)|62|63|64|65|(0)|67|68|69|70) */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00dd, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e1, code lost:
        if (com.mbridge.msdk.MBridgeConstans.DEBUG != false) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e3, code lost:
        com.mbridge.msdk.foundation.tools.p0.b(com.mbridge.msdk.scheme.applet.AppletsModel.TAG, "create wechat app request param failed ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f7, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00fb, code lost:
        if (com.mbridge.msdk.MBridgeConstans.DEBUG != false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00fd, code lost:
        com.mbridge.msdk.foundation.tools.p0.b(com.mbridge.msdk.scheme.applet.AppletsModel.TAG, "create wechat app request param failed ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0111, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0115, code lost:
        if (com.mbridge.msdk.MBridgeConstans.DEBUG != false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0117, code lost:
        com.mbridge.msdk.foundation.tools.p0.b(com.mbridge.msdk.scheme.applet.AppletsModel.TAG, "create wechat app request param failed ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0128, code lost:
        if (r0 != null) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x012a, code lost:
        r0 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x012f, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0132, code lost:
        if (com.mbridge.msdk.MBridgeConstans.DEBUG != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0134, code lost:
        com.mbridge.msdk.foundation.tools.p0.b(com.mbridge.msdk.scheme.applet.AppletsModel.TAG, "create wechat app request param failed ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x013a, code lost:
        r8.put(r18, r0);
        r8.put(r17, "0");
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0146, code lost:
        if (com.mbridge.msdk.MBridgeConstans.DEBUG == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0148, code lost:
        com.mbridge.msdk.foundation.tools.p0.a(com.mbridge.msdk.scheme.applet.AppletsModel.TAG, "query: " + r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01a4, code lost:
        r19.reBuildClickUrl = reCreateClickUrl(com.mbridge.msdk.MBridgeConstans.DYNAMIC_VIEW_WX_APP + com.huawei.hms.framework.common.ContainerUtils.KEY_VALUE_DELIMITER + r1 + com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER + com.mbridge.msdk.MBridgeConstans.DYNAMIC_VIEW_WX_PATH + com.huawei.hms.framework.common.ContainerUtils.KEY_VALUE_DELIMITER + r2 + com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER + r18 + com.huawei.hms.framework.common.ContainerUtils.KEY_VALUE_DELIMITER + r0 + com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER + com.mbridge.msdk.MBridgeConstans.DYNAMIC_VIEW_WX_CLICKID + com.huawei.hms.framework.common.ContainerUtils.KEY_VALUE_DELIMITER + r3 + com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER + r17 + com.huawei.hms.framework.common.ContainerUtils.KEY_VALUE_DELIMITER + "1");
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.Map<java.lang.String, java.lang.String> getAppletsParamsAndBuildRequest(com.mbridge.msdk.foundation.entity.CampaignEx r20) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.scheme.applet.AppletsModel.getAppletsParamsAndBuildRequest(com.mbridge.msdk.foundation.entity.CampaignEx):java.util.Map");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlerRequestNetworkError() {
        if (this.appletSchemeCallBack == null) {
            return;
        }
        if (MBridgeConstans.DEBUG) {
            p0.a(TAG, "handlerRequestNetworkError response or result is null");
        }
        try {
            this.appletSchemeCallBack.onNetworkError(1, "response or result is null", this.reBuildClickUrl);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b(TAG, "handler request network error exception ", e10);
            }
        }
        AppletsReport.reportAppletsLoadState(c.m().d(), "response or result is null", this.unitID, this.requestId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlerSchemeRequestFailed(int i10, String str) {
        if (this.appletSchemeCallBack == null) {
            return;
        }
        if (MBridgeConstans.DEBUG) {
            p0.a(TAG, String.format("handlerSchemeRequestFailed network error by code %s and %s", String.valueOf(i10), str));
        }
        try {
            this.appletSchemeCallBack.onAppletSchemeRequestFailed(i10, str, this.reBuildClickUrl);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b(TAG, "handler wx scheme failed exception  ", e10);
            }
        }
        AppletsReport.reportAppletsLoadState(c.m().d(), String.format("network error by code %s and %s", String.valueOf(i10), str), this.unitID, this.requestId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlerSchemeRequestNetworkError(a aVar) {
        int i10;
        String str;
        if (this.appletSchemeCallBack == null) {
            return;
        }
        if (aVar != null) {
            i10 = aVar.f27119a;
            str = aVar.getMessage();
            if (i10 == 10) {
                str = "request timeout";
            }
        } else {
            i10 = -1;
            str = "unKnown";
        }
        if (MBridgeConstans.DEBUG) {
            p0.a(TAG, String.format("handlerSchemeRequestNetworkError network error by code %s and %s", String.valueOf(i10), str));
        }
        try {
            IAppletSchemeCallBack iAppletSchemeCallBack = this.appletSchemeCallBack;
            iAppletSchemeCallBack.onNetworkError(i10, "network error: " + str, this.reBuildClickUrl);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b(TAG, "handler wx scheme network error exception ", e10);
            }
        }
        AppletsReport.reportAppletsLoadState(c.m().d(), String.format("network error by code %s and %s", String.valueOf(i10), str), this.unitID, this.requestId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlerSchemeRequestResult(e<JSONObject> eVar) throws SchemeRequestException {
        JSONObject jSONObject = eVar.f27118c;
        if (MBridgeConstans.DEBUG) {
            p0.a("AppletsModel", "result: " + jSONObject.toString());
        }
        if (jSONObject.has("wx_scheme")) {
            String optString = jSONObject.optString("wx_scheme", "");
            if (!TextUtils.isEmpty(optString)) {
                this.isRequestSuccess = true;
                handlerSchemeRequestSuccess(optString);
                return;
            }
            throw new SchemeRequestException("wx_scheme value is null");
        }
        int optInt = jSONObject.optInt(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, -1);
        String optString2 = jSONObject.optString("error_msg", "");
        if (optInt == WX_SCHEME_REQUEST_ERROR_CODE_44993) {
            this.isRequestTimesMaxPerDay = true;
        }
        handlerSchemeRequestFailed(optInt, optString2);
    }

    private void handlerSchemeRequestStart() {
        if (this.appletSchemeCallBack == null) {
            return;
        }
        try {
            this.appletSchemeCallBack.onAppletSchemeRequestStart();
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b(TAG, "handler wx scheme start exception ", e10);
            }
        }
        AppletsReport.reportAppletsLoadState(c.m().d(), "start load wx scheme", this.unitID, this.requestId);
    }

    private void handlerSchemeRequestSuccess(String str) {
        if (this.appletSchemeCallBack == null) {
            return;
        }
        if (MBridgeConstans.DEBUG) {
            String str2 = TAG;
            p0.a(str2, "handlerSchemeRequestSuccess: " + str);
        }
        try {
            this.deepLink = str;
            this.appletSchemeCallBack.onAppletSchemeRequestSuccess(str);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b(TAG, "handler wx scheme success exception ", e10);
            }
        }
        AppletsReport.reportAppletsLoadState(c.m().d(), "request wx scheme success", this.unitID, this.requestId);
    }

    private boolean isCanRequestByClickUrl(String str) {
        try {
            CampaignEx campaignEx = this.campaignEx;
            if (campaignEx == null) {
                return false;
            }
            String clickURL = campaignEx.getClickURL();
            if (TextUtils.isEmpty(clickURL)) {
                return false;
            }
            return TextUtils.equals(b1.a(clickURL, "wx_miniprogram"), str);
        } catch (Exception e10) {
            if (!MBridgeConstans.DEBUG) {
                return false;
            }
            p0.b(TAG, "query wx_miniprogram from click url exception ", e10);
            return false;
        }
    }

    private boolean isCanRequestByLinkType() {
        CampaignEx campaignEx = this.campaignEx;
        if (campaignEx == null) {
            return false;
        }
        int linkType = campaignEx.getLinkType();
        if (linkType != 8 && linkType != 9) {
            return false;
        }
        return true;
    }

    private boolean isCanRequestByTemplateUrl(String str) {
        CampaignEx.c rewardTemplateMode;
        try {
            CampaignEx campaignEx = this.campaignEx;
            if (campaignEx != null && (rewardTemplateMode = campaignEx.getRewardTemplateMode()) != null && !TextUtils.isEmpty(rewardTemplateMode.e())) {
                return TextUtils.equals(b1.a(rewardTemplateMode.e(), MBridgeConstans.DYNAMIC_VIEW_REQ_WX_URL), str);
            }
            return false;
        } catch (Exception e10) {
            if (!MBridgeConstans.DEBUG) {
                return false;
            }
            p0.b(TAG, "query reqwxurl from template url exception ", e10);
            return false;
        }
    }

    private String reCreateClickUrl(String str) {
        return d.h().f27154b + "?" + str;
    }

    public boolean can(int i10) {
        if (isRequesting() || !canRequestWxScheme(i10)) {
            return false;
        }
        if (this.lastRequestType == -1) {
            return true;
        }
        if (isRequestSuccess()) {
            return false;
        }
        int i11 = this.lastRequestType;
        if ((i11 != 0 || i10 != 1) && (i11 != 1 || i10 != 1 || !this.isUserClick)) {
            return false;
        }
        return true;
    }

    public boolean canRequestWxScheme(int i10) {
        if (!isSupportWxScheme()) {
            return false;
        }
        if (i10 != 0) {
            if (i10 != 1) {
                return false;
            }
            return true;
        }
        return isCanRequestByTemplateUrl("2");
    }

    public void clearRequestState() {
        this.isRequestSuccess = false;
        this.isRequesting = false;
        this.appletSchemeCallBack = null;
    }

    public String getDeepLink() {
        return this.deepLink;
    }

    public String getReBuildClickUrl() {
        return this.reBuildClickUrl;
    }

    public boolean isRequestSuccess() {
        return this.isRequestSuccess;
    }

    public boolean isRequestTimesMaxPerDay() {
        return this.isRequestTimesMaxPerDay;
    }

    public boolean isRequesting() {
        return this.isRequesting;
    }

    public boolean isSupportWxScheme() {
        boolean z10;
        if (!this.isSupportWxScheme) {
            if (isCanRequestByClickUrl("1") && isCanRequestByLinkType()) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.isSupportWxScheme = z10;
        }
        return this.isSupportWxScheme;
    }

    public void requestWxAppletsScheme(int i10, IAppletSchemeCallBack iAppletSchemeCallBack) {
        if (this.campaignEx != null && !TextUtils.isEmpty(this.unitID)) {
            if (MBridgeConstans.DEBUG) {
                p0.b(TAG, "start request wx scheme");
            }
            this.isRequesting = true;
            if (iAppletSchemeCallBack != null) {
                this.appletSchemeCallBack = iAppletSchemeCallBack;
            }
            handlerSchemeRequestStart();
            AppletSchemeRequest appletSchemeRequest = new AppletSchemeRequest(c.m().d());
            if (this.params == null) {
                this.params = getAppletsParamsAndBuildRequest(this.campaignEx);
            }
            if (this.params == null) {
                return;
            }
            if (isRequestTimesMaxPerDay()) {
                handlerSchemeRequestFailed(WX_SCHEME_REQUEST_ERROR_CODE_44993, "get wxscheme failed : request times is max");
                return;
            }
            this.lastRequestType = i10;
            appletSchemeRequest.get(1, d.h().f27154b, this.params, new DefaultAppletSchemeResponse(this), "applets_model", ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
        }
    }

    public void setAppletSchemeCallBack(IAppletSchemeCallBack iAppletSchemeCallBack) {
        this.appletSchemeCallBack = iAppletSchemeCallBack;
    }

    public void setRequestingFinish() {
        this.isRequesting = false;
    }

    public void setUserClick(boolean z10) {
        this.isUserClick = z10;
    }
}
