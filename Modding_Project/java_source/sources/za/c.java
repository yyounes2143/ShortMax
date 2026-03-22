package za;

import android.content.Context;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class c extends a {
    public c(Context context, boolean z10) {
        this.f71545d = z10;
        if (a("grs_sdk_global_route_config.json", context) == 0) {
            this.f71544c = true;
        }
    }

    private List<gb.b> u(JSONObject jSONObject) {
        JSONArray jSONArray;
        try {
            ArrayList arrayList = new ArrayList(16);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                gb.b bVar = new gb.b();
                bVar.e(next);
                JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                bVar.f(jSONObject2.getString("name"));
                bVar.b(jSONObject2.getString(InMobiNetworkValues.DESCRIPTION));
                if (jSONObject2.has("countriesOrAreas")) {
                    jSONArray = jSONObject2.getJSONArray("countriesOrAreas");
                } else if (jSONObject2.has("countries")) {
                    jSONArray = jSONObject2.getJSONArray("countries");
                } else {
                    Logger.w("LocalManagerV1", "current country or area group has not config countries or areas.");
                    jSONArray = null;
                }
                HashSet hashSet = new HashSet(16);
                if (jSONArray != null && jSONArray.length() != 0) {
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        hashSet.add((String) jSONArray.get(i10));
                    }
                    bVar.c(hashSet);
                    arrayList.add(bVar);
                }
                return new ArrayList();
            }
            return arrayList;
        } catch (JSONException e10) {
            Logger.w("LocalManagerV1", "parse countryGroups failed maybe json style is wrong. %s", StringUtils.anonymizeMessage(e10.getMessage()));
            return new ArrayList();
        }
    }

    @Override // za.a
    public int i(String str) {
        this.f71542a = new gb.a();
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject(MimeTypes.BASE_TYPE_APPLICATION);
            String string = jSONObject.getString("name");
            long j10 = jSONObject.getLong("cacheControl");
            JSONArray jSONArray = jSONObject.getJSONArray("services");
            this.f71542a.e(string);
            this.f71542a.c(j10);
            if (jSONArray != null) {
                if (jSONArray.length() != 0) {
                    return 0;
                }
            }
            return -1;
        } catch (JSONException e10) {
            Logger.w("LocalManagerV1", "parse appbean failed maybe json style is wrong. %s", StringUtils.anonymizeMessage(e10.getMessage()));
            return -1;
        }
    }

    @Override // za.a
    public int m(String str) {
        JSONObject jSONObject;
        this.f71543b = new ArrayList(16);
        try {
            JSONObject jSONObject2 = new JSONObject(str);
            if (jSONObject2.has("countryOrAreaGroups")) {
                jSONObject = jSONObject2.getJSONObject("countryOrAreaGroups");
            } else if (jSONObject2.has("countryGroups")) {
                jSONObject = jSONObject2.getJSONObject("countryGroups");
            } else {
                Logger.e("LocalManagerV1", "maybe local config json is wrong because the default countryOrAreaGroups isn't config.");
                jSONObject = null;
            }
            if (jSONObject == null) {
                return -1;
            }
            if (jSONObject.length() != 0) {
                this.f71543b.addAll(u(jSONObject));
                return 0;
            }
            return 0;
        } catch (JSONException e10) {
            Logger.w("LocalManagerV1", "parse countrygroup failed maybe json style is wrong. %s", StringUtils.anonymizeMessage(e10.getMessage()));
            return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x010d A[Catch: JSONException -> 0x0072, TryCatch #0 {JSONException -> 0x0072, blocks: (B:3:0x000c, B:4:0x001d, B:6:0x0024, B:8:0x003a, B:10:0x0043, B:11:0x0056, B:13:0x005c, B:15:0x006d, B:23:0x0087, B:24:0x009d, B:26:0x00a3, B:28:0x00b7, B:30:0x00bd, B:32:0x00ce, B:18:0x0075, B:20:0x007b, B:21:0x0080, B:33:0x00e2, B:35:0x00ed, B:39:0x00fc, B:41:0x0106, B:43:0x010d, B:44:0x0114, B:36:0x00f2, B:38:0x00f8, B:40:0x0101), top: B:49:0x000c }] */
    @Override // za.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int q(java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: za.c.q(java.lang.String):int");
    }

    public List<gb.b> t(JSONArray jSONArray, JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() != 0) {
            return u(jSONObject);
        }
        return new ArrayList();
    }
}
