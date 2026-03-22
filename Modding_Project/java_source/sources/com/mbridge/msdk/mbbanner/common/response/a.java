package com.mbridge.msdk.mbbanner.common.response;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.b;
import com.mbridge.msdk.foundation.same.net.c;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;
/* compiled from: BannerResponseHandler.java */
/* loaded from: classes5.dex */
public abstract class a extends c<JSONObject> {

    /* renamed from: b  reason: collision with root package name */
    private static final String f27838b = "a";

    /* renamed from: a  reason: collision with root package name */
    private String f27839a = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BannerResponseHandler.java */
    /* renamed from: com.mbridge.msdk.mbbanner.common.response.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class RunnableC0385a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27840a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ JSONObject f27841b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f27842c;

        /* compiled from: BannerResponseHandler.java */
        /* renamed from: com.mbridge.msdk.mbbanner.common.response.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class RunnableC0386a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CampaignUnit f27844a;

            RunnableC0386a(CampaignUnit campaignUnit) {
                this.f27844a = campaignUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str;
                CampaignUnit campaignUnit = this.f27844a;
                if (campaignUnit != null && campaignUnit.getAds() != null && this.f27844a.getAds().size() > 0) {
                    a.this.a(this.f27844a);
                    if (!TextUtils.isEmpty(a.this.f27839a)) {
                        a.this.saveHbState(1);
                    }
                    a.this.saveRequestTime(this.f27844a.getAds().size());
                    return;
                }
                CampaignUnit campaignUnit2 = this.f27844a;
                if (campaignUnit2 != null) {
                    str = campaignUnit2.getMsg();
                } else {
                    str = null;
                }
                if (TextUtils.isEmpty(str)) {
                    str = RunnableC0385a.this.f27841b.optString("msg");
                }
                RunnableC0385a runnableC0385a = RunnableC0385a.this;
                a.this.a(runnableC0385a.f27842c, str);
            }
        }

        RunnableC0385a(String str, JSONObject jSONObject, int i10) {
            this.f27840a = str;
            this.f27841b = jSONObject;
            this.f27842c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            CampaignUnit parseCampaignUnit;
            if ("v5".equals(this.f27840a)) {
                parseCampaignUnit = b.parseV5CampaignUnit(this.f27841b.optJSONObject("data"), a.this.f27839a);
            } else {
                parseCampaignUnit = b.parseCampaignUnit(this.f27841b.optJSONObject("data"), a.this.f27839a);
            }
            com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0386a(parseCampaignUnit));
        }
    }

    public abstract void a(int i10, String str);

    public abstract void a(CampaignUnit campaignUnit);

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        String str = f27838b;
        p0.c(str, "onFailed errorCode = " + aVar.f27119a);
        a(aVar.f27119a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
    }

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onSuccess(e<JSONObject> eVar) {
        super.onSuccess(eVar);
        a(eVar.f27117b.f27140b, eVar.f27118c);
    }

    public void a(String str) {
        this.f27839a = str;
    }

    private void a(List<g> list, JSONObject jSONObject) {
        String str = f27838b;
        p0.c(str, "parseLoad content = " + jSONObject);
        int optInt = jSONObject.optInt("status");
        if (1 == optInt) {
            calcRequestTime(System.currentTimeMillis());
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new RunnableC0385a(jSONObject.optString("version"), jSONObject, optInt));
            return;
        }
        a(optInt, jSONObject.optString("msg"));
    }
}
