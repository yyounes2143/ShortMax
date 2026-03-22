package com.mbridge.msdk.advanced.request;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;
/* compiled from: NativeAdvancedResponseHandler.java */
/* loaded from: classes4.dex */
public abstract class d extends com.mbridge.msdk.foundation.same.net.c<JSONObject> {

    /* renamed from: c  reason: collision with root package name */
    private static final String f25893c = "d";

    /* renamed from: a  reason: collision with root package name */
    private int f25894a;

    /* renamed from: b  reason: collision with root package name */
    private String f25895b;

    private void b(List<g> list, JSONObject jSONObject) {
        CampaignUnit parseCampaignUnit;
        String str;
        int optInt = jSONObject.optInt("status");
        if (1 == optInt) {
            calcRequestTime(System.currentTimeMillis());
            if ("v5".equals(jSONObject.optString("version"))) {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(jSONObject.optJSONObject("data"), this.f25895b);
            } else {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(jSONObject.optJSONObject("data"), this.f25895b);
            }
            if (parseCampaignUnit != null && parseCampaignUnit.getAds() != null && parseCampaignUnit.getAds().size() > 0) {
                a(list, parseCampaignUnit);
                saveRequestTime(parseCampaignUnit.getAds().size());
                return;
            }
            if (parseCampaignUnit != null) {
                str = parseCampaignUnit.getMsg();
            } else {
                str = null;
            }
            if (TextUtils.isEmpty(str)) {
                str = jSONObject.optString("msg");
            }
            a(optInt, str);
            return;
        }
        a(optInt, jSONObject.optString("msg"));
    }

    public abstract void a(int i10, String str);

    public void a(String str) {
        this.f25895b = str;
    }

    public abstract void a(List<Frame> list);

    public abstract void a(List<g> list, CampaignUnit campaignUnit);

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        String str = f25893c;
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
            int i10 = this.f25894a;
            if (i10 == 0) {
                b(aVar.f27140b, eVar.f27118c);
            } else if (i10 == 1) {
                a(aVar.f27140b, eVar.f27118c);
            }
        }
    }

    private void a(List<g> list, JSONObject jSONObject) {
        CampaignUnit parseCampaignUnit;
        int optInt = jSONObject.optInt("status");
        if (1 == optInt) {
            calcRequestTime(System.currentTimeMillis());
            if ("v5".equals(jSONObject.optString("version"))) {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(jSONObject.optJSONObject("data"), this.f25895b);
            } else {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(jSONObject.optJSONObject("data"), this.f25895b);
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
