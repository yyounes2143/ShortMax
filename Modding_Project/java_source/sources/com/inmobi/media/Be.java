package com.inmobi.media;

import androidx.autofill.HintConstants;
import androidx.browser.trusted.sharing.ShareTarget;
import com.inmobi.unifiedId.InMobiUserDataModel;
import com.inmobi.unifiedId.InMobiUserDataTypes;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.HashMap;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Be extends Ac {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Be(String url, C3198ue c3198ue, String str, int i10, int i11, int i12) {
        super(url, c3198ue, str, i10, i11);
        Intrinsics.checkNotNullParameter(ShareTarget.METHOD_POST, "requestType");
        Intrinsics.checkNotNullParameter(url, "url");
        this.f23900p = i12;
    }

    @Override // com.inmobi.media.N9
    public final void f() {
        InMobiUserDataTypes inMobiUserDataTypes;
        InMobiUserDataTypes inMobiUserDataTypes2;
        String str;
        String str2;
        boolean z10;
        HashMap<String, String> hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        HashMap hashMap4;
        HashMap hashMap5;
        HashMap hashMap6;
        super.f();
        String.valueOf(L4.f23806a);
        HashMap a10 = AbstractC2872ab.a();
        HashMap hashMap7 = this.f23895k;
        if (hashMap7 != null) {
            hashMap7.put("mk-version", Vc.a());
            String str3 = C2930e1.f24616a;
            if (str3 != null) {
                String str4 = (String) hashMap7.put("bundle-id", str3);
            }
            hashMap7.put("ua", Uc.k());
            hashMap7.put(CampaignEx.JSON_KEY_ST_TS, String.valueOf(System.currentTimeMillis()));
        }
        String str5 = this.f23897m;
        if (str5 != null && (hashMap6 = this.f23895k) != null) {
            String str6 = (String) hashMap6.put("account_id", str5);
        }
        Boolean c10 = C3182te.f25312a.c();
        HashMap hashMap8 = this.f23895k;
        if (hashMap8 != null) {
            String str7 = (String) hashMap8.put("lat", (c10 == null || (r4 = c10.toString()) == null) ? "true" : "true");
        }
        String str8 = (String) a10.get("u-age");
        if (str8 != null && (hashMap5 = this.f23895k) != null) {
            String str9 = (String) hashMap5.put("age", str8);
        }
        InMobiUserDataModel inMobiUserDataModel = L4.f23806a;
        if (inMobiUserDataModel == null || (inMobiUserDataTypes = inMobiUserDataModel.getEmailId()) == null || (inMobiUserDataTypes.getMd5() == null && inMobiUserDataTypes.getSha1() == null && inMobiUserDataTypes.getSha256() == null)) {
            inMobiUserDataTypes = null;
        }
        if (inMobiUserDataTypes != null && (hashMap4 = this.f23895k) != null) {
            String str10 = (String) hashMap4.put("email", String.valueOf(new C3127q6().a(inMobiUserDataTypes)));
        }
        InMobiUserDataModel inMobiUserDataModel2 = L4.f23806a;
        if (inMobiUserDataModel2 == null || (inMobiUserDataTypes2 = inMobiUserDataModel2.getPhoneNumber()) == null || (inMobiUserDataTypes2.getMd5() == null && inMobiUserDataTypes2.getSha1() == null && inMobiUserDataTypes2.getSha256() == null)) {
            inMobiUserDataTypes2 = null;
        }
        if (inMobiUserDataTypes2 != null && (hashMap3 = this.f23895k) != null) {
            String str11 = (String) hashMap3.put(HintConstants.AUTOFILL_HINT_PHONE, String.valueOf(new C3127q6().a(inMobiUserDataTypes2)));
        }
        JSONArray jSONArray = new JSONArray();
        JSONObject b10 = Q5.b();
        if (b10 != null) {
            try {
                if (b10.has("ufids")) {
                    JSONArray jSONArray2 = b10.getJSONArray("ufids");
                    int length = jSONArray2.length();
                    for (int i10 = 0; i10 < length; i10++) {
                        if (jSONArray2.getJSONObject(i10).has("src")) {
                            str = jSONArray2.getJSONObject(i10).getString("src");
                        } else {
                            str = null;
                        }
                        if (jSONArray2.getJSONObject(i10).has(InAppPurchaseMetaData.KEY_SIGNATURE)) {
                            str2 = jSONArray2.getJSONObject(i10).getString(InAppPurchaseMetaData.KEY_SIGNATURE);
                        } else {
                            str2 = null;
                        }
                        if (System.currentTimeMillis() > jSONArray2.getJSONObject(i10).getLong("expiry")) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (str != null && str2 != null) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("src", str);
                            jSONObject.put(InAppPurchaseMetaData.KEY_SIGNATURE, str2);
                            jSONObject.put("expired", z10);
                            jSONArray.put(jSONObject);
                        }
                    }
                }
            } catch (JSONException unused) {
                Objects.toString(b10);
            }
        }
        HashMap hashMap9 = this.f23895k;
        if (hashMap9 != null) {
            String jSONArray3 = jSONArray.toString();
            Intrinsics.checkNotNullExpressionValue(jSONArray3, "toString(...)");
            String str12 = (String) hashMap9.put("ufids", jSONArray3);
        }
        InMobiUserDataModel inMobiUserDataModel3 = L4.f23806a;
        if (inMobiUserDataModel3 != null) {
            hashMap = inMobiUserDataModel3.getExtras();
        } else {
            hashMap = null;
        }
        if (hashMap != null && (hashMap2 = this.f23895k) != null) {
            hashMap2.putAll(hashMap);
        }
    }
}
