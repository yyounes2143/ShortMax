package com.mbridge.msdk.mbbid.common.net;

import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;
/* compiled from: BidResponseHandler.java */
/* loaded from: classes5.dex */
public abstract class c extends com.mbridge.msdk.foundation.same.net.c<JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27914a = "c";

    public c(String str, String str2) {
        this.unitId = str2;
        this.placementId = str;
    }

    private void a(List<g> list, JSONObject jSONObject) {
        int optInt = jSONObject.optInt("status");
        if (200 == optInt) {
            BidResponsedEx parseBidResponsedEx = BidResponsedEx.parseBidResponsedEx(jSONObject.optJSONObject("data"), this.unitId);
            if (parseBidResponsedEx != null) {
                a(parseBidResponsedEx);
                return;
            } else {
                a(optInt, jSONObject.optString("msg"));
                return;
            }
        }
        a(optInt, jSONObject.optString("msg"));
    }

    public abstract void a(int i10, String str);

    public abstract void a(BidResponsedEx bidResponsedEx);

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        String str = f27914a;
        p0.b(str, "errorCode = " + aVar.f27119a);
        a(aVar.f27119a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
    }

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onSuccess(e<JSONObject> eVar) {
        com.mbridge.msdk.foundation.same.net.toolbox.a aVar;
        super.onSuccess(eVar);
        if (eVar != null && (aVar = eVar.f27117b) != null) {
            a(aVar.f27140b, eVar.f27118c);
        }
    }
}
