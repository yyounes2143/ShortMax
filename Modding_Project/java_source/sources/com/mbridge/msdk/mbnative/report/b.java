package com.mbridge.msdk.mbnative.report;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.l;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbnative.controller.NativeController;
import com.mbridge.msdk.setting.h;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
/* compiled from: NativeReportUtils.java */
/* loaded from: classes2.dex */
public class b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeReportUtils.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f28102a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f28103b;

        a(Context context, CampaignEx campaignEx) {
            this.f28102a = context;
            this.f28103b = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j.a(g.a(this.f28102a)).b(this.f28103b.getId());
            } catch (Exception unused) {
                p0.b("NativeReportUtils", "campain can't insert db");
            }
        }
    }

    public static synchronized void a(CampaignEx campaignEx, Context context, String str, com.mbridge.msdk.mbnative.listener.a aVar) {
        synchronized (b.class) {
            if (campaignEx == null) {
                return;
            }
            try {
                com.mbridge.msdk.setting.g b10 = h.b().b(c.m().b());
                boolean z10 = b10 == null || b10.n() == 1;
                if (!campaignEx.isReport()) {
                    campaignEx.setReport(true);
                    a(campaignEx, context, str);
                    a(campaignEx, context, str, aVar, z10);
                    a(a(campaignEx), campaignEx, context, str);
                    b(campaignEx, context, str);
                    b(campaignEx);
                }
                if (aVar != null && !campaignEx.isCallBackImpression()) {
                    if (!z10) {
                        try {
                            aVar.onLoggingImpression(campaignEx.getType());
                        } catch (Exception e10) {
                            Log.e("NativeReportUtils", e10.getMessage());
                        }
                    }
                    campaignEx.setCallBackImpression(true);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void b(CampaignEx campaignEx) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        l lVar = new l();
        lVar.a(0);
        com.mbridge.msdk.foundation.tools.g.a(arrayList, lVar);
    }

    private static synchronized void b(CampaignEx campaignEx, Context context, String str) {
        synchronized (b.class) {
            if (campaignEx != null) {
                try {
                    List<String> pv_urls = campaignEx.getPv_urls();
                    if (pv_urls != null && pv_urls.size() > 0) {
                        for (String str2 : pv_urls) {
                            com.mbridge.msdk.click.a.a(context, campaignEx, str, str2, false, true);
                        }
                    }
                } finally {
                }
            }
        }
    }

    private static synchronized void a(CampaignEx campaignEx, Context context, String str) {
        synchronized (b.class) {
            try {
                c.m().a(context);
                if (!TextUtils.isEmpty(campaignEx.getImpressionURL())) {
                    com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(context, campaignEx));
                    com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f26106m);
                }
                if (!TextUtils.isEmpty(str) && campaignEx.getNativeVideoTracking() != null && campaignEx.getNativeVideoTracking().k() != null) {
                    com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getNativeVideoTracking().k(), false, false);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static synchronized void a(CampaignEx campaignEx, Context context, String str, com.mbridge.msdk.mbnative.listener.a aVar, boolean z10) {
        Map<String, Long> map;
        synchronized (b.class) {
            if (!TextUtils.isEmpty(campaignEx.getOnlyImpressionURL()) && (map = NativeController.f27936d0) != null && !map.containsKey(campaignEx.getOnlyImpressionURL())) {
                if (z10 && aVar != null) {
                    try {
                        aVar.onLoggingImpression(campaignEx.getAdType());
                    } catch (Exception e10) {
                        Log.e("NativeReportUtils", e10.getMessage());
                    }
                }
                NativeController.f27936d0.put(campaignEx.getOnlyImpressionURL(), Long.valueOf(System.currentTimeMillis()));
                com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getOnlyImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f26107n);
            }
        }
    }

    private static void a(List<String> list, CampaignEx campaignEx, Context context, String str) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str2 = list.get(i10);
            if (!TextUtils.isEmpty(str2)) {
                com.mbridge.msdk.click.a.a(context, campaignEx, str, str2, false, false);
            }
        }
    }

    public static List<String> a(CampaignEx campaignEx) {
        ArrayList arrayList = new ArrayList();
        if (campaignEx == null) {
            return arrayList;
        }
        String ad_url_list = campaignEx.getAd_url_list();
        if (TextUtils.isEmpty(ad_url_list)) {
            return arrayList;
        }
        try {
            JSONArray jSONArray = new JSONArray(ad_url_list);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                arrayList.add((String) jSONArray.get(i10));
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return arrayList;
    }
}
