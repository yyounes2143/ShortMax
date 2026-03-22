package za;

import android.content.Context;
import android.text.TextUtils;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import java.util.ArrayList;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class d extends a {
    public d(Context context, String str, boolean z10) {
        this.f71545d = z10;
        if (a(TextUtils.isEmpty(str) ? "grs_app_global_route_config.json" : str, context) == 0) {
            this.f71544c = true;
        }
    }

    @Override // za.a
    public int i(String str) {
        this.f71542a = new gb.a();
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONArray("applications").getJSONObject(0);
            this.f71542a.e(jSONObject.getString("name"));
            JSONArray jSONArray = jSONObject.getJSONArray("services");
            if (jSONArray != null && jSONArray.length() != 0) {
                if (jSONObject.has("customservices")) {
                    l(jSONObject.getJSONArray("customservices"));
                }
                return 0;
            }
            return -1;
        } catch (JSONException e10) {
            Logger.w("LocalManagerV2", "parse appbean failed maybe json style is wrong. %s", StringUtils.anonymizeMessage(e10.getMessage()));
            return -1;
        }
    }

    @Override // za.a
    public int m(String str) {
        JSONArray jSONArray;
        JSONArray jSONArray2;
        this.f71543b = new ArrayList(16);
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("countryOrAreaGroups")) {
                jSONArray = jSONObject.getJSONArray("countryOrAreaGroups");
            } else if (jSONObject.has("countryGroups")) {
                jSONArray = jSONObject.getJSONArray("countryGroups");
            } else {
                Logger.e("LocalManagerV2", "maybe local config json is wrong because the default countryOrAreaGroups isn't config.");
                jSONArray = null;
            }
            if (jSONArray == null) {
                return -1;
            }
            if (jSONArray.length() != 0) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                    gb.b bVar = new gb.b();
                    bVar.e(jSONObject2.getString("id"));
                    bVar.f(jSONObject2.getString("name"));
                    bVar.b(jSONObject2.getString(InMobiNetworkValues.DESCRIPTION));
                    if (jSONObject2.has("countriesOrAreas")) {
                        jSONArray2 = jSONObject2.getJSONArray("countriesOrAreas");
                    } else if (jSONObject2.has("countries")) {
                        jSONArray2 = jSONObject2.getJSONArray("countries");
                    } else {
                        Logger.w("LocalManagerV2", "current country or area group has not config countries or areas.");
                        jSONArray2 = null;
                    }
                    HashSet hashSet = new HashSet(16);
                    if (jSONArray2 != null && jSONArray2.length() != 0) {
                        for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
                            hashSet.add((String) jSONArray2.get(i11));
                        }
                        bVar.c(hashSet);
                        this.f71543b.add(bVar);
                    }
                    return -1;
                }
            }
            return 0;
        } catch (JSONException e10) {
            Logger.w("LocalManagerV2", "parse countrygroup failed maybe json style is wrong. %s", StringUtils.anonymizeMessage(e10.getMessage()));
            return -1;
        }
    }

    @Override // za.a
    public int q(String str) {
        return p(str);
    }

    public d(boolean z10, boolean z11) {
        this.f71545d = z11;
        this.f71544c = z10;
    }
}
