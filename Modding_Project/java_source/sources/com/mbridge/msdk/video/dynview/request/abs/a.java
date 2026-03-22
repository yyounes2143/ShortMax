package com.mbridge.msdk.video.dynview.request.abs;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.b;
import com.mbridge.msdk.foundation.same.net.c;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;
/* compiled from: AbsMoreOfferResponseHandler.java */
/* loaded from: classes6.dex */
public abstract class a extends c<JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private int f30768a;

    /* renamed from: b  reason: collision with root package name */
    private String f30769b;

    private void a(List<g> list, JSONObject jSONObject) {
        CampaignUnit parseCampaignUnit;
        int optInt = jSONObject.optInt("status");
        if (1 == optInt) {
            calcRequestTime(System.currentTimeMillis());
            if ("v5".equals(jSONObject.optString("version"))) {
                parseCampaignUnit = b.parseV5CampaignUnit(jSONObject.optJSONObject("data"), this.f30769b);
            } else {
                parseCampaignUnit = b.parseCampaignUnit(jSONObject.optJSONObject("data"), this.f30769b);
            }
            if (parseCampaignUnit != null && parseCampaignUnit.getAds() != null && parseCampaignUnit.getAds().size() > 0) {
                a(list, parseCampaignUnit);
                saveRequestTime(parseCampaignUnit.getAds().size());
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

    public abstract void a(int i10, String str);

    public abstract void a(List<g> list, CampaignUnit campaignUnit);

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
        if (eVar != null && (aVar = eVar.f27117b) != null && this.f30768a == 0) {
            a(aVar.f27140b, eVar.f27118c);
        }
    }
}
