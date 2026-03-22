package com.mbridge.msdk.splash.common.util;

import android.text.TextUtils;
import com.bytedance.vodsetting.FetcherListener;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SplashUtils.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f29108a = "a";

    public static CampaignEx a(String str, CampaignEx campaignEx) {
        String str2;
        String str3;
        if (TextUtils.isEmpty(str)) {
            return campaignEx;
        }
        if (TextUtils.isEmpty(str) && campaignEx == null) {
            return null;
        }
        if (!str.contains("notice")) {
            try {
                JSONObject campaignToJsonObject = CampaignEx.campaignToJsonObject(campaignEx);
                CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(campaignToJsonObject);
                if (parseCampaignWithBackData == null) {
                    parseCampaignWithBackData = campaignEx;
                }
                if (!TextUtils.isEmpty(str)) {
                    String optString = campaignToJsonObject.optString("unitId");
                    if (!TextUtils.isEmpty(optString)) {
                        parseCampaignWithBackData.setCampaignUnitId(optString);
                    }
                    JSONObject optJSONObject = new JSONObject(str).optJSONObject(com.mbridge.msdk.foundation.same.a.f27028j);
                    if (optJSONObject == null) {
                        str2 = "-999";
                        str3 = str2;
                    } else {
                        String string = optJSONObject.getString(com.mbridge.msdk.foundation.same.a.f27026h);
                        String string2 = optJSONObject.getString(com.mbridge.msdk.foundation.same.a.f27027i);
                        if (TextUtils.isEmpty(string)) {
                            string = "-999";
                        }
                        int parseInt = Integer.parseInt(string);
                        if (TextUtils.isEmpty(string2)) {
                            string2 = "-999";
                        }
                        int parseInt2 = Integer.parseInt(string2);
                        if (parseInt == -999) {
                            str2 = "-999";
                        } else {
                            str2 = String.valueOf(u0.a(c.m().d(), parseInt));
                        }
                        if (parseInt2 == -999) {
                            str3 = "-999";
                        } else {
                            str3 = String.valueOf(u0.a(c.m().d(), parseInt2));
                        }
                    }
                    parseCampaignWithBackData.setClickURL(com.mbridge.msdk.click.c.a(parseCampaignWithBackData.getClickURL(), str2, str3));
                    String noticeUrl = parseCampaignWithBackData.getNoticeUrl();
                    if (optJSONObject != null) {
                        Iterator<String> keys = optJSONObject.keys();
                        StringBuilder sb2 = new StringBuilder();
                        while (keys.hasNext()) {
                            sb2.append(ContainerUtils.FIELD_DELIMITER);
                            String next = keys.next();
                            String optString2 = optJSONObject.optString(next);
                            if (com.mbridge.msdk.foundation.same.a.f27026h.equals(next) || com.mbridge.msdk.foundation.same.a.f27027i.equals(next)) {
                                if (TextUtils.isEmpty(optString2)) {
                                    optString2 = "-999";
                                }
                                int parseInt3 = Integer.parseInt(optString2);
                                if (parseInt3 == -999) {
                                    optString2 = "-999";
                                } else {
                                    optString2 = String.valueOf(u0.a(c.m().d(), parseInt3));
                                }
                            }
                            sb2.append(next);
                            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                            sb2.append(optString2);
                        }
                        parseCampaignWithBackData.setNoticeUrl(noticeUrl + ((Object) sb2));
                    }
                }
                return parseCampaignWithBackData;
            } catch (Throwable unused) {
                return campaignEx;
            }
        }
        try {
            JSONObject campaignToJsonObject2 = CampaignEx.campaignToJsonObject(campaignEx);
            JSONObject jSONObject = new JSONObject(str);
            try {
                if (!jSONObject.has(CampaignEx.JSON_KEY_DEEP_LINK_URL)) {
                    campaignToJsonObject2.put(CampaignEx.JSON_KEY_DEEP_LINK_URL, "");
                }
            } catch (Exception e10) {
                p0.b(f29108a, e10.getMessage());
            }
            Iterator<String> keys2 = jSONObject.keys();
            while (keys2.hasNext()) {
                String next2 = keys2.next();
                campaignToJsonObject2.put(next2, jSONObject.getString(next2));
            }
            CampaignEx parseCampaignWithBackData2 = CampaignEx.parseCampaignWithBackData(campaignToJsonObject2);
            String optString3 = campaignToJsonObject2.optString("unitId");
            if (!TextUtils.isEmpty(optString3)) {
                parseCampaignWithBackData2.setCampaignUnitId(optString3);
            }
            return parseCampaignWithBackData2;
        } catch (JSONException e11) {
            p0.b(f29108a, e11.getMessage());
            return campaignEx;
        }
    }

    public static String a(int i10, float f10, float f11) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (i10 == 4) {
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27026h, FetcherListener.ErrorOverRetryTimesCode);
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27027i, FetcherListener.ErrorOverRetryTimesCode);
            } else {
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27026h, u0.b(c.m().d(), f10));
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27027i, u0.b(c.m().d(), f11));
            }
            jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27031m, i10);
            jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27029k, c.m().d().getResources().getConfiguration().orientation);
            jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27030l, u0.d(c.m().d()));
            jSONObject.put(com.mbridge.msdk.foundation.same.a.f27028j, jSONObject2);
        } catch (Exception e10) {
            p0.b(f29108a, e10.getMessage());
        }
        return jSONObject.toString();
    }
}
