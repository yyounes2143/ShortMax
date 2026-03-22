package com.mbridge.msdk.foundation.cache;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.j;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.j0;
import com.mbridge.msdk.foundation.tools.p0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: BaseCandidateCache.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    private static String f26651e = "BaseCandidateCache";

    /* renamed from: f  reason: collision with root package name */
    public static int f26652f = 4;

    /* renamed from: a  reason: collision with root package name */
    protected com.mbridge.msdk.foundation.db.c f26653a;

    /* renamed from: b  reason: collision with root package name */
    private JSONArray f26654b;

    /* renamed from: c  reason: collision with root package name */
    private JSONObject f26655c;

    /* renamed from: d  reason: collision with root package name */
    private String f26656d;

    /* compiled from: BaseCandidateCache.java */
    /* renamed from: com.mbridge.msdk.foundation.cache.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class C0362a implements Comparator<b> {
        C0362a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(b bVar, b bVar2) {
            return Double.compare(bVar.f26659b, bVar2.f26659b);
        }
    }

    /* compiled from: BaseCandidateCache.java */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private com.mbridge.msdk.foundation.cache.b f26658a;

        /* renamed from: b  reason: collision with root package name */
        private double f26659b;

        public b(double d10, com.mbridge.msdk.foundation.cache.b bVar) {
            this.f26659b = d10;
            this.f26658a = bVar;
        }

        public com.mbridge.msdk.foundation.cache.b a() {
            return this.f26658a;
        }
    }

    public void a(int i10) {
        com.mbridge.msdk.foundation.db.c cVar = this.f26653a;
        if (cVar != null) {
            cVar.a(this.f26656d, i10);
            a(f26652f, 1, null, true, "", "", i10, this.f26656d);
        }
    }

    public double b(String str) {
        c a10 = a(str);
        if (a10 != null && a10.g() != c.f26672k && a10.g() != c.f26670i) {
            try {
                String[] split = j0.a(str.split("_")[3]).split("\\|");
                if (split.length > 0) {
                    return Double.parseDouble(split[0]);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return -1.0d;
    }

    public JSONObject c(String str) {
        JSONArray jSONArray = this.f26654b;
        if (jSONArray != null) {
            if (jSONArray.length() > 1) {
                if (!TextUtils.isEmpty(str)) {
                    for (int i10 = 0; i10 < this.f26654b.length(); i10++) {
                        try {
                            JSONObject optJSONObject = this.f26654b.optJSONObject(i10);
                            if (optJSONObject != null && str.equals(optJSONObject.getString("g"))) {
                                this.f26655c = optJSONObject;
                                return optJSONObject;
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                    return null;
                }
                return null;
            }
            return this.f26654b.optJSONObject(0);
        }
        return null;
    }

    public String d(String str) {
        c a10 = a(str);
        if (a10 != null && a10.g() != c.f26672k && a10.g() != c.f26670i) {
            String[] split = j0.a(str.split("_")[3]).split("\\|");
            if (split.length > 1) {
                return split[1];
            }
        }
        return "";
    }

    public void e(String str) {
        this.f26656d = str;
    }

    public c a(String str) {
        c cVar = new c();
        if (!TextUtils.isEmpty(str) && str.split("_").length > 3 && !TextUtils.isEmpty(str.split("_")[3])) {
            JSONArray jSONArray = this.f26654b;
            if (jSONArray != null && jSONArray.length() != 0) {
                String a10 = j0.a(str.split("_")[3]);
                if (TextUtils.isEmpty(a10)) {
                    cVar.d("bid token exception:decode error");
                    cVar.a(c.f26670i);
                    return cVar;
                }
                String[] split = a10.split("\\|");
                if (split.length == 0) {
                    cVar.d("bid token can not get bid price");
                    cVar.a(c.f26670i);
                    return cVar;
                }
                if (split.length > 0) {
                    try {
                        Double.parseDouble(split[0]);
                    } catch (Exception unused) {
                        cVar.d("bid token can not cast bid price");
                        cVar.a(c.f26670i);
                        return cVar;
                    }
                }
                if (TextUtils.isEmpty(this.f26656d)) {
                    cVar.d("unitId is empty");
                    cVar.a(c.f26672k);
                }
                return cVar;
            }
            cVar.d("config is empty");
            cVar.a(c.f26670i);
            return cVar;
        }
        cVar.d("bid token exception");
        cVar.a(c.f26670i);
        return cVar;
    }

    private List<Map<Integer, String>> b(List<Map<Integer, String>> list, int i10, String str, String str2) {
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            Map<Integer, String> map = list.get(i11);
            if (map != null && map.size() > 0) {
                for (Map.Entry<Integer, String> entry : map.entrySet()) {
                    map.put(entry.getKey(), a(entry.getValue(), i10, str, str2));
                }
                arrayList.add(map);
            }
        }
        return arrayList;
    }

    public void a(JSONArray jSONArray) {
        this.f26654b = jSONArray;
    }

    public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str, int i10, String str2, int i11, double d10) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        CampaignEx campaignEx = list.get(i12);
                        campaignEx.setReadyState(0);
                        if (cVar != null) {
                            campaignEx.setNLRid(cVar.o());
                        }
                        campaignEx.setNRid(str);
                        campaignEx.setReasond(str2);
                        campaignEx.setTyped(i10);
                        String b10 = j0.b(d10 + "");
                        campaignEx.setNoticeUrl(a(campaignEx.getNoticeUrl(), i11, str, b10));
                        campaignEx.setClickURL(a(campaignEx.getClickURL(), i11, str, b10));
                        campaignEx.setImpressionURL(a(campaignEx.getImpressionURL(), i11, str, b10));
                        campaignEx.setOnlyImpressionURL(a(campaignEx.getOnlyImpressionURL(), i11, str, b10));
                        campaignEx.setAdvImp(a(campaignEx.getAdvImpList(), i11, str, b10));
                        j nativeVideoTracking = campaignEx.getNativeVideoTracking();
                        if (nativeVideoTracking != null) {
                            nativeVideoTracking.d(a(nativeVideoTracking.d(), i11, str, b10));
                            nativeVideoTracking.c(a(nativeVideoTracking.c(), i11, str, b10));
                            nativeVideoTracking.k(a(nativeVideoTracking.k(), i11, str, b10));
                            nativeVideoTracking.s(a(nativeVideoTracking.t(), i11, str, b10));
                            nativeVideoTracking.a(a(nativeVideoTracking.a(), i11, str, b10));
                            nativeVideoTracking.b(a(nativeVideoTracking.b(), i11, str, b10));
                            nativeVideoTracking.e(a(nativeVideoTracking.e(), i11, str, b10));
                            nativeVideoTracking.t(a(nativeVideoTracking.u(), i11, str, b10));
                            nativeVideoTracking.u(a(nativeVideoTracking.u(), i11, str, b10));
                            nativeVideoTracking.v(a(nativeVideoTracking.w(), i11, str, b10));
                            nativeVideoTracking.f(a(nativeVideoTracking.f(), i11, str, b10));
                            nativeVideoTracking.g(a(nativeVideoTracking.g(), i11, str, b10));
                            nativeVideoTracking.h(a(nativeVideoTracking.h(), i11, str, b10));
                            nativeVideoTracking.i(a(nativeVideoTracking.i(), i11, str, b10));
                            nativeVideoTracking.j(a(nativeVideoTracking.j(), i11, str, b10));
                            nativeVideoTracking.l(a(nativeVideoTracking.l(), i11, str, b10));
                            nativeVideoTracking.q(a(nativeVideoTracking.r(), i11, str, b10));
                            nativeVideoTracking.m(a(nativeVideoTracking.m(), i11, str, b10));
                            nativeVideoTracking.r(a(nativeVideoTracking.s(), i11, str, b10));
                            nativeVideoTracking.n(a(nativeVideoTracking.n(), i11, str, b10));
                            nativeVideoTracking.a(b(nativeVideoTracking.o(), i11, str, b10));
                            nativeVideoTracking.p(a(nativeVideoTracking.q(), i11, str, b10));
                            nativeVideoTracking.o(a(nativeVideoTracking.p(), i11, str, b10));
                            campaignEx.setNativeVideoTracking(nativeVideoTracking);
                            campaignEx.setNativeVideoTrackingString(CampaignEx.object2TrackingStr(nativeVideoTracking));
                        }
                        campaignEx.setPv_urls(a(campaignEx.getPv_urls(), i11, str, b10));
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public c a() {
        JSONArray jSONArray;
        c cVar = new c();
        try {
            jSONArray = this.f26654b;
        } catch (Exception unused) {
            cVar.d("checkConfigAndDB exception");
            cVar.a(c.f26672k);
        }
        if (jSONArray != null && jSONArray.length() != 0) {
            if (this.f26653a == null) {
                cVar.d("db error");
                cVar.a(c.f26672k);
                return cVar;
            }
            return cVar;
        }
        cVar.d("setting config is null");
        cVar.a(c.f26670i);
        return cVar;
    }

    public List<com.mbridge.msdk.foundation.cache.b> a(int i10, long j10) {
        if (i10 >= 0) {
            a(i10);
        }
        com.mbridge.msdk.foundation.db.c cVar = this.f26653a;
        if (cVar != null) {
            return cVar.a(this.f26656d, j10);
        }
        return null;
    }

    public void a(List<b> list, int i10) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    Collections.sort(list, new C0362a());
                    int size = list.size() - i10;
                    if (size > 0) {
                        List<b> subList = list.subList(0, size);
                        if (this.f26653a == null || subList.size() <= 0) {
                            return;
                        }
                        for (int i11 = 0; i11 < subList.size(); i11++) {
                            com.mbridge.msdk.foundation.cache.b bVar = subList.get(i11).f26658a;
                            this.f26653a.a(this.f26656d, bVar.e(), bVar.d());
                            a(f26652f, 1, null, true, bVar.e(), bVar.d(), -1, this.f26656d);
                        }
                    }
                }
            } catch (Exception e10) {
                p0.a(f26651e, e10);
            }
        }
    }

    private String a(String str, int i10, String str2, String str3) {
        if (TextUtils.isEmpty(str) || str.contains("ca_sce") || str.contains("real_rid") || str.contains("real_bp")) {
            return str;
        }
        if (b1.c(str) > 0) {
            return str + "&ca_sce=" + i10 + "&real_rid=" + str2 + "&real_bp=" + str3;
        }
        return str + "?ca_sce=" + i10 + "&real_rid=" + str2 + "&real_bp=" + str3;
    }

    private String a(Map<Integer, String> map, int i10, String str, String str2) {
        if (map == null || map.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            for (Map.Entry<Integer, String> entry : map.entrySet()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(CampaignEx.JSON_AD_IMP_KEY, entry.getKey());
                jSONObject.put("url", a(entry.getValue(), i10, str, str2));
                jSONArray.put(jSONObject);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (jSONArray.length() == 0) {
            return null;
        }
        return jSONArray.toString();
    }

    private String[] a(String[] strArr, int i10, String str, String str2) {
        if (strArr == null || strArr.length == 0) {
            return strArr;
        }
        String[] strArr2 = new String[strArr.length];
        for (int i11 = 0; i11 < strArr.length; i11++) {
            strArr2[i11] = a(strArr[i11], i10, str, str2);
        }
        return strArr2;
    }

    private List<String> a(List<String> list, int i10, String str, String str2) {
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            arrayList.add(a(list.get(i11), i10, str, str2));
        }
        return arrayList;
    }

    public long a(List<CampaignEx> list, String str) {
        if (list == null || list.size() == 0) {
            return 0L;
        }
        String ecppv = list.get(0).getEcppv();
        if (TextUtils.isEmpty(ecppv)) {
            return 0L;
        }
        String a10 = j0.a(ecppv);
        if (TextUtils.isEmpty(a10)) {
            return 0L;
        }
        try {
            if (Double.parseDouble(a10) <= 0.0d) {
                return 0L;
            }
            JSONObject c10 = c(d(str));
            int optInt = c10 != null ? c10.optInt("max_cache_num", 20) : 20;
            com.mbridge.msdk.foundation.db.c cVar = this.f26653a;
            if (cVar == null || optInt <= 0) {
                return -1L;
            }
            return cVar.a(list, this.f26656d);
        } catch (Exception e10) {
            e10.printStackTrace();
            return -1L;
        }
    }

    public void a(String str, String str2, int i10, String str3) {
        try {
            if (this.f26653a == null || TextUtils.isEmpty(str3)) {
                return;
            }
            if (i10 == 1) {
                this.f26653a.a(str2, str, this.f26656d, i10);
                a(f26652f, 3, null, true, str2, str, -1, this.f26656d);
            } else if (i10 == 2) {
                this.f26653a.a(this.f26656d, str2, str);
                a(f26652f, 1, null, true, str2, str, -1, this.f26656d);
            } else if (i10 == 3) {
                this.f26653a.b(str2, str, this.f26656d);
                a(f26652f, 4, null, true, str2, str, -1, this.f26656d);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0188 A[Catch: Exception -> 0x002c, TryCatch #1 {Exception -> 0x002c, blocks: (B:3:0x0011, B:9:0x0031, B:11:0x0069, B:14:0x0079, B:16:0x007f, B:19:0x0086, B:21:0x0091, B:24:0x0098, B:26:0x009e, B:28:0x00a6, B:32:0x0104, B:33:0x0108, B:35:0x0113, B:38:0x0119, B:40:0x011f, B:42:0x012d, B:43:0x0131, B:47:0x0140, B:49:0x0146, B:51:0x014e, B:54:0x0169, B:55:0x016c, B:59:0x0180, B:61:0x0188, B:62:0x018d, B:57:0x0178), top: B:68:0x0011, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r17, int r18, java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r19, boolean r20, java.lang.String r21, java.lang.String r22, int r23, java.lang.String r24) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.cache.a.a(int, int, java.util.List, boolean, java.lang.String, java.lang.String, int, java.lang.String):void");
    }
}
