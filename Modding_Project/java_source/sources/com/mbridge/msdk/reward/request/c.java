package com.mbridge.msdk.reward.request;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;
/* compiled from: RewardResponseHandler.java */
/* loaded from: classes6.dex */
public abstract class c extends com.mbridge.msdk.foundation.same.net.c<JSONObject> {

    /* renamed from: d  reason: collision with root package name */
    private static final String f28891d = "c";

    /* renamed from: a  reason: collision with root package name */
    private int f28892a;

    /* renamed from: b  reason: collision with root package name */
    private String f28893b;

    /* renamed from: c  reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.report.metrics.c f28894c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardResponseHandler.java */
    /* loaded from: classes6.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28895a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ JSONObject f28896b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f28897c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f28898d;

        /* compiled from: RewardResponseHandler.java */
        /* renamed from: com.mbridge.msdk.reward.request.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        class RunnableC0418a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CampaignUnit f28900a;

            RunnableC0418a(CampaignUnit campaignUnit) {
                this.f28900a = campaignUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str;
                CampaignUnit campaignUnit = this.f28900a;
                if (campaignUnit != null && campaignUnit.getAds() != null && this.f28900a.getAds().size() > 0) {
                    this.f28900a.setMetricsData(c.this.f28894c);
                    a aVar = a.this;
                    c.this.a(aVar.f28897c, this.f28900a);
                    c.this.saveRequestTime(this.f28900a.getAds().size());
                    return;
                }
                CampaignUnit campaignUnit2 = this.f28900a;
                if (campaignUnit2 != null) {
                    str = campaignUnit2.getMsg();
                } else {
                    str = null;
                }
                if (TextUtils.isEmpty(str)) {
                    str = a.this.f28896b.optString("msg");
                }
                a aVar2 = a.this;
                c cVar = c.this;
                cVar.a(aVar2.f28898d, str, cVar.f28894c);
            }
        }

        a(String str, JSONObject jSONObject, List list, int i10) {
            this.f28895a = str;
            this.f28896b = jSONObject;
            this.f28897c = list;
            this.f28898d = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            CampaignUnit parseCampaignUnit;
            if ("v5".equals(this.f28895a)) {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(this.f28896b.optJSONObject("data"), c.this.f28893b);
            } else {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(this.f28896b.optJSONObject("data"), c.this.f28893b);
            }
            com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0418a(parseCampaignUnit));
        }
    }

    public abstract void a(int i10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar);

    public abstract void a(List<Frame> list);

    public abstract void a(List<g> list, CampaignUnit campaignUnit);

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        String str = f28891d;
        p0.b(str, "errorCode = " + aVar.f27119a);
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(aVar.f27119a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
        bVar.a("campaign_request_error", aVar);
        bVar.a(aVar.f27120b);
        this.f28894c.a(bVar);
        a(aVar.f27119a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar), this.f28894c);
    }

    @Override // com.mbridge.msdk.foundation.same.net.c
    public void onPreExecute() {
        super.onPreExecute();
    }

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onSuccess(e<JSONObject> eVar) {
        com.mbridge.msdk.foundation.same.net.toolbox.a aVar;
        super.onSuccess(eVar);
        if (eVar != null && (aVar = eVar.f27117b) != null) {
            int i10 = this.f28892a;
            if (i10 == 0) {
                b(aVar.f27140b, eVar.f27118c);
            } else if (i10 == 1) {
                a(aVar.f27140b, eVar.f27118c);
            }
        }
    }

    private void b(List<g> list, JSONObject jSONObject) {
        int optInt = jSONObject.optInt("status");
        if (1 == optInt) {
            calcRequestTime(System.currentTimeMillis());
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(jSONObject.optString("version"), jSONObject, list, optInt));
            return;
        }
        a(list, jSONObject, optInt, this.f28894c);
    }

    public void a(String str) {
        this.f28893b = str;
    }

    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        this.f28894c = cVar;
    }

    private void a(List<g> list, JSONObject jSONObject) {
        CampaignUnit parseCampaignUnit;
        int optInt = jSONObject.optInt("status");
        if (1 == optInt) {
            calcRequestTime(System.currentTimeMillis());
            if ("v5".equals(jSONObject.optString("version"))) {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(jSONObject.optJSONObject("data"), this.f28893b);
            } else {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(jSONObject.optJSONObject("data"), this.f28893b);
            }
            if (parseCampaignUnit != null && parseCampaignUnit.getListFrames() != null && parseCampaignUnit.getListFrames().size() > 0) {
                List<Frame> listFrames = parseCampaignUnit.getListFrames();
                a(listFrames);
                saveRequestTime(listFrames.size());
                return;
            }
            String msg = parseCampaignUnit != null ? parseCampaignUnit.getMsg() : null;
            if (TextUtils.isEmpty(msg)) {
                msg = jSONObject.optString("msg");
            }
            a(optInt, msg, this.f28894c);
            return;
        }
        a(list, jSONObject, optInt, this.f28894c);
    }

    private void a(List<g> list, JSONObject jSONObject, int i10, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        com.mbridge.msdk.foundation.error.b a10;
        String str = "";
        if (list != null && list.size() > 0) {
            for (g gVar : list) {
                if (gVar != null) {
                    String a11 = gVar.a();
                    if (!TextUtils.isEmpty(a11) && a11.equals("data_res_type")) {
                        str = gVar.b();
                    }
                }
            }
        }
        String str2 = "errorCode: 3507 errorMessage: data load failed, errorMsg is " + jSONObject.optString("msg");
        if (!TextUtils.isEmpty(str) && str.equals("1")) {
            com.mbridge.msdk.foundation.error.b a12 = com.mbridge.msdk.foundation.error.a.a(880018, str2);
            if (cVar != null) {
                cVar.a(a12);
                cVar.c(true);
                if (TextUtils.isEmpty(str2)) {
                    str2 = a12.g();
                }
            }
            a(i10, str2, cVar);
            return;
        }
        if (i10 == -1) {
            a10 = com.mbridge.msdk.foundation.error.a.a(880017, str2);
        } else {
            a10 = com.mbridge.msdk.foundation.error.a.a(880003, str2);
        }
        if (cVar != null) {
            cVar.a(a10);
            cVar.c(false);
            if (TextUtils.isEmpty(str2)) {
                str2 = a10.g();
            }
        }
        a(i10, str2, cVar);
    }
}
