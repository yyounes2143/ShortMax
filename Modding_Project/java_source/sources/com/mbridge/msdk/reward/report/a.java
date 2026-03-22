package com.mbridge.msdk.reward.report;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.n;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.d;
import com.mbridge.msdk.foundation.same.report.o;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.util.List;
import org.json.JSONObject;
/* compiled from: RewardReport.java */
/* loaded from: classes6.dex */
public class a {
    public static void a(Context context, String str) {
        if (context != null) {
            try {
                n a10 = n.a(g.a(context));
                if (TextUtils.isEmpty(str) || a10 == null || a10.a() <= 0) {
                    return;
                }
                List<com.mbridge.msdk.foundation.entity.n> a11 = a10.a("m_download_end");
                List<com.mbridge.msdk.foundation.entity.n> a12 = a10.a("2000021");
                List<com.mbridge.msdk.foundation.entity.n> a13 = a10.a("2000039");
                List<com.mbridge.msdk.foundation.entity.n> a14 = a10.a("m_download_end");
                List<com.mbridge.msdk.foundation.entity.n> a15 = a10.a("m_download_end");
                List<com.mbridge.msdk.foundation.entity.n> a16 = a10.a("2000044");
                o.e(a12);
                o.a(a11);
                o.c(a13);
                o.b(a14);
                o.f(a15);
                o.d(a16);
            } catch (Exception e10) {
                p0.b("RewardReport", e10.getMessage());
            }
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str) {
        int a10;
        if (context == null || campaignEx == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", "2000048");
            jSONObject.put("st", System.currentTimeMillis());
            jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
            jSONObject.put("network_type", l0.s(context));
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            if (u0.c(campaignEx)) {
                jSONObject.put(CampaignEx.JSON_KEY_RETARGET_TYPE, campaignEx.getRtinsType());
            }
            jSONObject.put(CampaignEx.JSON_KEY_HB, campaignEx.isBidCampaign() ? 1 : 0);
            jSONObject.put("rid", campaignEx.getRequestId());
            jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            jSONObject.put(CampaignEx.JSON_KEY_NEW_INTERSTITIAL_AD_SPACE_T, campaignEx.getAdSpaceT());
            if (campaignEx.getRewardTemplateMode() != null && (a10 = d.a(campaignEx, campaignEx.getRewardTemplateMode().e())) != -1) {
                jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW, a10);
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Throwable th2) {
            p0.b("RewardReport", th2.getMessage());
        }
    }
}
