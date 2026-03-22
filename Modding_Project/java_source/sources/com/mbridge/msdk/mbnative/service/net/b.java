package com.mbridge.msdk.mbnative.service.net;

import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.net.c;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;
/* compiled from: NativeResponseHandler.java */
/* loaded from: classes2.dex */
public abstract class b extends c<JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private int f28109a;

    /* renamed from: b  reason: collision with root package name */
    private String f28110b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeResponseHandler.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28111a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ JSONObject f28112b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f28113c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f28114d;

        /* compiled from: NativeResponseHandler.java */
        /* renamed from: com.mbridge.msdk.mbnative.service.net.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0395a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CampaignUnit f28116a;

            RunnableC0395a(CampaignUnit campaignUnit) {
                this.f28116a = campaignUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                CampaignUnit campaignUnit = this.f28116a;
                if (campaignUnit != null && campaignUnit.getAds() != null && this.f28116a.getAds().size() > 0) {
                    a aVar = a.this;
                    b.this.a(aVar.f28113c, this.f28116a);
                    b.this.saveRequestTime(this.f28116a.getAds().size());
                    return;
                }
                a aVar2 = a.this;
                b.this.a(aVar2.f28114d, aVar2.f28112b.optString("msg"));
            }
        }

        a(String str, JSONObject jSONObject, List list, int i10) {
            this.f28111a = str;
            this.f28112b = jSONObject;
            this.f28113c = list;
            this.f28114d = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            CampaignUnit parseCampaignUnit;
            if ("v5".equals(this.f28111a)) {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(this.f28112b.optJSONObject("data"));
            } else {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(this.f28112b.optJSONObject("data"));
            }
            com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0395a(parseCampaignUnit));
        }
    }

    public abstract void a(int i10, String str);

    public void a(String str) {
        this.f28110b = str;
    }

    public abstract void a(List<Frame> list);

    public abstract void a(List<g> list, CampaignUnit campaignUnit);

    public String b() {
        return this.f28110b;
    }

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        a(aVar.f27119a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
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
            int i10 = this.f28109a;
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
        a(optInt, jSONObject.optString("msg"));
    }

    public void a(int i10) {
        this.f28109a = i10;
    }

    public int a() {
        return this.f28109a;
    }

    private void a(List<g> list, JSONObject jSONObject) {
        CampaignUnit parseCampaignUnit;
        int optInt = jSONObject.optInt("status");
        if (1 == optInt) {
            calcRequestTime(System.currentTimeMillis());
            if ("v5".equals(jSONObject.optString("version"))) {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(jSONObject.optJSONObject("data"));
            } else {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(jSONObject.optJSONObject("data"));
            }
            if (parseCampaignUnit != null && parseCampaignUnit.getListFrames() != null && parseCampaignUnit.getListFrames().size() > 0) {
                a(parseCampaignUnit.getListFrames());
                saveRequestTime(parseCampaignUnit.getListFrames().size());
                return;
            }
            a(optInt, jSONObject.optString("msg"));
            return;
        }
        a(optInt, jSONObject.optString("msg"));
    }
}
