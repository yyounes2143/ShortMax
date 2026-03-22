package com.mbridge.msdk.click.utils;

import android.content.Context;
import android.webkit.URLUtil;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.n0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import org.json.JSONObject;
/* compiled from: DspFilterUtils.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static int f26132a = 1;

    /* renamed from: b  reason: collision with root package name */
    public static int f26133b = 2;

    /* renamed from: c  reason: collision with root package name */
    public static int f26134c = 3;

    /* renamed from: d  reason: collision with root package name */
    public static int f26135d = 1500;

    public static boolean a(CampaignEx campaignEx, String str, int i10) {
        boolean z10 = false;
        if (campaignEx != null && campaignEx.getTpOffer() == 1) {
            if (campaignEx.getFac() != 0) {
                z10 = true;
            }
            b(campaignEx, str, i10);
        }
        return z10;
    }

    private static void b(CampaignEx campaignEx, String str, int i10) {
        try {
            Context d10 = c.m().d();
            if (d10 != null && campaignEx != null) {
                if (URLUtil.isFileUrl(str)) {
                    File file = new File(str.replace("file:////", "").replace("file:///", "").replace(AdPayload.FILE_SCHEME, ""));
                    if (file.exists()) {
                        str = n0.e(file);
                    }
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000109");
                jSONObject.put("type", i10);
                jSONObject.put("html", str);
                jSONObject.put("network_type", l0.s(d10));
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, campaignEx.getCampaignUnitId());
                jSONObject.put("rid", campaignEx.getRequestId());
                jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
                jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
                int i11 = 1;
                if (campaignEx.isBidCampaign()) {
                    jSONObject.put(CampaignEx.JSON_KEY_HB, 1);
                }
                if (i10 == 3) {
                    i11 = 2;
                }
                jSONObject.put("op", i11);
                jSONObject.put(CampaignEx.JSON_KEY_FAC, campaignEx.getFac());
                d.b().a(jSONObject);
            }
        } catch (Throwable th2) {
            p0.b("DspFilterUtils", th2.getMessage());
        }
    }
}
