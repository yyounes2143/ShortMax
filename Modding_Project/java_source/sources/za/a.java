package za;

import android.content.Context;
import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.f.e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected gb.a f71542a;

    /* renamed from: b  reason: collision with root package name */
    protected List<gb.b> f71543b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f71544c = false;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f71545d = false;

    /* renamed from: e  reason: collision with root package name */
    protected Set<String> f71546e = new HashSet(16);

    private Map<String, String> g(List<gb.b> list, GrsBaseInfo grsBaseInfo, String str) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(16);
        concurrentHashMap.put("no_route_country", "no-country");
        for (gb.b bVar : list) {
            if (bVar.a().contains(grsBaseInfo.getIssueCountry())) {
                concurrentHashMap.put(grsBaseInfo.getIssueCountry(), bVar.d());
            }
            if (bVar.a().contains(grsBaseInfo.getRegCountry())) {
                concurrentHashMap.put(grsBaseInfo.getRegCountry(), bVar.d());
            }
            if (bVar.a().contains(grsBaseInfo.getSerCountry())) {
                concurrentHashMap.put(grsBaseInfo.getSerCountry(), bVar.d());
            }
            if (bVar.a().contains(str)) {
                Logger.v("AbstractLocalManager", "get countryGroupID from geoIp");
                concurrentHashMap.put(str, bVar.d());
            }
        }
        return concurrentHashMap;
    }

    private int j(String str, Context context) {
        if (r(db.c.a(str, context)) == 0) {
            Logger.i("AbstractLocalManager", "load APP_CONFIG_FILE success{%s}.", str);
            return 0;
        }
        return -1;
    }

    private int r(String str) {
        int m10;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (this.f71545d && (m10 = m(str)) != 0) {
            return m10;
        }
        int i10 = i(str);
        if (i10 != 0) {
            return i10;
        }
        return q(str);
    }

    private int s(String str) {
        List<gb.b> list;
        int o10;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (this.f71545d && (((list = this.f71543b) == null || list.isEmpty()) && (o10 = o(str)) != 0)) {
            return o10;
        }
        return p(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(String str, Context context) {
        if (j(GrsApp.getInstance().getBrand(DomExceptionUtils.SEPARATOR) + str, context) != 0) {
            return -1;
        }
        return 0;
    }

    public gb.a b() {
        return this.f71542a;
    }

    public String c(Context context, ya.a aVar, GrsBaseInfo grsBaseInfo, String str, String str2, boolean z10) {
        Map<String, String> f10 = f(context, aVar, grsBaseInfo, str, z10);
        if (f10 == null) {
            Logger.w("AbstractLocalManager", "addresses not found by routeby in local config{%s}", str);
            return null;
        }
        return f10.get(str2);
    }

    public String d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if ("no_route_country".equals(str)) {
            return "no-country";
        }
        List<gb.b> list = this.f71543b;
        if (list != null && !list.isEmpty()) {
            for (gb.b bVar : this.f71543b) {
                if (bVar.a().contains(str)) {
                    return bVar.d();
                }
            }
        }
        return null;
    }

    public List<gb.b> e(JSONArray jSONArray) {
        JSONArray jSONArray2;
        if (jSONArray != null && jSONArray.length() != 0) {
            try {
                ArrayList arrayList = new ArrayList(16);
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i10);
                    gb.b bVar = new gb.b();
                    bVar.e(jSONObject.getString("id"));
                    bVar.f(jSONObject.getString("name"));
                    bVar.b(jSONObject.getString(InMobiNetworkValues.DESCRIPTION));
                    if (jSONObject.has("countriesOrAreas")) {
                        jSONArray2 = jSONObject.getJSONArray("countriesOrAreas");
                    } else if (jSONObject.has("countries")) {
                        jSONArray2 = jSONObject.getJSONArray("countries");
                    } else {
                        Logger.w("AbstractLocalManager", "current country or area group has not config countries or areas.");
                        jSONArray2 = null;
                    }
                    HashSet hashSet = new HashSet(16);
                    if (jSONArray2 != null && jSONArray2.length() != 0) {
                        for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
                            hashSet.add((String) jSONArray2.get(i11));
                        }
                        bVar.c(hashSet);
                        arrayList.add(bVar);
                    }
                    return new ArrayList();
                }
                return arrayList;
            } catch (JSONException e10) {
                Logger.w("AbstractLocalManager", "parse countrygroup failed maybe json style is wrong. %s", StringUtils.anonymizeMessage(e10.getMessage()));
                return new ArrayList();
            }
        }
        return new ArrayList();
    }

    public Map<String, String> f(Context context, ya.a aVar, GrsBaseInfo grsBaseInfo, String str, boolean z10) {
        String d10;
        gb.a aVar2 = this.f71542a;
        if (aVar2 == null) {
            Logger.w("AbstractLocalManager", "application data is null.");
            return null;
        }
        gb.c a10 = aVar2.a(str);
        if (a10 == null) {
            Logger.w("AbstractLocalManager", "service not found in local config{%s}", str);
            return null;
        }
        String b10 = e.b(context, aVar, a10.e(), grsBaseInfo, z10);
        if (b10 == null) {
            Logger.w("AbstractLocalManager", "country not found by routeby in local config{%s}", a10.e());
            return null;
        }
        List<gb.b> b11 = a10.b();
        if (b11 != null && b11.size() != 0) {
            d10 = g(b11, grsBaseInfo, b10).get(b10);
        } else {
            d10 = d(b10);
        }
        gb.d a11 = a10.a(d10);
        if (a11 == null) {
            return null;
        }
        return a11.a();
    }

    public void h(Context context, List<String> list) {
        if (list != null && list.size() > 0) {
            for (String str : list) {
                Logger.d("AbstractLocalManager", "getBatchLoadSdkSuccessFlag file:" + str);
                if (!TextUtils.isEmpty(str) && Pattern.matches("^grs_sdk_global_route_config_[a-zA-Z]+\\.json$", str)) {
                    Object[] objArr = {str};
                    if (s(db.c.a(GrsApp.getInstance().getBrand(DomExceptionUtils.SEPARATOR) + str, context)) == 0) {
                        Logger.i("AbstractLocalManager", "load SDK_CONFIG_FILE: %s, sucess.", objArr);
                    } else {
                        Logger.i("AbstractLocalManager", "load SDK_CONFIG_FILE: %s, failure.", objArr);
                    }
                } else {
                    Logger.i("AbstractLocalManager", "load SDK_CONFIG_FILE: %s, skipped.", str);
                }
            }
        }
    }

    public abstract int i(String str);

    public Set<String> k() {
        return this.f71546e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void l(org.json.JSONArray r15) {
        /*
            r14 = this;
            if (r15 == 0) goto Lf5
            int r0 = r15.length()
            if (r0 != 0) goto La
            goto Lf5
        La:
            r0 = 0
            r1 = r0
        Lc:
            int r2 = r15.length()
            if (r1 >= r2) goto Lf5
            org.json.JSONObject r2 = r15.getJSONObject(r1)
            gb.c r3 = new gb.c
            r3.<init>()
            java.lang.String r4 = "name"
            java.lang.String r4 = r2.getString(r4)
            r3.f(r4)
            java.util.Set<java.lang.String> r5 = r14.f71546e
            boolean r5 = r5.contains(r4)
            if (r5 != 0) goto Lf1
            java.util.Set<java.lang.String> r5 = r14.f71546e
            r5.add(r4)
            boolean r5 = r14.f71545d
            if (r5 == 0) goto Lf1
            java.lang.String r5 = "routeBy"
            java.lang.String r5 = r2.getString(r5)
            r3.g(r5)
            java.lang.String r5 = "servings"
            org.json.JSONArray r5 = r2.getJSONArray(r5)
            r6 = r0
        L45:
            int r7 = r5.length()
            java.lang.String r8 = "AbstractLocalManager"
            if (r6 >= r7) goto Lbe
            java.lang.Object r7 = r5.get(r6)
            org.json.JSONObject r7 = (org.json.JSONObject) r7
            gb.d r9 = new gb.d
            r9.<init>()
            java.lang.String r10 = "countryOrAreaGroup"
            boolean r11 = r7.has(r10)
            if (r11 == 0) goto L65
        L60:
            java.lang.String r8 = r7.getString(r10)
            goto L79
        L65:
            java.lang.String r10 = "countryGroup"
            boolean r11 = r7.has(r10)
            if (r11 == 0) goto L6e
            goto L60
        L6e:
            java.lang.Object[] r10 = new java.lang.Object[]{r4}
            java.lang.String r11 = "maybe this service{%s} routeBy is unconditional."
            com.huawei.hms.framework.common.Logger.v(r8, r11, r10)
            java.lang.String r8 = "no-country"
        L79:
            r9.b(r8)
            java.lang.String r8 = "addresses"
            org.json.JSONObject r7 = r7.getJSONObject(r8)
            java.util.concurrent.ConcurrentHashMap r8 = new java.util.concurrent.ConcurrentHashMap
            r10 = 16
            r8.<init>(r10)
            java.util.Iterator r10 = r7.keys()
        L8d:
            boolean r11 = r10.hasNext()
            if (r11 == 0) goto Lb1
            java.lang.Object r11 = r10.next()
            java.lang.String r11 = (java.lang.String) r11
            java.lang.String r12 = r7.getString(r11)
            boolean r13 = android.text.TextUtils.isEmpty(r11)
            if (r13 != 0) goto L8d
            boolean r12 = android.text.TextUtils.isEmpty(r12)
            if (r12 != 0) goto L8d
            java.lang.String r12 = r7.getString(r11)
            r8.put(r11, r12)
            goto L8d
        Lb1:
            r9.c(r8)
            java.lang.String r7 = r9.d()
            r3.c(r7, r9)
            int r6 = r6 + 1
            goto L45
        Lbe:
            java.lang.String r5 = "countryOrAreaGroups"
            boolean r6 = r2.has(r5)
            if (r6 == 0) goto Lcf
        Lc6:
            org.json.JSONArray r2 = r2.getJSONArray(r5)
            java.util.List r2 = r14.e(r2)
            goto Lde
        Lcf:
            java.lang.String r5 = "countryGroups"
            boolean r6 = r2.has(r5)
            if (r6 == 0) goto Ld8
            goto Lc6
        Ld8:
            java.lang.String r2 = "service use default countryOrAreaGroup"
            com.huawei.hms.framework.common.Logger.i(r8, r2)
            r2 = 0
        Lde:
            r3.d(r2)
            gb.a r2 = r14.f71542a
            if (r2 != 0) goto Lec
            gb.a r2 = new gb.a
            r2.<init>()
            r14.f71542a = r2
        Lec:
            gb.a r2 = r14.f71542a
            r2.d(r4, r3)
        Lf1:
            int r1 = r1 + 1
            goto Lc
        Lf5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: za.a.l(org.json.JSONArray):void");
    }

    public abstract int m(String str);

    public boolean n() {
        return this.f71544c;
    }

    public int o(String str) {
        JSONArray jSONArray;
        this.f71543b = new ArrayList(16);
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("countryOrAreaGroups")) {
                jSONArray = jSONObject.getJSONArray("countryOrAreaGroups");
            } else if (jSONObject.has("countryGroups")) {
                jSONArray = jSONObject.getJSONArray("countryGroups");
            } else {
                Logger.e("AbstractLocalManager", "maybe local config json is wrong because the default countryOrAreaGroups isn't config.");
                jSONArray = null;
            }
            if (jSONArray == null) {
                return -1;
            }
            this.f71543b.addAll(e(jSONArray));
            return 0;
        } catch (JSONException e10) {
            Logger.w("AbstractLocalManager", "parse countrygroup failed maybe json style is wrong. %s", StringUtils.anonymizeMessage(e10.getMessage()));
            return -1;
        }
    }

    public int p(String str) {
        try {
            l(new JSONObject(str).getJSONArray("services"));
            return 0;
        } catch (JSONException e10) {
            Logger.w("AbstractLocalManager", "parse 2.0 services failed maybe because of json style.please check! %s", StringUtils.anonymizeMessage(e10.getMessage()));
            return -1;
        }
    }

    public abstract int q(String str);
}
