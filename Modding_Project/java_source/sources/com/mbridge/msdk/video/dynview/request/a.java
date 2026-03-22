package com.mbridge.msdk.video.dynview.request;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.click.j;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.out.Campaign;
import org.json.JSONObject;
/* compiled from: MOfferReport.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f30766a = "com.mbridge.msdk.video.dynview.request.a";

    /* compiled from: MOfferReport.java */
    /* renamed from: com.mbridge.msdk.video.dynview.request.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    class C0442a implements j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f30767a;

        C0442a(ViewGroup viewGroup) {
            this.f30767a = viewGroup;
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            t0.a(campaign, this.f30767a);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            t0.a(campaign, this.f30767a);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            t0.b(campaign, this.f30767a);
        }
    }

    public static void a(CampaignEx campaignEx, Context context, String str, String str2, String str3) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000091");
                jSONObject.put("network_type", l0.s(context));
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V)) {
                    jSONObject.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f27025g)) {
                    jSONObject.put("c", com.mbridge.msdk.foundation.same.a.f27025g);
                }
                jSONObject.put(CampaignEx.JSON_KEY_HB, 0);
                jSONObject.put("rid_n", str3);
                jSONObject.put("reason", str);
                if (campaignEx != null && campaignEx.getRewardTemplateMode() != null) {
                    jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW, u0.b(campaignEx.getRewardTemplateMode().e()));
                }
                d.b().a(jSONObject);
            } catch (Throwable th2) {
                p0.b(f30766a, th2.getMessage());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.mbridge.msdk.foundation.entity.CampaignUnit r9, int r10, int r11, java.lang.String r12) {
        /*
            if (r9 == 0) goto Lb1
            java.util.ArrayList r0 = r9.getAds()
            if (r0 == 0) goto Lb1
            java.util.ArrayList r0 = r9.getAds()
            int r0 = r0.size()
            if (r0 <= 0) goto Lb1
            java.util.ArrayList r0 = r9.getAds()
            java.lang.Object r0 = r0.get(r10)
            if (r0 == 0) goto Lb1
            if (r11 != 0) goto L2d
            java.util.ArrayList r0 = r9.getAds()
            java.lang.Object r0 = r0.get(r10)
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = (com.mbridge.msdk.foundation.entity.CampaignEx) r0
            boolean r0 = r0.mMoreOfferImpShow
            if (r0 == 0) goto L2d
            return
        L2d:
            java.util.ArrayList r0 = r9.getAds()
            java.lang.Object r0 = r0.get(r10)
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = (com.mbridge.msdk.foundation.entity.CampaignEx) r0
            java.lang.String r0 = r0.getendcard_url()
            java.lang.String r1 = "mof_testuid"
            java.lang.String r0 = com.mbridge.msdk.foundation.tools.b1.a(r0, r1)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L5b
            java.util.ArrayList r0 = r9.getAds()
            java.lang.Object r0 = r0.get(r10)
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = (com.mbridge.msdk.foundation.entity.CampaignEx) r0
            java.lang.String r0 = r0.getendcard_url()
            java.lang.String r1 = "mof_uid"
            java.lang.String r0 = com.mbridge.msdk.foundation.tools.b1.a(r0, r1)
        L5b:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L63
            r4 = r12
            goto L64
        L63:
            r4 = r0
        L64:
            if (r11 == 0) goto L82
            r12 = 1
            if (r11 == r12) goto L6f
            java.lang.String r11 = ""
            r12 = 0
            r5 = r11
            r8 = r12
            goto L93
        L6f:
            int r11 = com.mbridge.msdk.click.retry.a.f26107n
            java.util.ArrayList r12 = r9.getAds()
            java.lang.Object r12 = r12.get(r10)
            com.mbridge.msdk.foundation.entity.CampaignEx r12 = (com.mbridge.msdk.foundation.entity.CampaignEx) r12
            java.lang.String r12 = r12.getOnlyImpressionURL()
        L7f:
            r8 = r11
            r5 = r12
            goto L93
        L82:
            int r11 = com.mbridge.msdk.click.retry.a.f26106m
            java.util.ArrayList r12 = r9.getAds()
            java.lang.Object r12 = r12.get(r10)
            com.mbridge.msdk.foundation.entity.CampaignEx r12 = (com.mbridge.msdk.foundation.entity.CampaignEx) r12
            java.lang.String r12 = r12.getImpressionURL()
            goto L7f
        L93:
            boolean r11 = android.text.TextUtils.isEmpty(r5)
            if (r11 != 0) goto Lb1
            com.mbridge.msdk.foundation.controller.c r11 = com.mbridge.msdk.foundation.controller.c.m()
            android.content.Context r2 = r11.d()
            java.util.ArrayList r9 = r9.getAds()
            java.lang.Object r9 = r9.get(r10)
            r3 = r9
            com.mbridge.msdk.foundation.entity.CampaignEx r3 = (com.mbridge.msdk.foundation.entity.CampaignEx) r3
            r6 = 0
            r7 = 1
            com.mbridge.msdk.click.a.a(r2, r3, r4, r5, r6, r7, r8)
        Lb1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.dynview.request.a.a(com.mbridge.msdk.foundation.entity.CampaignUnit, int, int, java.lang.String):void");
    }

    public static void a(Context context, CampaignEx campaignEx, String str, View view) {
        if (context == null || campaignEx == null) {
            return;
        }
        a(context, campaignEx);
        com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(context, str);
        if (view instanceof ViewGroup) {
            aVar.a(new C0442a((ViewGroup) view));
        }
        aVar.a(campaignEx);
    }

    private static void a(Context context, CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().d() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().d(), false, false);
    }
}
