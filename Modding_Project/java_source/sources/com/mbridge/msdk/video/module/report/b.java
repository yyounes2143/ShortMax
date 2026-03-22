package com.mbridge.msdk.video.module.report;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.j0;
import com.mbridge.msdk.foundation.tools.p0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: VideoViewReport.java */
/* loaded from: classes6.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static HashMap<String, ArrayList<String>> f31198a = new HashMap<>();

    public static void a(String str) {
        f31198a.remove(str);
    }

    public static void b(Context context, CampaignEx campaignEx) {
        if (campaignEx != null && campaignEx.getNativeVideoTracking() != null && campaignEx.getNativeVideoTracking().e() != null) {
            d.b().a("2000143", campaignEx);
            com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().e(), false, false);
        }
    }

    public static void c(Context context, CampaignEx campaignEx) {
        if (campaignEx != null && campaignEx.getNativeVideoTracking() != null && campaignEx.getNativeVideoTracking().n() != null) {
            com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().n(), false, false);
        }
    }

    public static void d(Context context, CampaignEx campaignEx) {
        if (campaignEx != null && campaignEx.getNativeVideoTracking() != null && campaignEx.getNativeVideoTracking().k() != null) {
            d.b().a("2000141", campaignEx);
            com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().k(), false, false);
        }
    }

    public static void e(Context context, CampaignEx campaignEx) {
        if (campaignEx != null && campaignEx.getNativeVideoTracking() != null && campaignEx.getNativeVideoTracking().m() != null) {
            com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().m(), false, false);
        }
    }

    public static void f(Context context, CampaignEx campaignEx) {
        if (campaignEx != null && campaignEx.getNativeVideoTracking() != null && campaignEx.getNativeVideoTracking().s() != null) {
            com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().s(), false, false);
        }
    }

    public static void a(Context context, CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().d() == null) {
            return;
        }
        String campaignUnitId = campaignEx.getCampaignUnitId();
        ArrayList<String> arrayList = f31198a.get(campaignUnitId);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            f31198a.put(campaignUnitId, arrayList);
        }
        if (arrayList.contains(campaignEx.getId())) {
            return;
        }
        try {
            d.b().a("2000142", campaignEx);
        } catch (Exception unused) {
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().d(), false, false);
        arrayList.add(campaignEx.getId());
    }

    public static void a(Context context, CampaignEx campaignEx, int i10, int i11) {
        try {
            String[] h10 = campaignEx.getNativeVideoTracking().h();
            if (campaignEx.getNativeVideoTracking() == null || h10 == null) {
                return;
            }
            String[] strArr = new String[h10.length];
            for (int i12 = 0; i12 < h10.length; i12++) {
                String str = h10[i12];
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("endscreen_type", i10);
                String jSONObject2 = jSONObject.toString();
                if (!TextUtils.isEmpty(jSONObject2)) {
                    jSONObject2 = j0.b(jSONObject2);
                }
                if (!TextUtils.isEmpty(jSONObject2)) {
                    str = str + "&value=" + URLEncoder.encode(jSONObject2);
                }
                strArr[i12] = campaignEx.getSpareOfferFlag() == 1 ? str + "&to=1&cbt=" + campaignEx.getCbt() + "&tmorl=" + i11 : str + "&to=0&cbt=" + campaignEx.getCbt() + "&tmorl=" + i11;
            }
            try {
                e eVar = new e();
                eVar.a("type", Integer.valueOf(i10));
                d.b().a("2000144", campaignEx, eVar);
                d.b().a("2000147", campaignEx, eVar);
            } catch (Exception unused) {
            }
            com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), strArr, false, true);
        } catch (Throwable unused2) {
            p0.b("VideoViewReport", "reportEndcardshowData error");
        }
    }

    public static void a(Context context, CampaignEx campaignEx, int i10, int i11, int i12) {
        String str;
        if (i11 == 0 || context == null || campaignEx == null) {
            return;
        }
        try {
            List<Map<Integer, String>> o10 = campaignEx.getNativeVideoTracking().o();
            int i13 = ((i10 + 1) * 100) / i11;
            if (o10 != null) {
                int i14 = 0;
                int i15 = 0;
                while (i14 < o10.size()) {
                    Map<Integer, String> map = o10.get(i14);
                    if (map != null && map.size() > 0) {
                        Iterator<Map.Entry<Integer, String>> it = map.entrySet().iterator();
                        int i16 = i14;
                        while (it.hasNext()) {
                            Map.Entry<Integer, String> next = it.next();
                            Integer key = next.getKey();
                            int intValue = key.intValue();
                            String value = next.getValue();
                            if (campaignEx.getSpareOfferFlag() == 1) {
                                str = value + "&to=1&cbt=" + campaignEx.getCbt() + "&tmorl=" + i12;
                            } else {
                                str = value + "&to=0&cbt=" + campaignEx.getCbt() + "&tmorl=" + i12;
                            }
                            if (intValue <= i13 && !TextUtils.isEmpty(str)) {
                                String[] strArr = {str};
                                if (i15 < 1) {
                                    i15++;
                                    try {
                                        e eVar = new e();
                                        eVar.a("percent", key);
                                        d.b().a("2000140", campaignEx, eVar);
                                    } catch (Exception unused) {
                                    }
                                }
                                int i17 = i15;
                                com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), strArr, false, true);
                                it.remove();
                                o10.remove(i16);
                                i16--;
                                i15 = i17;
                            }
                        }
                        i14 = i16;
                    }
                    i14++;
                }
            }
        } catch (Throwable unused2) {
            p0.b("VideoViewReport", "reportPlayPercentageData error");
        }
    }

    public static void a(CampaignEx campaignEx, Map<Integer, String> map, String str, int i10) {
        if (campaignEx == null || map == null) {
            return;
        }
        try {
            if (map.size() > 0) {
                Iterator<Map.Entry<Integer, String>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<Integer, String> next = it.next();
                    String value = next.getValue();
                    if (i10 == next.getKey().intValue() && !TextUtils.isEmpty(value)) {
                        com.mbridge.msdk.click.a.a(c.m().d(), campaignEx, str, value, false, false);
                        it.remove();
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void a(CampaignEx campaignEx, String str) {
        if (campaignEx != null) {
            try {
                if (campaignEx.getAdUrlList() == null || campaignEx.getAdUrlList().size() <= 0) {
                    return;
                }
                for (String str2 : campaignEx.getAdUrlList()) {
                    if (!TextUtils.isEmpty(str2)) {
                        com.mbridge.msdk.click.a.a(c.m().d(), campaignEx, str, str2, false, false);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static void a(CampaignEx campaignEx, com.mbridge.msdk.videocommon.entity.c cVar, String str, String str2, String str3) {
        if (campaignEx == null || cVar == null) {
            return;
        }
        try {
            com.mbridge.msdk.video.module.request.b bVar = new com.mbridge.msdk.video.module.request.b(c.m().d());
            com.mbridge.msdk.foundation.same.net.wrapper.e eVar = new com.mbridge.msdk.foundation.same.net.wrapper.e();
            eVar.a(TTVideoEngineInterface.PLAY_API_KEY_USERID, j0.b(str2));
            eVar.a("cb_type", "1");
            eVar.a(CampaignEx.JSON_KEY_REWARD_NAME, cVar.c());
            eVar.a(CampaignEx.JSON_KEY_REWARD_AMOUNT, cVar.a() + "");
            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            eVar.a("click_id", campaignEx.getRequestIdNotice());
            if (!TextUtils.isEmpty(str3)) {
                eVar.a(GearStrategyConsts.EV_EXTRA_INFO, str3);
            }
            bVar.addExtraParams("", eVar);
            String a10 = a(campaignEx.getHost() + "/addReward?", eVar);
            p0.b("VideoViewReport", "rewardUrl:" + a10);
            com.mbridge.msdk.click.a.a(c.m().d(), campaignEx, campaignEx.getCampaignUnitId(), a10, false, false);
        } catch (Throwable th2) {
            p0.b("VideoViewReport", th2.getMessage(), th2);
        }
    }

    private static String a(String str, com.mbridge.msdk.foundation.same.net.wrapper.e eVar) {
        if (eVar != null) {
            String trim = eVar.b().trim();
            if (!TextUtils.isEmpty(trim)) {
                if (!str.endsWith("?") && !str.endsWith(ContainerUtils.FIELD_DELIMITER)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(str.contains("?") ? ContainerUtils.FIELD_DELIMITER : "?");
                    str = sb2.toString();
                }
                return str + trim;
            }
        }
        return "";
    }
}
