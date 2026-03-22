package com.bytedance.sdk.openadsdk.core.dLZ;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashSet;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class kkU {
    private final URL ZYk;
    private final String ex;
    private final String oJ;
    private final String tB;

    private kkU(String str, String str2, String str3, String str4) throws MalformedURLException {
        this.oJ = str2;
        this.ZYk = new URL(str);
        this.tB = str3;
        this.ex = str4;
    }

    public String ZYk() {
        return this.tB;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kkU)) {
            return false;
        }
        kkU kku = (kkU) obj;
        if (!oJ(this.oJ, kku.oJ) || !oJ(this.ZYk, kku.ZYk) || !oJ(this.tB, kku.tB)) {
            return false;
        }
        return oJ(this.ex, kku.ex);
    }

    public JSONObject ex() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("apiFramework", CampaignEx.KEY_OMID);
            jSONObject.put("javascriptResourceUrl", this.ZYk.toString());
            if (!TextUtils.isEmpty(this.oJ)) {
                jSONObject.put("vendorKey", this.oJ);
            }
            if (!TextUtils.isEmpty(this.tB)) {
                jSONObject.put("verificationParameters", this.tB);
            }
            if (!TextUtils.isEmpty(this.ex)) {
                jSONObject.put("verificationNotExecuted", this.ex);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public int hashCode() {
        int i10;
        int i11;
        String str = this.oJ;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int hashCode = ((i10 * 31) + this.ZYk.hashCode()) * 31;
        String str2 = this.tB;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i13 = (hashCode + i11) * 31;
        String str3 = this.ex;
        if (str3 != null) {
            i12 = str3.hashCode();
        }
        return i13 + i12;
    }

    public String oJ() {
        return this.oJ;
    }

    public URL tB() {
        return this.ZYk;
    }

    private boolean oJ(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    public static kkU oJ(String str, String str2, String str3, String str4) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new kkU(str, str2, str3, str4);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static kkU oJ(JSONObject jSONObject) {
        try {
            String optString = jSONObject.optString("apiFramework");
            String optString2 = jSONObject.optString("javascriptResourceUrl");
            if (CampaignEx.KEY_OMID.equalsIgnoreCase(optString) && !TextUtils.isEmpty(optString2)) {
                return new kkU(optString2, jSONObject.optString("vendorKey"), jSONObject.optString("verificationParameters"), jSONObject.optString("verificationNotExecuted"));
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static HashSet<kkU> oJ(JSONArray jSONArray) {
        HashSet<kkU> hashSet = new HashSet<>();
        if (jSONArray == null) {
            return hashSet;
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            try {
                hashSet.add(oJ(jSONArray.getJSONObject(i10)));
            } catch (Throwable unused) {
            }
        }
        return hashSet;
    }
}
