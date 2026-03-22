package com.google.android.exoplayer2.drm;

import b7.q;
import b7.s0;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ClearKeyUtil.java */
/* loaded from: classes4.dex */
final class a {
    public static byte[] a(byte[] bArr) {
        if (s0.f2506a >= 27) {
            return bArr;
        }
        return s0.h0(c(s0.A(bArr)));
    }

    public static byte[] b(byte[] bArr) {
        if (s0.f2506a >= 27) {
            return bArr;
        }
        try {
            JSONObject jSONObject = new JSONObject(s0.A(bArr));
            StringBuilder sb2 = new StringBuilder("{\"keys\":[");
            JSONArray jSONArray = jSONObject.getJSONArray("keys");
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                if (i10 != 0) {
                    sb2.append(",");
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                sb2.append("{\"k\":\"");
                sb2.append(d(jSONObject2.getString(CampaignEx.JSON_KEY_AD_K)));
                sb2.append("\",\"kid\":\"");
                sb2.append(d(jSONObject2.getString("kid")));
                sb2.append("\",\"kty\":\"");
                sb2.append(jSONObject2.getString("kty"));
                sb2.append("\"}");
            }
            sb2.append("]}");
            return s0.h0(sb2.toString());
        } catch (JSONException e10) {
            q.d("ClearKeyUtil", "Failed to adjust response data: " + s0.A(bArr), e10);
            return bArr;
        }
    }

    private static String c(String str) {
        return str.replace('+', '-').replace('/', '_');
    }

    private static String d(String str) {
        return str.replace('-', '+').replace('_', '/');
    }
}
