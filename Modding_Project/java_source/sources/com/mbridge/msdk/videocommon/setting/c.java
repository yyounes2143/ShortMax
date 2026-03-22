package com.mbridge.msdk.videocommon.setting;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.foundation.tools.j0;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: RewardUnitSetting.java */
/* loaded from: classes6.dex */
public class c {
    private static g W;
    public static String X;
    private int E;
    private int G;
    private JSONArray U;
    private JSONObject V;

    /* renamed from: a  reason: collision with root package name */
    private String f31690a;

    /* renamed from: b  reason: collision with root package name */
    private String f31691b;

    /* renamed from: c  reason: collision with root package name */
    private List<com.mbridge.msdk.videocommon.entity.b> f31692c;

    /* renamed from: d  reason: collision with root package name */
    private long f31693d;

    /* renamed from: t  reason: collision with root package name */
    private ArrayList<Integer> f31709t;

    /* renamed from: e  reason: collision with root package name */
    private int f31694e = -1;

    /* renamed from: f  reason: collision with root package name */
    private int f31695f = 0;

    /* renamed from: g  reason: collision with root package name */
    private int f31696g = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f31697h = 1;

    /* renamed from: i  reason: collision with root package name */
    private int f31698i = 1;

    /* renamed from: j  reason: collision with root package name */
    private int f31699j = 1;

    /* renamed from: k  reason: collision with root package name */
    private int f31700k = 1;

    /* renamed from: l  reason: collision with root package name */
    private int f31701l = 5;

    /* renamed from: m  reason: collision with root package name */
    private int f31702m = 1;

    /* renamed from: n  reason: collision with root package name */
    private int f31703n = 3;

    /* renamed from: o  reason: collision with root package name */
    private int f31704o = 80;

    /* renamed from: p  reason: collision with root package name */
    private int f31705p = 100;

    /* renamed from: q  reason: collision with root package name */
    private int f31706q = 0;

    /* renamed from: r  reason: collision with root package name */
    private double f31707r = 1.0d;

    /* renamed from: s  reason: collision with root package name */
    private int f31708s = -1;

    /* renamed from: u  reason: collision with root package name */
    private int f31710u = 3;

    /* renamed from: v  reason: collision with root package name */
    private int f31711v = 1;

    /* renamed from: w  reason: collision with root package name */
    private int f31712w = 100;

    /* renamed from: x  reason: collision with root package name */
    private int f31713x = 60;

    /* renamed from: y  reason: collision with root package name */
    private int f31714y = 0;

    /* renamed from: z  reason: collision with root package name */
    private int f31715z = 70;
    private int A = 0;
    private int B = -1;
    private int C = -1;
    private int D = -1;
    private int F = 20;
    private int H = 0;
    private int I = 1;
    private String J = "";
    private int K = 1;
    private String L = "";
    private int M = 1;
    private String N = "Virtual Item";
    private String O = "";
    private String P = "";
    private int Q = 0;
    private int R = 1;
    private int S = 60;
    private String T = "";

    public void A(int i10) {
        this.f31714y = i10;
    }

    public void B(int i10) {
        this.f31711v = i10;
    }

    public void C(int i10) {
        this.f31704o = i10;
    }

    public int D() {
        return this.D;
    }

    public int E() {
        return this.C;
    }

    public int F() {
        return this.B;
    }

    public void G(int i10) {
        this.D = i10;
    }

    public void H(int i10) {
        this.C = i10;
    }

    public void I(int i10) {
        this.B = i10;
    }

    public void a(ArrayList<Integer> arrayList) {
        this.f31709t = arrayList;
    }

    public void b(String str) {
        this.O = str;
        com.mbridge.msdk.foundation.controller.a.f26683r.put(this.f31690a, str);
    }

    public void c(int i10) {
        if (i10 <= 0) {
            this.K = 1;
        } else {
            this.K = i10;
        }
    }

    public void d(int i10) {
        this.H = i10;
    }

    public void e(String str) {
        if (TextUtils.isEmpty(str)) {
            this.N = this.J;
        } else {
            this.N = str;
        }
    }

    public void f(String str) {
        this.f31691b = str;
    }

    public void g(String str) {
        this.P = str;
    }

    public int h() {
        return this.f31696g;
    }

    public void i(String str) {
        this.J = str;
    }

    public void j(int i10) {
        this.f31696g = i10;
    }

    public int k() {
        return this.A;
    }

    public void l(int i10) {
        this.M = i10;
    }

    public void m(int i10) {
        this.A = i10;
    }

    public void n(int i10) {
        this.f31702m = i10;
    }

    public void o(int i10) {
        this.G = i10;
    }

    public int p() {
        return this.f31712w;
    }

    public int q() {
        return this.f31713x;
    }

    public int r() {
        return this.f31701l;
    }

    public void s(int i10) {
        this.f31712w = i10;
    }

    public void t(int i10) {
        this.f31713x = i10;
    }

    public int u() {
        return this.f31694e;
    }

    public void v(int i10) {
        this.f31695f = i10;
    }

    public void w(int i10) {
        this.f31694e = i10;
    }

    public String x() {
        return this.P;
    }

    public int y() {
        return this.f31714y;
    }

    public void z(int i10) {
        this.f31708s = i10;
    }

    public int A() {
        return this.f31711v;
    }

    public JSONArray B() {
        return this.U;
    }

    public int C() {
        return this.R;
    }

    public void D(int i10) {
        this.f31703n = i10;
    }

    public void E(int i10) {
        this.f31700k = i10;
    }

    public void F(int i10) {
        this.R = i10;
    }

    public String G() {
        return this.T;
    }

    public JSONObject H() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("unitId", this.f31690a);
            jSONObject.put("callbackType", this.f31697h);
            List<com.mbridge.msdk.videocommon.entity.b> list = this.f31692c;
            if (list != null && list.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (com.mbridge.msdk.videocommon.entity.b bVar : this.f31692c) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", bVar.a());
                    jSONObject2.put("timeout", bVar.b());
                    jSONArray.put(jSONObject2);
                }
                jSONObject.put("adSourceList", jSONArray);
            }
            jSONObject.put("aqn", this.f31698i);
            jSONObject.put("acn", this.f31699j);
            jSONObject.put("vcn", this.f31700k);
            jSONObject.put(TypedValues.CycleType.S_WAVE_OFFSET, this.f31701l);
            jSONObject.put("dlnet", this.f31702m);
            jSONObject.put("tv_start", this.f31703n);
            jSONObject.put("tv_end", this.f31704o);
            jSONObject.put(CampaignEx.JSON_KEY_READY_RATE, this.f31705p);
            jSONObject.put("endscreen_type", this.G);
            jSONObject.put("daily_play_cap", this.A);
            jSONObject.put("video_skip_time", this.B);
            jSONObject.put("video_skip_result", this.C);
            jSONObject.put("video_interactive_type", this.D);
            jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, this.f31714y);
            jSONObject.put("close_button_delay", this.E);
            jSONObject.put("playclosebtn_tm", this.f31694e);
            jSONObject.put("play_ctdown", this.f31695f);
            jSONObject.put("close_alert", this.f31696g);
            jSONObject.put("rfpv", this.f31708s);
            jSONObject.put("vdcmp", this.f31707r);
            JSONArray jSONArray2 = new JSONArray();
            ArrayList<Integer> arrayList = this.f31709t;
            if (arrayList != null) {
                if (arrayList.size() > 0) {
                    Iterator<Integer> it = this.f31709t.iterator();
                    while (it.hasNext()) {
                        jSONArray2.put(it.next());
                    }
                }
                jSONObject.put("atl_type", jSONArray2);
            }
            jSONObject.put("atl_dyt", this.f31710u);
            jSONObject.put("tmorl", this.f31711v);
            jSONObject.put("placementid", this.f31691b);
            jSONObject.put("ltafemty", this.f31712w);
            jSONObject.put("ltorwc", this.f31713x);
            jSONObject.put(RewardPlus.AMOUNT_MAX, this.H);
            jSONObject.put(RewardPlus.CALLBACK_RULE, this.I);
            jSONObject.put(RewardPlus.VIRTUAL_CURRENCY, this.J);
            jSONObject.put("amount", this.K);
            jSONObject.put("icon", this.L);
            jSONObject.put(RewardPlus.CURRENCY_ID, this.M);
            jSONObject.put("name", this.N);
            jSONObject.put("isDefault", this.Q);
            jSONObject.put("video_error_rule", this.R);
            jSONObject.put("loadtmo", this.S);
            jSONObject.put("vtag", this.T);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    public String a() {
        return this.O;
    }

    public int d() {
        return this.K;
    }

    public int f() {
        return this.f31710u;
    }

    public void g(int i10) {
        this.I = i10;
    }

    public void h(int i10) {
        this.f31697h = i10;
    }

    public int i() {
        return this.E;
    }

    public void j(String str) {
        this.T = str;
    }

    public void k(int i10) {
        this.E = i10;
    }

    public int l() {
        return this.f31702m;
    }

    public int m() {
        return this.G;
    }

    public int n() {
        return this.f31715z;
    }

    public int o() {
        return this.S;
    }

    public void p(int i10) {
        this.f31715z = i10;
    }

    public void q(int i10) {
        this.Q = i10;
    }

    public void r(int i10) {
        this.S = i10;
    }

    public String s() {
        return this.N;
    }

    public String t() {
        return this.f31691b;
    }

    public void u(int i10) {
        this.f31701l = i10;
    }

    public int v() {
        return this.F;
    }

    public int w() {
        return this.f31705p;
    }

    public void x(int i10) {
        this.F = i10;
    }

    public void y(int i10) {
        this.f31705p = i10;
    }

    public Queue<Integer> z() {
        LinkedList linkedList;
        Exception e10;
        List<com.mbridge.msdk.videocommon.entity.b> list;
        try {
            list = this.f31692c;
        } catch (Exception e11) {
            linkedList = null;
            e10 = e11;
        }
        if (list == null || list.size() <= 0) {
            return null;
        }
        linkedList = new LinkedList();
        for (int i10 = 0; i10 < this.f31692c.size(); i10++) {
            try {
                linkedList.add(Integer.valueOf(this.f31692c.get(i10).b()));
            } catch (Exception e12) {
                e10 = e12;
                e10.printStackTrace();
                return linkedList;
            }
        }
        return linkedList;
    }

    public void a(long j10) {
        this.f31693d = j10;
    }

    public int b() {
        return this.f31699j;
    }

    public String c() {
        return X;
    }

    public void d(String str) {
        this.L = str;
    }

    public void f(int i10) {
        this.f31710u = i10;
    }

    public int g() {
        return this.f31706q;
    }

    public void h(String str) {
        this.f31690a = str;
    }

    public void i(int i10) {
        this.f31706q = i10;
    }

    public long j() {
        return this.f31693d;
    }

    public void a(List<com.mbridge.msdk.videocommon.entity.b> list) {
        this.f31692c = list;
    }

    public void b(int i10) {
        this.f31699j = i10;
    }

    public void c(String str) {
        X = str;
    }

    public int e() {
        return this.f31698i;
    }

    public void a(double d10) {
        this.f31707r = d10;
    }

    public void b(JSONObject jSONObject) {
        this.V = jSONObject;
    }

    public void e(int i10) {
        this.f31698i = i10;
    }

    public boolean a(int i10) {
        ArrayList<Integer> arrayList = this.f31709t;
        if (arrayList == null || arrayList.size() <= 0) {
            return false;
        }
        return this.f31709t.contains(Integer.valueOf(i10));
    }

    public static c a(String str) {
        JSONObject optJSONObject;
        if (W == null) {
            W = g.a(com.mbridge.msdk.foundation.controller.c.m().d());
        }
        c cVar = null;
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String optString = jSONObject.optString("vtag", "");
                String optString2 = jSONObject.optString("rid", "");
                JSONArray optJSONArray = jSONObject.optJSONArray("unitSetting");
                if (optJSONArray == null || (optJSONObject = optJSONArray.optJSONObject(0)) == null) {
                    return null;
                }
                String optString3 = optJSONObject.optString("unitId");
                if (TextUtils.isEmpty(optString3)) {
                    return null;
                }
                c cVar2 = new c();
                try {
                    cVar2.j(optString);
                    cVar2.g(optString2);
                    List<com.mbridge.msdk.videocommon.entity.b> a10 = com.mbridge.msdk.videocommon.entity.b.a(optJSONObject.optJSONArray("adSourceList"));
                    cVar2.h(optString3);
                    cVar2.a(a10);
                    cVar2.h(optJSONObject.optInt("callbackType"));
                    int optInt = optJSONObject.optInt("aqn", 1);
                    if (optInt <= 0) {
                        optInt = 1;
                    }
                    cVar2.e(optInt);
                    int optInt2 = optJSONObject.optInt("acn", 1);
                    if (optInt2 < 0) {
                        optInt2 = 1;
                    }
                    cVar2.b(optInt2);
                    cVar2.E(optJSONObject.optInt("vcn", 5));
                    cVar2.u(optJSONObject.optInt(TypedValues.CycleType.S_WAVE_OFFSET, 5));
                    cVar2.n(optJSONObject.optInt("dlnet", 1));
                    cVar2.o(optJSONObject.optInt("endscreen_type", 2));
                    cVar2.D(optJSONObject.optInt("tv_start", 3));
                    cVar2.C(optJSONObject.optInt("tv_end", 80));
                    cVar2.y(optJSONObject.optInt(CampaignEx.JSON_KEY_READY_RATE, 100));
                    cVar2.i(optJSONObject.optInt("cd_rate", 0));
                    cVar2.a(jSONObject.optLong("current_time"));
                    cVar2.A(optJSONObject.optInt(AdUnitActivity.EXTRA_ORIENTATION, 0));
                    cVar2.m(optJSONObject.optInt("daily_play_cap", 0));
                    cVar2.I(optJSONObject.optInt("video_skip_time", -1));
                    cVar2.H(optJSONObject.optInt("video_skip_result", 2));
                    cVar2.G(optJSONObject.optInt("video_interactive_type", -1));
                    cVar2.k(optJSONObject.optInt("close_button_delay", 1));
                    cVar2.w(optJSONObject.optInt("playclosebtn_tm", -1));
                    cVar2.v(optJSONObject.optInt("play_ctdown", 0));
                    cVar2.j(optJSONObject.optInt("close_alert", 0));
                    cVar2.x(optJSONObject.optInt("rdrct", 20));
                    cVar2.p(optJSONObject.optInt("load_global_timeout", 70));
                    cVar2.z(optJSONObject.optInt("rfpv", -1));
                    cVar2.a(optJSONObject.optDouble("vdcmp", 1.0d));
                    cVar2.c(optJSONObject.optString("atzu"));
                    JSONArray optJSONArray2 = optJSONObject.optJSONArray("atl_type");
                    ArrayList<Integer> arrayList = new ArrayList<>();
                    try {
                        if (optJSONArray2 != null) {
                            for (int i10 = 0; i10 < optJSONArray2.length(); i10++) {
                                arrayList.add(Integer.valueOf(optJSONArray2.getInt(i10)));
                            }
                        } else {
                            arrayList.add(4);
                            arrayList.add(6);
                        }
                        cVar2.a(arrayList);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    int optInt3 = optJSONObject.optInt("atl_dyt", 0);
                    cVar2.f(optInt3 > 0 ? optInt3 : 3);
                    int optInt4 = optJSONObject.optInt("tmorl", 1);
                    cVar2.B((optInt4 > 2 || optInt4 <= 0) ? 1 : 1);
                    cVar2.f(optJSONObject.optString("placementid"));
                    cVar2.s(optJSONObject.optInt("ltafemty", 10));
                    cVar2.t(optJSONObject.optInt("ltorwc", 60));
                    cVar2.b(optJSONObject.optString("ab_id"));
                    cVar2.d(optJSONObject.optInt(RewardPlus.AMOUNT_MAX, 0));
                    cVar2.g(optJSONObject.optInt(RewardPlus.CALLBACK_RULE, 1));
                    cVar2.i(optJSONObject.optString(RewardPlus.VIRTUAL_CURRENCY, ""));
                    cVar2.c(optJSONObject.optInt("amount", 1));
                    cVar2.d(optJSONObject.optString("icon", ""));
                    cVar2.l(optJSONObject.optInt(RewardPlus.CURRENCY_ID, 1));
                    cVar2.e(optJSONObject.optString("name", "Virtual Item"));
                    cVar2.F(optJSONObject.optInt("video_error_rule", 1));
                    cVar2.r(optJSONObject.optInt("loadtmo", 60));
                    cVar2.a(optJSONObject.optJSONArray("local_cache_info"));
                    try {
                        String optString4 = optJSONObject.optString("retry_strategy");
                        if (!TextUtils.isEmpty(optString4)) {
                            String a11 = j0.a(optString4);
                            if (!TextUtils.isEmpty(a11)) {
                                cVar2.b(new JSONObject(a11));
                            }
                        }
                    } catch (Exception unused) {
                    }
                    return cVar2;
                } catch (Exception e11) {
                    e = e11;
                    cVar = cVar2;
                    e.printStackTrace();
                    return cVar;
                }
            } catch (Exception e12) {
                e = e12;
            }
        }
        return cVar;
    }

    public static c a(JSONObject jSONObject) {
        c cVar;
        c cVar2 = null;
        if (jSONObject != null) {
            try {
                cVar = new c();
            } catch (Exception e10) {
                e = e10;
            }
            try {
                cVar.a(com.mbridge.msdk.videocommon.entity.b.a(jSONObject.optJSONArray("adSourceList")));
                cVar.h(jSONObject.optInt("callbackType"));
                int optInt = jSONObject.optInt("aqn", 1);
                if (optInt <= 0) {
                    optInt = 1;
                }
                cVar.e(optInt);
                int optInt2 = jSONObject.optInt("acn", 1);
                if (optInt2 < 0) {
                    optInt2 = 1;
                }
                cVar.b(optInt2);
                cVar.E(jSONObject.optInt("vcn", 5));
                cVar.u(jSONObject.optInt(TypedValues.CycleType.S_WAVE_OFFSET, 5));
                cVar.n(jSONObject.optInt("dlnet", 1));
                cVar.o(jSONObject.optInt("endscreen_type", 2));
                cVar.D(jSONObject.optInt("tv_start", 3));
                cVar.C(jSONObject.optInt("tv_end", 80));
                cVar.y(jSONObject.optInt(CampaignEx.JSON_KEY_READY_RATE, 100));
                cVar.a(jSONObject.optLong("current_time"));
                cVar.A(jSONObject.optInt(AdUnitActivity.EXTRA_ORIENTATION, 0));
                cVar.m(jSONObject.optInt("daily_play_cap", 0));
                cVar.I(jSONObject.optInt("video_skip_time", -1));
                cVar.H(jSONObject.optInt("video_skip_result", 2));
                cVar.G(jSONObject.optInt("video_interactive_type", -1));
                cVar.k(jSONObject.optInt("close_button_delay", 1));
                cVar.w(jSONObject.optInt("playclosebtn_tm", -1));
                cVar.v(jSONObject.optInt("play_ctdown", 0));
                cVar.j(jSONObject.optInt("close_alert", 0));
                cVar.x(jSONObject.optInt("rdrct", 20));
                cVar.z(jSONObject.optInt("rfpv", -1));
                cVar.a(jSONObject.optDouble("vdcmp", 1.0d));
                cVar.p(jSONObject.optInt("load_global_timeout", 70));
                JSONArray optJSONArray = jSONObject.optJSONArray("atl_type");
                ArrayList<Integer> arrayList = new ArrayList<>();
                try {
                    if (optJSONArray != null) {
                        for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                            arrayList.add(Integer.valueOf(optJSONArray.getInt(i10)));
                        }
                    } else {
                        arrayList.add(4);
                        arrayList.add(6);
                    }
                    cVar.a(arrayList);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                cVar.f(jSONObject.optInt("atl_dyt", 3));
                int optInt3 = jSONObject.optInt("tmorl", 1);
                cVar.B((optInt3 > 2 || optInt3 <= 0) ? 1 : 1);
                cVar.f(jSONObject.optString("placementid"));
                cVar.s(jSONObject.optInt("ltafemty", 10));
                cVar.t(jSONObject.optInt("ltorwc", 60));
                cVar.b(jSONObject.optString("ab_id"));
                cVar.g(jSONObject.optString("rid", ""));
                cVar.d(jSONObject.optInt(RewardPlus.AMOUNT_MAX, 0));
                cVar.g(jSONObject.optInt(RewardPlus.CALLBACK_RULE, 1));
                cVar.i(jSONObject.optString(RewardPlus.VIRTUAL_CURRENCY, ""));
                cVar.c(jSONObject.optInt("amount", 1));
                cVar.d(jSONObject.optString("icon", ""));
                cVar.l(jSONObject.optInt(RewardPlus.CURRENCY_ID, 1));
                cVar.e(jSONObject.optString("name", "Virtual Item"));
                cVar.F(jSONObject.optInt("video_error_rule", 1));
                cVar.r(jSONObject.optInt("loadtmo", 60));
                cVar.j(jSONObject.optString("vtag", ""));
                cVar.a(jSONObject.optJSONArray("local_cache_info"));
                try {
                    String optString = jSONObject.optString("retry_strategy");
                    if (!TextUtils.isEmpty(optString)) {
                        String a10 = j0.a(optString);
                        if (!TextUtils.isEmpty(a10)) {
                            cVar.b(new JSONObject(a10));
                        }
                    }
                } catch (Exception unused) {
                }
                return cVar;
            } catch (Exception e12) {
                e = e12;
                cVar2 = cVar;
                e.printStackTrace();
                return cVar2;
            }
        }
        return null;
    }

    public void a(JSONArray jSONArray) {
        this.U = jSONArray;
    }
}
