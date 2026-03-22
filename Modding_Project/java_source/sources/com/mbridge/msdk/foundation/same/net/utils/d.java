package com.mbridge.msdk.foundation.same.net.utils;

import android.net.Uri;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.n;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.tracker.network.toolbox.i;
import com.mbridge.msdk.tracker.p;
import com.mbridge.msdk.tracker.u;
import com.mbridge.msdk.tracker.x;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Pattern;
/* compiled from: RequestUrlUtil.java */
/* loaded from: classes5.dex */
public class d {
    public String A;
    private String B;
    public String C;
    public String D;
    private String E;
    public String F;
    private String G;
    public String H;
    private String I;
    public String J;
    public String K;
    private String L;
    public String M;
    private String N;
    public String O;
    private String P;
    public String Q;
    public String R;
    private String S;
    public String T;
    public String U;
    private String V;
    public String W;
    public String X;
    private String Y;
    public String Z;

    /* renamed from: a  reason: collision with root package name */
    private final String f27152a;

    /* renamed from: a0  reason: collision with root package name */
    private String f27153a0;

    /* renamed from: b  reason: collision with root package name */
    public String f27154b;

    /* renamed from: b0  reason: collision with root package name */
    public String f27155b0;

    /* renamed from: c  reason: collision with root package name */
    public String f27156c;

    /* renamed from: c0  reason: collision with root package name */
    private String f27157c0;

    /* renamed from: d  reason: collision with root package name */
    public String f27158d;

    /* renamed from: d0  reason: collision with root package name */
    public String f27159d0;

    /* renamed from: e  reason: collision with root package name */
    public String f27160e;

    /* renamed from: e0  reason: collision with root package name */
    private boolean f27161e0;

    /* renamed from: f  reason: collision with root package name */
    public String f27162f;

    /* renamed from: f0  reason: collision with root package name */
    private int f27163f0;

    /* renamed from: g  reason: collision with root package name */
    public String f27164g;

    /* renamed from: h  reason: collision with root package name */
    public String f27165h;

    /* renamed from: i  reason: collision with root package name */
    public String f27166i;

    /* renamed from: j  reason: collision with root package name */
    public String f27167j;

    /* renamed from: k  reason: collision with root package name */
    public String f27168k;

    /* renamed from: l  reason: collision with root package name */
    public String f27169l;

    /* renamed from: m  reason: collision with root package name */
    public String f27170m;

    /* renamed from: n  reason: collision with root package name */
    public int f27171n;

    /* renamed from: o  reason: collision with root package name */
    public int f27172o;

    /* renamed from: p  reason: collision with root package name */
    public int f27173p;

    /* renamed from: q  reason: collision with root package name */
    public int f27174q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f27175r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f27176s;

    /* renamed from: t  reason: collision with root package name */
    public int f27177t;

    /* renamed from: u  reason: collision with root package name */
    public ArrayList<String> f27178u;

    /* renamed from: v  reason: collision with root package name */
    public int f27179v;

    /* renamed from: w  reason: collision with root package name */
    public int f27180w;

    /* renamed from: x  reason: collision with root package name */
    public ArrayList<String> f27181x;

    /* renamed from: y  reason: collision with root package name */
    public String f27182y;

    /* renamed from: z  reason: collision with root package name */
    private String f27183z;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RequestUrlUtil.java */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final d f27184a = new d();
    }

    private boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.compile("(https|http)://[-A-Za-z0-9{}+&@#/%?=~_|!:,.;]+[-A-Za-z0-9+&@#/%=~_|]").matcher(str.trim()).matches();
    }

    private void b() {
        this.M = this.f27162f + this.L;
    }

    private void c() {
        this.A = this.f27182y + this.f27183z;
        this.H = this.f27182y + this.G;
        i.b().f(this.f27182y);
    }

    public static d h() {
        return b.f27184a;
    }

    public void d(int i10) {
        this.f27163f0 = i10;
    }

    public void e() {
        this.Q = this.f27166i + this.P;
        this.C = this.f27166i + this.B;
        this.T = this.f27166i + this.S;
        this.J = this.f27166i + this.I;
        this.W = this.f27166i + this.V;
    }

    public void f() {
        this.R = this.f27170m + this.P;
        this.D = this.f27170m + this.B;
        this.U = this.f27170m + this.S;
        this.K = this.f27170m + this.I;
        this.X = this.f27170m + this.V;
    }

    public boolean g() {
        try {
            if (!this.f27176s) {
                ArrayList<String> arrayList = this.f27178u;
                if (arrayList != null && this.f27179v <= arrayList.size() - 1) {
                    this.f27166i = this.f27178u.get(this.f27179v);
                    e();
                    return true;
                }
            } else {
                ArrayList<String> arrayList2 = this.f27181x;
                if (arrayList2 != null && this.f27180w <= arrayList2.size() - 1) {
                    if (!a(this.f27181x.get(this.f27180w))) {
                        this.f27170m = this.f27181x.get(this.f27180w);
                        f();
                    }
                    return true;
                }
            }
            if (this.f27175r) {
                this.f27179v = 0;
                this.f27180w = 0;
            }
            return false;
        } catch (Throwable th2) {
            p0.a("RequestUrlUtil", th2.getMessage());
            return false;
        }
    }

    public int i() {
        return this.f27163f0;
    }

    public void j() {
        boolean z10;
        HashMap<String, String> C;
        g d10 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d10 != null) {
            com.mbridge.msdk.setting.a j10 = d10.j();
            if (j10 != null) {
                this.f27169l = j10.f();
                this.f27173p = j10.g();
                this.f27165h = j10.e();
                a();
            }
            com.mbridge.msdk.setting.d y10 = d10.y();
            if (y10 != null) {
                this.f27168k = y10.d();
                this.f27172o = y10.e();
                this.f27162f = y10.c();
                b();
                a(d10);
            }
            if (d10.n0() == 2) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f27176s = z10;
            this.f27177t = d10.n0();
            a(!d10.b(2));
            if (d10.C() != null && d10.C().size() > 0 && (C = d10.C()) != null && C.size() > 0) {
                if (C.containsKey("v") && !TextUtils.isEmpty(C.get("v")) && a(C.get("v"))) {
                    this.f27160e = C.get("v");
                    d();
                }
                if (C.containsKey(CampaignEx.JSON_KEY_HB) && !TextUtils.isEmpty(C.get(CampaignEx.JSON_KEY_HB)) && a(C.get(CampaignEx.JSON_KEY_HB))) {
                    this.f27182y = C.get(CampaignEx.JSON_KEY_HB);
                    c();
                }
                if (C.containsKey("lg") && !TextUtils.isEmpty(C.get("lg"))) {
                    String str = C.get("lg");
                    if (a(str)) {
                        this.f27158d = str;
                    } else {
                        this.f27167j = str;
                    }
                }
                if (C.containsKey("lgt") && !TextUtils.isEmpty(C.get("lgt"))) {
                    String str2 = C.get("lgt");
                    if (a(str2)) {
                        String b10 = b(str2);
                        if (!TextUtils.isEmpty(b10)) {
                            this.f27167j = b10;
                        }
                    } else {
                        this.f27167j = str2;
                    }
                }
            }
            String u10 = d10.u();
            if (!TextUtils.isEmpty(u10)) {
                this.f27166i = u10;
                e();
                this.f27178u.add(0, u10);
            }
            String v10 = d10.v();
            if (!TextUtils.isEmpty(v10)) {
                this.f27170m = v10;
                f();
                this.f27181x.add(0, v10);
            }
        }
    }

    private d() {
        this.f27152a = "RequestUrlUtil";
        this.f27154b = DomainNameUtils.getInstance().DEFAULT_HOST_APPLETS;
        this.f27156c = DomainNameUtils.getInstance().DEFAULT_CDN_SPARE_SETTING_URL;
        this.f27158d = DomainNameUtils.getInstance().DEFAULT_HOST_ANALYTICS;
        this.f27160e = DomainNameUtils.getInstance().DEFAULT_HOST_API;
        this.f27162f = DomainNameUtils.getInstance().DEFAULT_HOST_MONITOR_DEFAULT;
        this.f27164g = DomainNameUtils.getInstance().DEFAULT_HOST_PRIVACY;
        this.f27165h = DomainNameUtils.getInstance().DEFAULT_HOST_REVENUE_DEFAULT;
        this.f27166i = DomainNameUtils.getInstance().DEFAULT_HOST_SETTING;
        this.f27167j = DomainNameUtils.getInstance().DEFAULT_HOST_TCP_ANALYTICS;
        this.f27168k = DomainNameUtils.getInstance().DEFAULT_HOST_TCP_MONITOR;
        this.f27169l = DomainNameUtils.getInstance().DEFAULT_HOST_TCP_REVENUE;
        this.f27170m = DomainNameUtils.getInstance().DEFAULT_HOST_TCP_SETTING;
        this.f27171n = 9377;
        this.f27172o = 9377;
        this.f27173p = 9988;
        this.f27174q = 9377;
        this.f27175r = false;
        this.f27176s = false;
        this.f27177t = 1;
        this.f27178u = DomainNameUtils.getInstance().SPARE_SETTING_HOST;
        this.f27179v = 0;
        this.f27180w = 0;
        this.f27181x = DomainNameUtils.getInstance().SPARE_TCP_SETTING_HOST;
        this.f27182y = DomainNameUtils.getInstance().DEFAULT_HB_HOST;
        this.f27183z = "/bid";
        this.A = this.f27182y + this.f27183z;
        this.B = "/sdk/customid";
        this.C = this.f27166i + this.B;
        this.D = this.f27170m + this.B;
        this.E = "/image";
        this.F = this.f27160e + this.E;
        this.G = "/load";
        this.H = this.f27182y + this.G;
        this.I = "/mapping";
        this.J = this.f27166i + this.I;
        this.K = this.f27170m + this.I;
        this.L = "";
        this.M = this.f27165h + this.L;
        this.N = "/batchPaidEvent";
        this.O = this.f27165h + this.N;
        this.P = "/setting";
        this.Q = this.f27166i + this.P;
        this.R = this.f27170m + this.P;
        this.S = "/rewardsetting";
        this.T = this.f27166i + this.S;
        this.U = this.f27170m + this.S;
        this.V = "/appwall/setting";
        this.W = this.f27166i + this.V;
        this.X = this.f27170m + this.V;
        this.Y = "/openapi/ad/v3";
        this.Z = this.f27160e + this.Y;
        this.f27153a0 = "/openapi/ad/v4";
        this.f27155b0 = this.f27160e + this.f27153a0;
        this.f27157c0 = "/openapi/ad/v5";
        this.f27159d0 = this.f27160e + this.f27157c0;
        this.f27161e0 = true;
        this.f27163f0 = 0;
    }

    private String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return Uri.parse(str).getHost();
        } catch (Throwable th2) {
            p0.b("RequestUrlUtil", th2.getMessage());
            return "";
        }
    }

    private void d() {
        this.Z = this.f27160e + this.Y;
        this.f27155b0 = this.f27160e + this.f27153a0;
        this.f27159d0 = this.f27160e + this.f27157c0;
        this.F = this.f27160e + this.E;
    }

    public void c(int i10) {
        this.f27174q = i10;
    }

    public String a(String str, int i10) {
        try {
            if (!TextUtils.isEmpty(str)) {
                String[] split = str.split("_");
                if (split.length > 1) {
                    return a(true, split[1]);
                }
                return a(true, "");
            }
        } catch (Exception e10) {
            p0.b("RequestUrlUtil", e10.getMessage());
        }
        return i10 % 2 == 0 ? this.f27159d0 : this.Z;
    }

    public void b(int i10) {
        this.f27171n = i10;
    }

    public String a(boolean z10, String str) {
        if (z10) {
            if (this.H.contains(JsonUtils.EMPTY_JSON) && !TextUtils.isEmpty(str)) {
                String str2 = this.H;
                return str2.replace(JsonUtils.EMPTY_JSON, str + "-");
            }
            return this.H.replace(JsonUtils.EMPTY_JSON, "");
        }
        return this.A.replace(JsonUtils.EMPTY_JSON, "");
    }

    public void a(boolean z10) {
        this.f27161e0 = z10;
    }

    private void a() {
        this.O = this.f27165h + this.N;
    }

    private void a(g gVar) {
        com.mbridge.msdk.setting.d y10;
        if (gVar == null || (y10 = gVar.y()) == null || y10.a() == 1) {
            return;
        }
        int b10 = r0.a().b("monitor", "type", r0.a().b("t_r_t", 1));
        if (b10 != 0 && b10 != 1) {
            b10 = 0;
        }
        u.a().a(com.mbridge.msdk.foundation.controller.c.m().d(), new x.b().a(new com.mbridge.msdk.foundation.same.report.d()).a(new n()).a(b10, a(b10)).a(r0.a().b("t_m_e_t", 604800000)).b(r0.a().b("t_m_e_s", 50)).d(r0.a().b("t_m_r_c", 50)).c(r0.a().b("t_m_t", 15000)).e(r0.a().b("t_m_r_t_s", 1)).a(), y10.b() * 1000, com.mbridge.msdk.foundation.same.report.c.b());
    }

    private p a(int i10) {
        if (i10 == 1) {
            return new p(new m((byte) 2), h().f27168k, h().f27172o);
        }
        return new p(new com.mbridge.msdk.tracker.network.toolbox.h(), h().M, 0);
    }
}
