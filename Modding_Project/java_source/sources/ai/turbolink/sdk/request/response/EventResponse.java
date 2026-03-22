package ai.turbolink.sdk.request.response;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.campaign.properties.CampaignInfoProperties;
import ai.turbolink.sdk.campaign.properties.UserProperties;
import ai.turbolink.sdk.deeplink.LinkDataProperties;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import ai.turbolink.sdk.utils.TurboLinkUtil;
import android.text.TextUtils;
import com.bytedance.vodsetting.Module;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: EventResponse.kt */
@Metadata
/* loaded from: classes.dex */
public final class EventResponse {
    @NotNull
    private JSONObject _data;
    private int bizMs;
    @NotNull
    private String blackbox;
    @NotNull
    private JSONObject campaignData;
    private int code;
    private int deviceStatus;
    @NotNull
    private JSONObject fromUserData;
    private int linkClickTime;
    @NotNull
    private JSONArray linkData;
    @Nullable
    private String linkHashId;
    @Nullable
    private String msg;
    private int projectStatus;
    private int useVerify;
    @NotNull
    private String verifyAppLinks;
    @NotNull
    private String verifyScheme;

    public EventResponse(@NotNull JSONObject responseBody) {
        Intrinsics.checkNotNullParameter(responseBody, "responseBody");
        this._data = new JSONObject();
        this.linkData = new JSONArray();
        this.blackbox = "";
        this.campaignData = new JSONObject();
        this.fromUserData = new JSONObject();
        this.verifyScheme = "";
        this.verifyAppLinks = "";
        try {
            this.code = responseBody.getInt(Module.ResponseKey.Code);
            this.msg = responseBody.getString("msg");
            if (!responseBody.isNull("data")) {
                JSONObject jSONObject = responseBody.getJSONObject("data");
                Intrinsics.checkNotNullExpressionValue(jSONObject, "responseBody.getJSONObject(\"data\")");
                this._data = jSONObject;
                if (jSONObject.has("link_hash_id")) {
                    this.linkHashId = this._data.getString("link_hash_id");
                    this.linkClickTime = TurboLinkUtil.INSTANCE.getJsonValueInt(this._data, "link_click_time");
                    if (this._data.has("link_data") && !this._data.isNull("link_data")) {
                        JSONArray jSONArray = this._data.getJSONArray("link_data");
                        Intrinsics.checkNotNullExpressionValue(jSONArray, "_data.getJSONArray(\"link_data\")");
                        this.linkData = jSONArray;
                    }
                }
                if (this._data.has("blackbox")) {
                    String string = this._data.getString("blackbox");
                    Intrinsics.checkNotNullExpressionValue(string, "_data.getString(\"blackbox\")");
                    this.blackbox = string;
                    if (!TextUtils.isEmpty(string)) {
                        TurboLink.Companion.setBlackbox(this.blackbox);
                    }
                }
                if (this._data.has("biz_ms")) {
                    int i10 = this._data.getInt("biz_ms");
                    this.bizMs = i10;
                    TurboLink.SessionObj.INSTANCE.setPreviousRequestResponseTime(i10);
                }
                if (this._data.has("use_verify")) {
                    int i11 = this._data.getInt("use_verify");
                    this.useVerify = i11;
                    TurboLink.SessionObj.INSTANCE.setSessionUseVerify(i11);
                }
                if (this._data.has("verify_scheme")) {
                    String string2 = this._data.getString("verify_scheme");
                    Intrinsics.checkNotNullExpressionValue(string2, "_data.getString(\"verify_scheme\")");
                    this.verifyScheme = string2;
                    TurboLink.SessionObj.INSTANCE.setVerifyScheme(string2);
                }
                if (this._data.has("verify_applinks")) {
                    String string3 = this._data.getString("verify_applinks");
                    Intrinsics.checkNotNullExpressionValue(string3, "_data.getString(\"verify_applinks\")");
                    this.verifyAppLinks = string3;
                    TurboLink.SessionObj.INSTANCE.setVerifyAppLinks(string3);
                }
                if (this._data.has("device_status")) {
                    int jsonValueInt = TurboLinkUtil.INSTANCE.getJsonValueInt(this._data, "device_status");
                    this.deviceStatus = jsonValueInt;
                    TurboLink.Companion.setDeviceStatus(jsonValueInt);
                }
                if (this._data.has("project_status")) {
                    int jsonValueInt2 = TurboLinkUtil.INSTANCE.getJsonValueInt(this._data, "project_status");
                    this.projectStatus = jsonValueInt2;
                    TurboLink.Companion.setProjectStatus(jsonValueInt2);
                }
                if (this._data.has("campaign_data") && !this._data.isNull("campaign_data")) {
                    JSONObject jSONObject2 = this._data.getJSONObject("campaign_data");
                    Intrinsics.checkNotNullExpressionValue(jSONObject2, "_data.getJSONObject(\"campaign_data\")");
                    this.campaignData = jSONObject2;
                }
                if (this._data.has("from_user") && !this._data.isNull("from_user")) {
                    JSONObject jSONObject3 = this._data.getJSONObject("from_user");
                    Intrinsics.checkNotNullExpressionValue(jSONObject3, "_data.getJSONObject(\"from_user\")");
                    this.fromUserData = jSONObject3;
                }
            }
        } catch (JSONException e10) {
            TurboLinkLogger.w("The parser request returns occurred exception." + e10.getMessage());
        } catch (Exception e11) {
            TurboLinkLogger.w("parser request returns occurred exception." + e11.getMessage());
        }
    }

    private final String getLinkDataKey(String str) {
        int length = this.linkData.length();
        String str2 = "";
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject jSONObject = this.linkData.getJSONObject(i10);
            if (Intrinsics.areEqual(jSONObject.getString("key"), str)) {
                str2 = jSONObject.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                Intrinsics.checkNotNullExpressionValue(str2, "keyJsonObject.getString(\"value\")");
            }
        }
        return str2;
    }

    public final int getBizMs() {
        return this.bizMs;
    }

    @NotNull
    public final String getBlackbox() {
        return this.blackbox;
    }

    @NotNull
    public final CampaignInfoProperties getCampaignData() {
        String str;
        int i10;
        int i11;
        String str2;
        String str3 = "";
        JSONObject jSONObject = this.campaignData;
        if (jSONObject == null) {
            return new CampaignInfoProperties();
        }
        int i12 = 0;
        try {
            if (!jSONObject.has("campaign_id")) {
                str2 = "";
            } else {
                str2 = this.campaignData.getString("campaign_id");
                Intrinsics.checkNotNullExpressionValue(str2, "campaignData.getString(\"campaign_id\")");
            }
            try {
                if (this.campaignData.has("title")) {
                    String string = this.campaignData.getString("title");
                    Intrinsics.checkNotNullExpressionValue(string, "campaignData.getString(\"title\")");
                    str3 = string;
                }
                TurboLinkUtil turboLinkUtil = TurboLinkUtil.INSTANCE;
                i10 = turboLinkUtil.getJsonValueInt(this.campaignData, "start");
                try {
                    i11 = turboLinkUtil.getJsonValueInt(this.campaignData, "end");
                    try {
                        i12 = turboLinkUtil.getJsonValueInt(this.campaignData, "status");
                    } catch (JSONException e10) {
                        e = e10;
                        String str4 = str3;
                        str3 = str2;
                        str = str4;
                        TurboLinkLogger.w("The parser request returns occurred exception." + e.getMessage());
                        String str5 = str3;
                        str3 = str;
                        str2 = str5;
                        return new CampaignInfoProperties().setCampaignId(str2).setTitle(str3).setStart(i10).setEnd(i11).setStatus(i12);
                    } catch (Exception e11) {
                        e = e11;
                        String str6 = str3;
                        str3 = str2;
                        str = str6;
                        TurboLinkLogger.w("parser request returns occurred exception." + e.getMessage());
                        String str52 = str3;
                        str3 = str;
                        str2 = str52;
                        return new CampaignInfoProperties().setCampaignId(str2).setTitle(str3).setStart(i10).setEnd(i11).setStatus(i12);
                    }
                } catch (JSONException e12) {
                    e = e12;
                    i11 = 0;
                } catch (Exception e13) {
                    e = e13;
                    i11 = 0;
                }
            } catch (JSONException e14) {
                e = e14;
                i10 = 0;
                i11 = 0;
            } catch (Exception e15) {
                e = e15;
                i10 = 0;
                i11 = 0;
            }
        } catch (JSONException e16) {
            e = e16;
            str = "";
            i10 = 0;
            i11 = 0;
        } catch (Exception e17) {
            e = e17;
            str = "";
            i10 = 0;
            i11 = 0;
        }
        return new CampaignInfoProperties().setCampaignId(str2).setTitle(str3).setStart(i10).setEnd(i11).setStatus(i12);
    }

    public final int getCode() {
        return this.code;
    }

    @NotNull
    public final String getCustomKey(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getLinkDataKey(key);
    }

    @NotNull
    public final String getData() {
        String jSONObject = this._data.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "this._data.toString()");
        return jSONObject;
    }

    public final int getDeviceStatus() {
        return this.deviceStatus;
    }

    @NotNull
    public final UserProperties getFromUser() {
        String str;
        String str2 = "";
        JSONObject jSONObject = this.fromUserData;
        if (jSONObject == null) {
            return new UserProperties();
        }
        try {
            if (!jSONObject.has(TTVideoEngineInterface.PLAY_API_KEY_USERID)) {
                str = "";
            } else {
                str = this.fromUserData.getString(TTVideoEngineInterface.PLAY_API_KEY_USERID);
                Intrinsics.checkNotNullExpressionValue(str, "fromUserData.getString(\"user_id\")");
            }
            try {
                if (this.fromUserData.has("invite_code")) {
                    String string = this.fromUserData.getString("invite_code");
                    Intrinsics.checkNotNullExpressionValue(string, "fromUserData.getString(\"invite_code\")");
                    str2 = string;
                }
            } catch (JSONException e10) {
                e = e10;
                TurboLinkLogger.w("The parser request returns occurred exception." + e.getMessage());
                return new UserProperties().setUserId(str).setInviteCode(str2);
            } catch (Exception e11) {
                e = e11;
                TurboLinkLogger.w("parser request returns occurred exception." + e.getMessage());
                return new UserProperties().setUserId(str).setInviteCode(str2);
            }
        } catch (JSONException e12) {
            e = e12;
            str = "";
        } catch (Exception e13) {
            e = e13;
            str = "";
        }
        return new UserProperties().setUserId(str).setInviteCode(str2);
    }

    @NotNull
    public final List<LinkDataProperties> getLinkData() {
        ArrayList arrayList = new ArrayList();
        int length = this.linkData.length();
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject jSONObject = this.linkData.getJSONObject(i10);
            LinkDataProperties linkDataProperties = new LinkDataProperties();
            String string = jSONObject.getString("key");
            Intrinsics.checkNotNullExpressionValue(string, "keyJsonObject.getString(\"key\")");
            LinkDataProperties key = linkDataProperties.setKey(string);
            String string2 = jSONObject.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
            Intrinsics.checkNotNullExpressionValue(string2, "keyJsonObject.getString(\"value\")");
            arrayList.add(key.setValue(string2));
        }
        return arrayList;
    }

    @NotNull
    public final String getLinkHashId() {
        String str = this.linkHashId;
        if (str == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final String getMsg() {
        String str = this.msg;
        if (str == null) {
            return "";
        }
        return str;
    }

    public final int getUseVerify() {
        return this.useVerify;
    }
}
