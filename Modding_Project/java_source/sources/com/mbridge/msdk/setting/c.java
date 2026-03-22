package com.mbridge.msdk.setting;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: BaseUnitSetting.java */
/* loaded from: classes6.dex */
public class c {
    private String A;
    private int D;
    private int E;
    private int I;
    private String K;
    private int N;

    /* renamed from: b  reason: collision with root package name */
    private List<Integer> f28976b;

    /* renamed from: c  reason: collision with root package name */
    private List<Integer> f28977c;

    /* renamed from: d  reason: collision with root package name */
    private int f28978d;

    /* renamed from: e  reason: collision with root package name */
    private int f28979e;

    /* renamed from: f  reason: collision with root package name */
    private int f28980f;

    /* renamed from: g  reason: collision with root package name */
    private int f28981g;

    /* renamed from: h  reason: collision with root package name */
    private int f28982h;

    /* renamed from: i  reason: collision with root package name */
    private int f28983i;

    /* renamed from: k  reason: collision with root package name */
    private long f28985k;

    /* renamed from: l  reason: collision with root package name */
    private long f28986l;

    /* renamed from: m  reason: collision with root package name */
    private int f28987m;

    /* renamed from: n  reason: collision with root package name */
    private int f28988n;

    /* renamed from: o  reason: collision with root package name */
    private int f28989o;

    /* renamed from: p  reason: collision with root package name */
    private long f28990p;

    /* renamed from: q  reason: collision with root package name */
    private long f28991q;

    /* renamed from: r  reason: collision with root package name */
    private int f28992r;

    /* renamed from: s  reason: collision with root package name */
    private String f28993s;

    /* renamed from: t  reason: collision with root package name */
    private int f28994t;

    /* renamed from: u  reason: collision with root package name */
    private int f28995u;

    /* renamed from: z  reason: collision with root package name */
    private String f29000z;

    /* renamed from: a  reason: collision with root package name */
    private String f28975a = "";

    /* renamed from: j  reason: collision with root package name */
    private int f28984j = 0;

    /* renamed from: v  reason: collision with root package name */
    private int f28996v = 30;

    /* renamed from: w  reason: collision with root package name */
    private int f28997w = 1;

    /* renamed from: x  reason: collision with root package name */
    private int f28998x = 10;

    /* renamed from: y  reason: collision with root package name */
    private int f28999y = 60;
    private int B = 1;
    private String C = "";
    private int F = 100;
    private int G = 60;
    private int H = 5000;
    private int J = 1;
    private String L = "";
    private String M = "";

    public static l a(JSONObject jSONObject) {
        l lVar = null;
        if (jSONObject == null) {
            return null;
        }
        try {
            l lVar2 = new l();
            try {
                lVar2.e(jSONObject.optString("unitId"));
                lVar2.a(jSONObject.optString("ab_id"));
                lVar2.f(jSONObject.optString("rid"));
                JSONArray optJSONArray = jSONObject.optJSONArray("adSourceList");
                if (optJSONArray != null && optJSONArray.length() > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                        arrayList.add(Integer.valueOf(optJSONArray.optInt(i10)));
                    }
                    lVar2.a(arrayList);
                }
                JSONArray optJSONArray2 = jSONObject.optJSONArray("ad_source_timeout");
                if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i11 = 0; i11 < optJSONArray2.length(); i11++) {
                        arrayList2.add(Integer.valueOf(optJSONArray2.optInt(i11)));
                    }
                    lVar2.b(arrayList2);
                }
                lVar2.x(jSONObject.optInt("tpqn"));
                lVar2.c(jSONObject.optInt("aqn"));
                lVar2.b(jSONObject.optInt("acn"));
                lVar2.z(jSONObject.optInt("wt"));
                int i12 = 1;
                lVar2.o(jSONObject.optInt("iscasf", 1));
                lVar2.w(jSONObject.optInt("spmxrt", 5000));
                lVar2.c(jSONObject.optLong("current_time"));
                lVar2.r(jSONObject.optInt(TypedValues.CycleType.S_WAVE_OFFSET));
                lVar2.d(jSONObject.optLong("dlct", 3600L));
                lVar2.d(jSONObject.optInt("autoplay", 0));
                lVar2.k(jSONObject.optInt("dlnet", 2));
                lVar2.c(jSONObject.optString("no_offer"));
                lVar2.f(jSONObject.optInt("cb_type"));
                lVar2.b(jSONObject.optLong("clct", 86400L));
                lVar2.a(jSONObject.optLong("clcq", 300L));
                lVar2.u(jSONObject.optInt(CampaignEx.JSON_KEY_READY_RATE, 100));
                lVar2.g(jSONObject.optInt("cd_rate", 0));
                lVar2.i(jSONObject.optInt("content", 1));
                lVar2.m(jSONObject.optInt("impt", 0));
                lVar2.l(jSONObject.optInt("icon_type", 1));
                lVar2.b(jSONObject.optString("no_ads_url", ""));
                lVar2.t(jSONObject.optInt("playclosebtn_tm", -1));
                lVar2.s(jSONObject.optInt("play_ctdown", 0));
                lVar2.h(jSONObject.optInt("close_alert", 0));
                lVar2.n(jSONObject.optInt("intershowlimit", 30));
                lVar2.v(jSONObject.optInt("refreshFq", 60));
                lVar2.e(jSONObject.optInt("closeBtn", 0));
                int optInt = jSONObject.optInt("tmorl", 1);
                if (optInt <= 2 && optInt > 0) {
                    i12 = optInt;
                }
                lVar2.y(i12);
                lVar2.d(jSONObject.optString("placementid", ""));
                lVar2.p(jSONObject.optInt("ltafemty", 10));
                lVar2.q(jSONObject.optInt("ltorwc", 60));
                lVar2.g(jSONObject.optString("vtag", ""));
                return lVar2;
            } catch (Exception e10) {
                e = e10;
                lVar = lVar2;
                e.printStackTrace();
                return lVar;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    public int A() {
        return this.D;
    }

    public int B() {
        return this.E;
    }

    public int C() {
        return this.F;
    }

    public int D() {
        return this.G;
    }

    public int E() {
        return this.H;
    }

    public int F() {
        return this.I;
    }

    public int G() {
        return this.J;
    }

    public String H() {
        return this.K;
    }

    public String I() {
        return this.L;
    }

    public String J() {
        return this.M;
    }

    public int K() {
        return this.N;
    }

    public int L() {
        return this.f28981g;
    }

    public JSONObject M() {
        JSONObject jSONObject = new JSONObject();
        try {
            List<Integer> b10 = b();
            if (b10 != null && b10.size() > 0) {
                int size = b10.size();
                JSONArray jSONArray = new JSONArray();
                for (int i10 = 0; i10 < size; i10++) {
                    jSONArray.put(b10.get(i10));
                }
                jSONObject.put("adSourceList", jSONArray);
            }
            List<Integer> c10 = c();
            if (c10 != null && c10.size() > 0) {
                int size2 = c10.size();
                JSONArray jSONArray2 = new JSONArray();
                for (int i11 = 0; i11 < size2; i11++) {
                    jSONArray2.put(c10.get(i11));
                }
                jSONObject.put("ad_source_timeout", jSONArray2);
            }
            jSONObject.put("tpqn", F());
            jSONObject.put("aqn", f());
            jSONObject.put("acn", e());
            jSONObject.put("wt", K());
            jSONObject.put("current_time", o());
            jSONObject.put(TypedValues.CycleType.S_WAVE_OFFSET, y());
            jSONObject.put("dlct", p());
            jSONObject.put("autoplay", L());
            jSONObject.put("dlnet", q());
            jSONObject.put("no_offer", x());
            jSONObject.put("cb_type", h());
            jSONObject.put("clct", k());
            jSONObject.put("clcq", j());
            jSONObject.put(CampaignEx.JSON_KEY_READY_RATE, C());
            jSONObject.put("content", m());
            jSONObject.put("impt", s());
            jSONObject.put("icon_type", r());
            jSONObject.put("no_ads_url", w());
            jSONObject.put("playclosebtn_tm", B());
            jSONObject.put("play_ctdown", A());
            jSONObject.put("close_alert", l());
            jSONObject.put("closeBtn", g());
            jSONObject.put("refreshFq", D());
            jSONObject.put("countdown", n());
            jSONObject.put("allowSkip", d());
            jSONObject.put("tmorl", G());
            jSONObject.put("unitId", H());
            jSONObject.put("placementid", z());
            jSONObject.put("ltafemty", u());
            jSONObject.put("ltorwc", v());
            jSONObject.put("vtag", J());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    public List<Integer> b() {
        return this.f28976b;
    }

    public void c(String str) {
        this.A = str;
    }

    public void d(int i10) {
        this.f28981g = i10;
    }

    public int e() {
        return this.f28979e;
    }

    public int f() {
        return this.f28980f;
    }

    public int g() {
        return this.f28982h;
    }

    public int h() {
        return this.f28983i;
    }

    public int i() {
        return this.f28984j;
    }

    public long j() {
        return this.f28985k;
    }

    public long k() {
        return this.f28986l;
    }

    public int l() {
        return this.f28987m;
    }

    public int m() {
        return this.f28988n;
    }

    public int n() {
        return this.f28989o;
    }

    public long o() {
        return this.f28990p;
    }

    public long p() {
        return this.f28991q;
    }

    public int q() {
        return this.f28992r;
    }

    public int r() {
        return this.f28994t;
    }

    public int s() {
        return this.f28995u;
    }

    public int t() {
        return this.f28997w;
    }

    public String toString() {
        Iterator<Integer> it;
        List<Integer> list = this.f28976b;
        String str = "";
        if (list != null && list.size() > 0) {
            while (this.f28976b.iterator().hasNext()) {
                str = str + it.next() + ",";
            }
        }
        return "offset = " + y() + " unitId = " + this.K + " fbPlacementId = " + this.f28993s + str;
    }

    public int u() {
        return this.f28998x;
    }

    public int v() {
        return this.f28999y;
    }

    public String w() {
        return this.f29000z;
    }

    public String x() {
        return this.A;
    }

    public void y(int i10) {
        this.J = i10;
    }

    public String z() {
        return this.C;
    }

    public void b(List<Integer> list) {
        this.f28977c = list;
    }

    public List<Integer> c() {
        return this.f28977c;
    }

    public int d() {
        return this.f28978d;
    }

    public void e(int i10) {
        this.f28982h = i10;
    }

    public void f(int i10) {
        this.f28983i = i10;
    }

    public void g(int i10) {
        this.f28984j = i10;
    }

    public void h(int i10) {
        this.f28987m = i10;
    }

    public void i(int i10) {
        this.f28988n = i10;
    }

    public void j(int i10) {
        this.f28989o = i10;
    }

    public void k(int i10) {
        this.f28992r = i10;
    }

    public void l(int i10) {
        this.f28994t = i10;
    }

    public void m(int i10) {
        this.f28995u = i10;
    }

    public void n(int i10) {
        this.f28996v = i10;
    }

    public void o(int i10) {
        this.f28997w = i10;
    }

    public void p(int i10) {
        this.f28998x = i10;
    }

    public void q(int i10) {
        this.f28999y = i10;
    }

    public void r(int i10) {
        this.B = i10;
    }

    public void s(int i10) {
        this.D = i10;
    }

    public void t(int i10) {
        this.E = i10;
    }

    public void u(int i10) {
        this.F = i10;
    }

    public void v(int i10) {
        this.G = i10;
    }

    public void w(int i10) {
        this.H = i10;
    }

    public void x(int i10) {
        this.I = i10;
    }

    public int y() {
        return this.B;
    }

    public void z(int i10) {
        this.N = i10;
    }

    public void b(int i10) {
        this.f28979e = i10;
    }

    public void c(int i10) {
        this.f28980f = i10;
    }

    public void d(long j10) {
        this.f28991q = j10;
    }

    public void e(String str) {
        this.K = str;
    }

    public void f(String str) {
        this.L = str;
    }

    public void g(String str) {
        this.M = str;
    }

    public void b(long j10) {
        this.f28986l = j10;
    }

    public void c(long j10) {
        this.f28990p = j10;
    }

    public void d(String str) {
        this.C = str;
    }

    public void b(String str) {
        this.f29000z = str;
    }

    public String a() {
        return this.f28975a;
    }

    public void a(String str) {
        this.f28975a = str;
        com.mbridge.msdk.foundation.controller.a.f26683r.put(this.K, str);
    }

    public void a(List<Integer> list) {
        this.f28976b = list;
    }

    public void a(int i10) {
        this.f28978d = i10;
    }

    public void a(long j10) {
        this.f28985k = j10;
    }
}
