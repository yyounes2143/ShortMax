package com.mbridge.msdk.splash.request;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;
/* compiled from: SplashResponseHandler.java */
/* loaded from: classes6.dex */
public abstract class d extends com.mbridge.msdk.foundation.same.net.c<JSONObject> {

    /* renamed from: c  reason: collision with root package name */
    private static final String f29269c = "d";

    /* renamed from: a  reason: collision with root package name */
    private int f29270a;

    /* renamed from: b  reason: collision with root package name */
    private String f29271b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashResponseHandler.java */
    /* loaded from: classes6.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29272a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ JSONObject f29273b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f29274c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f29275d;

        /* compiled from: SplashResponseHandler.java */
        /* renamed from: com.mbridge.msdk.splash.request.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        class RunnableC0427a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CampaignUnit f29277a;

            RunnableC0427a(CampaignUnit campaignUnit) {
                this.f29277a = campaignUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str;
                CampaignUnit campaignUnit = this.f29277a;
                if (campaignUnit != null && campaignUnit.getAds() != null && this.f29277a.getAds().size() > 0) {
                    a aVar = a.this;
                    d.this.a(aVar.f29274c, this.f29277a);
                    d.this.saveRequestTime(this.f29277a.getAds().size());
                    return;
                }
                CampaignUnit campaignUnit2 = this.f29277a;
                if (campaignUnit2 != null) {
                    str = campaignUnit2.getMsg();
                } else {
                    str = null;
                }
                if (TextUtils.isEmpty(str)) {
                    str = a.this.f29273b.optString("msg");
                }
                a aVar2 = a.this;
                d.this.a(aVar2.f29275d, str);
            }
        }

        a(String str, JSONObject jSONObject, List list, int i10) {
            this.f29272a = str;
            this.f29273b = jSONObject;
            this.f29274c = list;
            this.f29275d = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            CampaignUnit parseCampaignUnit;
            if ("v5".equals(this.f29272a)) {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(this.f29273b.optJSONObject("data"), d.this.f29271b);
            } else {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(this.f29273b.optJSONObject("data"), d.this.f29271b);
            }
            com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0427a(parseCampaignUnit));
        }
    }

    private void b(List<g> list, JSONObject jSONObject) {
        int optInt = jSONObject.optInt("status");
        if (1 == optInt) {
            calcRequestTime(System.currentTimeMillis());
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(jSONObject.optString("version"), jSONObject, list, optInt));
            return;
        }
        a(optInt, jSONObject.optString("msg"));
    }

    public abstract void a(int i10, String str);

    public abstract void a(List<Frame> list);

    public abstract void a(List<g> list, CampaignUnit campaignUnit);

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        String str = f29269c;
        p0.b(str, "errorCode = " + aVar.f27119a);
        a(aVar.f27119a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
    }

    @Override // com.mbridge.msdk.foundation.same.net.c
    public void onPreExecute() {
        super.onPreExecute();
    }

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onSuccess(com.mbridge.msdk.foundation.same.net.e<JSONObject> eVar) {
        com.mbridge.msdk.foundation.same.net.toolbox.a aVar;
        super.onSuccess(eVar);
        if (eVar != null && (aVar = eVar.f27117b) != null) {
            int i10 = this.f29270a;
            if (i10 == 0) {
                b(aVar.f27140b, eVar.f27118c);
            } else if (i10 == 1) {
                a(aVar.f27140b, eVar.f27118c);
            }
        }
    }

    public void a(String str) {
        this.f29271b = str;
    }

    private void a(List<g> list, JSONObject jSONObject) {
        CampaignUnit parseCampaignUnit;
        int optInt = jSONObject.optInt("status");
        if (1 == optInt) {
            calcRequestTime(System.currentTimeMillis());
            if ("v5".equals(jSONObject.optString("version"))) {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(jSONObject.optJSONObject("data"), this.f29271b);
            } else {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(jSONObject.optJSONObject("data"), this.f29271b);
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
            a(optInt, msg);
            return;
        }
        a(optInt, jSONObject.optString("msg"));
    }
}
