package com.mbridge.msdk.mbbanner.common.util;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.buffer.b;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class BannerUtils {
    private static final String TAG = "BannerUtils";

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f27846a = 0;

    private static synchronized List<com.mbridge.msdk.foundation.same.metadata.a> fillIdInList(List<com.mbridge.msdk.foundation.same.metadata.a> list, List<CampaignEx> list2) {
        synchronized (BannerUtils.class) {
            if (list2 != null) {
                try {
                    if (list2.size() > 0) {
                        if (list == null) {
                            list = new ArrayList<>();
                        }
                        for (CampaignEx campaignEx : list2) {
                            if (campaignEx != null) {
                                com.mbridge.msdk.foundation.same.metadata.a aVar = new com.mbridge.msdk.foundation.same.metadata.a(campaignEx.getId(), campaignEx.getCreativeId());
                                if (list.size() >= 20) {
                                    list.remove(0);
                                }
                                list.add(aVar);
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return list;
    }

    public static String getCloseIds(String str) {
        List<com.mbridge.msdk.foundation.same.metadata.a> list;
        try {
            Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> map = b.f27051b;
            if (map != null && z0.b(str) && map.containsKey(str) && (list = map.get(str)) != null && list.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (int i10 = 0; i10 < list.size(); i10++) {
                    JSONObject jSONObject = new JSONObject();
                    com.mbridge.msdk.foundation.same.metadata.a aVar = list.get(i10);
                    jSONObject.put(BidResponsedEx.KEY_CID, aVar.a());
                    jSONObject.put("crid", aVar.b());
                    jSONArray.put(jSONObject);
                }
                return jSONArray.toString();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return "";
    }

    public static void inserCloseId(String str, List<CampaignEx> list) {
        Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> map = b.f27051b;
        if (map != null && list != null && list.size() > 0) {
            if (z0.b(str)) {
                if (map.containsKey(str)) {
                    map.put(str, fillIdInList(map.get(str), list));
                } else {
                    map.put(str, fillIdInList(new ArrayList(), list));
                }
            }
            b.f27051b = map;
        }
    }

    public static CampaignEx managerCampaignEX(String str, CampaignEx campaignEx) {
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
                    if (optJSONObject != null) {
                        str2 = String.valueOf(u0.a(c.m().d(), Integer.valueOf(optJSONObject.getString(com.mbridge.msdk.foundation.same.a.f27026h)).intValue()));
                        str3 = String.valueOf(u0.a(c.m().d(), Integer.valueOf(optJSONObject.getString(com.mbridge.msdk.foundation.same.a.f27027i)).intValue()));
                    } else {
                        str2 = "-999";
                        str3 = "-999";
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
                                optString2 = String.valueOf(u0.a(c.m().d(), Integer.valueOf(optString2).intValue()));
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
            Iterator<String> keys2 = jSONObject.keys();
            try {
                if (!jSONObject.has(CampaignEx.JSON_KEY_DEEP_LINK_URL)) {
                    campaignToJsonObject2.put(CampaignEx.JSON_KEY_DEEP_LINK_URL, "");
                }
            } catch (Exception unused2) {
            }
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
        } catch (JSONException e10) {
            e10.printStackTrace();
            return campaignEx;
        }
    }

    public static void uisList(Context context, List<CampaignEx> list) {
        if (context != null && list != null && list.size() != 0) {
            j a10 = j.a(g.a(context));
            for (int i10 = 0; i10 < list.size(); i10++) {
                CampaignEx campaignEx = list.get(i10);
                if (a10 != null && !a10.a(campaignEx.getId())) {
                    com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                    gVar.a(campaignEx.getId());
                    gVar.b(campaignEx.getFca());
                    gVar.c(campaignEx.getFcb());
                    gVar.a(0);
                    gVar.d(0);
                    gVar.a(System.currentTimeMillis());
                    a10.b(gVar);
                }
            }
        }
    }
}
