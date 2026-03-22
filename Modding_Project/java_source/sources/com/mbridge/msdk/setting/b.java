package com.mbridge.msdk.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.c0;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.j0;
import com.ss.texturerender.TextureRenderKeys;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: BaseSetting.java */
/* loaded from: classes6.dex */
public class b {

    /* renamed from: c1  reason: collision with root package name */
    public static int f28910c1 = 1500;
    private boolean D0;
    private long F;
    private JSONArray F0;
    private JSONObject G0;
    private ArrayList<Integer> H;
    private d I;
    private long I0;
    private C0419b J;
    private long N0;
    private HashMap<String, String> O;
    private boolean O0;
    private String P;
    private int U;
    private String U0;
    private String X;
    private Map<String, String> Y;

    /* renamed from: a1  reason: collision with root package name */
    private int f28913a1;

    /* renamed from: b1  reason: collision with root package name */
    private String f28916b1;

    /* renamed from: h0  reason: collision with root package name */
    private int f28928h0;

    /* renamed from: k0  reason: collision with root package name */
    private String f28934k0;

    /* renamed from: l  reason: collision with root package name */
    private int f28935l;

    /* renamed from: l0  reason: collision with root package name */
    private String f28936l0;

    /* renamed from: n  reason: collision with root package name */
    private List<com.mbridge.msdk.foundation.entity.a> f28939n;

    /* renamed from: o0  reason: collision with root package name */
    private int f28942o0;

    /* renamed from: p  reason: collision with root package name */
    private long f28943p;

    /* renamed from: p0  reason: collision with root package name */
    private int f28944p0;

    /* renamed from: q  reason: collision with root package name */
    private com.mbridge.msdk.setting.a f28945q;

    /* renamed from: q0  reason: collision with root package name */
    private int f28946q0;

    /* renamed from: r  reason: collision with root package name */
    private String f28947r;

    /* renamed from: r0  reason: collision with root package name */
    private int f28948r0;

    /* renamed from: s  reason: collision with root package name */
    private Map<String, a> f28949s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f28951t;

    /* renamed from: u  reason: collision with root package name */
    private int f28953u;

    /* renamed from: u0  reason: collision with root package name */
    private long f28954u0;

    /* renamed from: v0  reason: collision with root package name */
    private long f28956v0;

    /* renamed from: a  reason: collision with root package name */
    private boolean f28911a = false;

    /* renamed from: b  reason: collision with root package name */
    private JSONArray f28914b = new JSONArray();

    /* renamed from: c  reason: collision with root package name */
    private JSONArray f28917c = new JSONArray();

    /* renamed from: d  reason: collision with root package name */
    private String f28919d = "";

    /* renamed from: e  reason: collision with root package name */
    private int f28921e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f28923f = 0;

    /* renamed from: g  reason: collision with root package name */
    private int f28925g = 2;

    /* renamed from: h  reason: collision with root package name */
    private int f28927h = 0;

    /* renamed from: i  reason: collision with root package name */
    private String f28929i = "";

    /* renamed from: j  reason: collision with root package name */
    private String f28931j = "";

    /* renamed from: k  reason: collision with root package name */
    private String f28933k = "";

    /* renamed from: m  reason: collision with root package name */
    private int f28937m = 0;

    /* renamed from: o  reason: collision with root package name */
    private int f28941o = 0;

    /* renamed from: v  reason: collision with root package name */
    private int f28955v = 1;

    /* renamed from: w  reason: collision with root package name */
    private boolean f28957w = false;

    /* renamed from: x  reason: collision with root package name */
    private String f28959x = "";

    /* renamed from: y  reason: collision with root package name */
    private String f28961y = "";

    /* renamed from: z  reason: collision with root package name */
    private String f28963z = "";
    private String A = "";
    private String B = "";
    private int C = 120;
    private String D = com.mbridge.msdk.foundation.same.net.utils.d.h().f27166i;
    private String E = com.mbridge.msdk.foundation.same.net.utils.d.h().f27170m;
    private int G = f28910c1;
    private int K = 0;
    private long L = 86400;
    private int M = 0;
    private int N = 3;
    private boolean Q = true;
    private int R = 0;
    private boolean S = false;
    private boolean T = false;
    private int V = 0;
    private int W = 0;
    private String Z = "1.0";

    /* renamed from: a0  reason: collision with root package name */
    private int f28912a0 = 30;

    /* renamed from: b0  reason: collision with root package name */
    private int f28915b0 = 9377;

    /* renamed from: c0  reason: collision with root package name */
    private int f28918c0 = 0;

    /* renamed from: d0  reason: collision with root package name */
    private int f28920d0 = 5;

    /* renamed from: e0  reason: collision with root package name */
    private int f28922e0 = 1;

    /* renamed from: f0  reason: collision with root package name */
    private int f28924f0 = 8000;

    /* renamed from: g0  reason: collision with root package name */
    private String f28926g0 = "";

    /* renamed from: i0  reason: collision with root package name */
    private int f28930i0 = 10;

    /* renamed from: j0  reason: collision with root package name */
    private int f28932j0 = 120;

    /* renamed from: m0  reason: collision with root package name */
    private String f28938m0 = "";

    /* renamed from: n0  reason: collision with root package name */
    private String f28940n0 = "";

    /* renamed from: s0  reason: collision with root package name */
    private String f28950s0 = "";

    /* renamed from: t0  reason: collision with root package name */
    private String f28952t0 = "";

    /* renamed from: w0  reason: collision with root package name */
    private List<Integer> f28958w0 = new ArrayList();

    /* renamed from: x0  reason: collision with root package name */
    private int f28960x0 = 3;

    /* renamed from: y0  reason: collision with root package name */
    private int f28962y0 = 0;

    /* renamed from: z0  reason: collision with root package name */
    private int f28964z0 = 3;
    private int A0 = 0;
    private int B0 = 10;
    private int C0 = 600;
    private int E0 = 0;
    private String H0 = "";
    private int J0 = 8000;
    private int K0 = 1;
    private long L0 = 10;
    private int M0 = 3;
    private int P0 = 1;
    private int Q0 = 1;
    private int R0 = 1;
    private int S0 = 1;
    private String T0 = "";
    private int V0 = 1300;
    private int W0 = 0;
    private int X0 = 0;
    private long Y0 = 3600;
    private String Z0 = "";

    /* compiled from: BaseSetting.java */
    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private List<String> f28965a;

        /* renamed from: b  reason: collision with root package name */
        private List<String> f28966b;

        /* renamed from: c  reason: collision with root package name */
        private List<String> f28967c;

        /* renamed from: d  reason: collision with root package name */
        private List<String> f28968d;

        public List<String> a() {
            return this.f28965a;
        }

        public List<String> b() {
            return this.f28966b;
        }

        public List<String> c() {
            return this.f28967c;
        }

        public List<String> d() {
            return this.f28968d;
        }

        public void a(JSONObject jSONObject) {
            try {
                JSONArray optJSONArray = jSONObject.optJSONArray(TextureRenderKeys.KEY_IS_X);
                if (optJSONArray != null) {
                    this.f28967c = c0.a(optJSONArray);
                }
                JSONArray optJSONArray2 = jSONObject.optJSONArray(TextureRenderKeys.KEY_IS_Y);
                if (optJSONArray2 != null) {
                    this.f28968d = c0.a(optJSONArray2);
                }
                JSONArray optJSONArray3 = jSONObject.optJSONArray("width");
                if (optJSONArray3 != null) {
                    this.f28966b = c0.a(optJSONArray3);
                }
                JSONArray optJSONArray4 = jSONObject.optJSONArray("height");
                if (optJSONArray4 != null) {
                    this.f28965a = c0.a(optJSONArray4);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public static String a(Context context, String str) {
        try {
            g d10 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (d10 != null && d10.G() != null) {
                String host = Uri.parse(str).getHost();
                for (Map.Entry<String, String> entry : d10.G().entrySet()) {
                    String key = entry.getKey();
                    if (!TextUtils.isEmpty(host) && host.contains(key)) {
                        String str2 = d10.G().get(key);
                        if (TextUtils.isEmpty(str2)) {
                            return "";
                        }
                        return str2.replace("{gaid}", com.mbridge.msdk.foundation.tools.f.d());
                    }
                }
                return "";
            }
            return "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public long A() {
        return this.L;
    }

    public boolean A0() {
        return this.Q;
    }

    public int B() {
        return this.N;
    }

    public boolean B0() {
        return this.f28951t;
    }

    public HashMap<String, String> C() {
        return this.O;
    }

    public boolean C0() {
        return this.f28957w;
    }

    public void D(int i10) {
        this.f28913a1 = i10;
    }

    public boolean D0() {
        return this.S;
    }

    public int E() {
        return this.U;
    }

    public boolean E0() {
        return this.f28911a;
    }

    public int F() {
        return this.V;
    }

    public boolean F0() {
        if (!TextUtils.isEmpty(this.B) && !TextUtils.isEmpty(this.f28963z) && !TextUtils.isEmpty(this.A) && !TextUtils.isEmpty(this.f28959x)) {
            return true;
        }
        return false;
    }

    public Map<String, String> G() {
        return this.Y;
    }

    public boolean G0() {
        if (!TextUtils.isEmpty(this.B) && !TextUtils.isEmpty(this.f28963z) && !TextUtils.isEmpty(this.A) && !TextUtils.isEmpty(this.f28961y)) {
            return true;
        }
        return false;
    }

    public JSONArray H() {
        return this.f28914b;
    }

    public boolean H0() {
        return this.T;
    }

    public JSONArray I() {
        return this.f28917c;
    }

    public boolean I0() {
        return this.D0;
    }

    public String J() {
        return this.Z;
    }

    public boolean J0() {
        return this.O0;
    }

    public int K() {
        return this.f28922e0;
    }

    public void K0() {
        String language = Locale.getDefault().getLanguage();
        if (!G0()) {
            if (!TextUtils.isEmpty(language) && language.equals("zh")) {
                this.B = "确认关闭？";
                this.f28963z = "关闭后您将不会获得任何奖励噢~ ";
                this.A = "确认关闭";
                this.f28961y = "继续观看";
            } else {
                this.B = "Confirm to close? ";
                this.f28963z = "You will not be rewarded after closing the window";
                this.A = "Close it";
                this.f28961y = "Continue";
            }
        }
        if (!F0()) {
            if (!TextUtils.isEmpty(language) && language.equals("zh")) {
                this.B = "确认关闭？";
                this.f28963z = "关闭后您将不会获得任何奖励噢~ ";
                this.A = "确认关闭";
                this.f28959x = "继续试玩";
                return;
            }
            this.B = "Confirm to close? ";
            this.f28963z = "You will not be rewarded after closing the window";
            this.A = "Close it";
            this.f28959x = "Continue";
        }
    }

    public int L() {
        return this.f28924f0;
    }

    public int M() {
        return this.f28928h0;
    }

    public int N() {
        return this.f28932j0;
    }

    public String O() {
        return this.f28934k0;
    }

    public String P() {
        return this.f28936l0;
    }

    public String Q() {
        return this.Z0;
    }

    public long R() {
        return this.Y0;
    }

    public int S() {
        return this.f28913a1;
    }

    public String T() {
        return this.f28938m0;
    }

    public String U() {
        return this.f28940n0;
    }

    public int V() {
        return this.f28942o0;
    }

    public int W() {
        return this.f28944p0;
    }

    public int X() {
        return this.f28946q0;
    }

    public int Y() {
        return this.f28948r0;
    }

    public long Z() {
        return this.f28954u0;
    }

    public long a0() {
        if (this.f28956v0 <= 0) {
            this.f28956v0 = 7200L;
        }
        return this.f28956v0;
    }

    public void b(Map<String, String> map) {
        this.Y = map;
    }

    public int b0() {
        return this.f28960x0;
    }

    public void c(int i10) {
        this.f28921e = i10;
    }

    public int c0() {
        return this.f28962y0;
    }

    public void d(long j10) {
        this.Y0 = j10;
    }

    public int d0() {
        return this.f28964z0;
    }

    public void e(int i10) {
        this.f28925g = i10;
    }

    public int e0() {
        return this.A0;
    }

    public void f(int i10) {
        this.f28927h = i10;
    }

    public int f0() {
        return this.B0;
    }

    public void g(int i10) {
        this.f28935l = i10;
    }

    public int g0() {
        return this.C0;
    }

    public void h(int i10) {
        this.f28937m = i10;
    }

    public int h0() {
        return this.E0;
    }

    public void i(int i10) {
        this.f28941o = i10;
    }

    public JSONArray i0() {
        return this.F0;
    }

    public com.mbridge.msdk.setting.a j() {
        return this.f28945q;
    }

    public JSONObject j0() {
        return this.G0;
    }

    public String k() {
        return this.f28947r;
    }

    public String k0() {
        return this.H0;
    }

    public Map<String, a> l() {
        return this.f28949s;
    }

    public long l0() {
        return this.I0;
    }

    public int m() {
        return this.f28953u;
    }

    public int m0() {
        return this.J0;
    }

    public int n() {
        return this.f28955v;
    }

    public int n0() {
        return this.K0;
    }

    public String o() {
        return this.f28959x;
    }

    public long o0() {
        return this.L0 * 1000;
    }

    public String p() {
        return this.f28961y;
    }

    public int p0() {
        return this.M0;
    }

    public String q() {
        return this.f28963z;
    }

    public long q0() {
        return this.N0;
    }

    public String r() {
        return this.A;
    }

    public int r0() {
        return this.P0;
    }

    public String s() {
        return this.B;
    }

    public int s0() {
        return this.Q0;
    }

    public void t(String str) {
        this.Z0 = str;
    }

    public int t0() {
        return this.R0;
    }

    public String toString() {
        return " cfc=" + this.f28953u + " getpf=" + this.L + " rurl=" + this.D0;
    }

    public String u() {
        return this.D;
    }

    public int u0() {
        return this.S0;
    }

    public String v() {
        return this.E;
    }

    public String v0() {
        return this.T0;
    }

    public long w() {
        return this.F;
    }

    public String w0() {
        return this.U0;
    }

    public ArrayList<Integer> x() {
        return this.H;
    }

    public int x0() {
        return this.V0;
    }

    public d y() {
        return this.I;
    }

    public int y0() {
        return this.W0;
    }

    public C0419b z() {
        return this.J;
    }

    public int z0() {
        return this.X0;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:149:0x0596
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public static com.mbridge.msdk.setting.g b(org.json.JSONObject r17) {
        /*
            Method dump skipped, instructions count: 1514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.setting.b.b(org.json.JSONObject):com.mbridge.msdk.setting.g");
    }

    public void A(int i10) {
        if (i10 > 0) {
            this.f28930i0 = i10;
        }
    }

    public void B(int i10) {
        this.f28928h0 = i10;
    }

    public void C(int i10) {
        this.f28932j0 = i10;
    }

    public int D() {
        return this.R;
    }

    public void E(int i10) {
        this.f28942o0 = i10;
    }

    public void F(int i10) {
        this.f28944p0 = i10;
    }

    public void G(int i10) {
        this.f28946q0 = i10;
    }

    public void H(int i10) {
        this.f28948r0 = i10;
    }

    public void I(int i10) {
        this.f28960x0 = i10;
    }

    public void J(int i10) {
        this.f28962y0 = i10;
    }

    public void K(int i10) {
        this.f28964z0 = i10;
    }

    public void L(int i10) {
        this.A0 = i10;
    }

    public void M(int i10) {
        this.B0 = i10;
    }

    public void N(int i10) {
        this.C0 = i10;
    }

    public void O(int i10) {
        this.E0 = i10;
    }

    public void P(int i10) {
        this.J0 = i10;
    }

    public void Q(int i10) {
        this.K0 = i10;
    }

    public void R(int i10) {
        this.M0 = i10;
    }

    public void S(int i10) {
        this.P0 = i10;
    }

    public void T(int i10) {
        this.Q0 = i10;
    }

    public void U(int i10) {
        this.R0 = i10;
    }

    public void V(int i10) {
        this.S0 = i10;
    }

    public void W(int i10) {
        this.V0 = i10;
    }

    public void X(int i10) {
        this.W0 = i10;
    }

    public void Y(int i10) {
        this.X0 = i10;
    }

    public void c(String str) {
        this.f28929i = str;
    }

    public void d(int i10) {
        this.f28923f = i10;
    }

    public void e(String str) {
        this.f28933k = str;
    }

    public int f() {
        return this.f28937m;
    }

    public List<com.mbridge.msdk.foundation.entity.a> g() {
        return this.f28939n;
    }

    public int h() {
        return this.f28941o;
    }

    public long i() {
        return this.f28943p;
    }

    public void j(int i10) {
        this.f28953u = i10;
    }

    public void k(int i10) {
        this.f28955v = i10;
    }

    public void l(int i10) {
        this.C = i10;
    }

    public void m(String str) {
        this.E = str;
    }

    public void n(int i10) {
        this.K = i10;
    }

    public void o(int i10) {
        this.M = i10;
        com.mbridge.msdk.foundation.same.net.utils.d.h().d(i10);
    }

    public void p(int i10) {
        this.N = i10;
    }

    public void q(int i10) {
        this.R = i10;
    }

    public void r(int i10) {
        this.U = i10;
    }

    public void s(int i10) {
        this.V = i10;
    }

    public int t() {
        return this.C;
    }

    public void u(int i10) {
        this.f28912a0 = i10;
    }

    public void v(int i10) {
        this.f28915b0 = i10;
        com.mbridge.msdk.foundation.same.net.utils.d.h().b(i10);
        com.mbridge.msdk.foundation.same.net.utils.d.h().c(i10);
    }

    public void w(int i10) {
        this.f28918c0 = i10;
    }

    public void x(int i10) {
        this.f28920d0 = i10;
    }

    public void y(int i10) {
        this.f28922e0 = i10;
    }

    public void z(int i10) {
        this.f28924f0 = i10;
    }

    public void A(String str) {
        this.T0 = str;
    }

    public void B(String str) {
        this.U0 = str;
    }

    public String c() {
        return this.f28931j;
    }

    public void d(String str) {
        this.f28931j = str;
    }

    public int e() {
        return this.f28935l;
    }

    public void f(String str) {
        this.f28947r = str;
    }

    public void g(String str) {
        this.f28959x = str;
    }

    public void h(String str) {
        this.f28961y = str;
    }

    public void i(String str) {
        this.f28963z = str;
    }

    public void j(String str) {
        this.A = str;
    }

    public void k(String str) {
        this.B = str;
    }

    public void l(String str) {
        this.D = str;
    }

    public void m(int i10) {
        this.G = i10;
        com.mbridge.msdk.click.utils.a.f26135d = i10;
    }

    public void n(String str) {
        this.f28916b1 = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        e.a().b(j0.a(str));
    }

    public void p(String str) {
        this.X = str;
    }

    public void q(String str) {
        this.Z = str;
    }

    public void r(String str) {
        this.f28934k0 = str;
    }

    public void s(String str) {
        this.f28936l0 = str;
    }

    public void t(int i10) {
        this.W = i10;
    }

    public void u(String str) {
        this.f28938m0 = str;
    }

    public void w(String str) {
        this.f28950s0 = str;
    }

    public void x(String str) {
        this.f28952t0 = str;
    }

    public void y(String str) {
        this.H0 = str;
    }

    public void z(String str) {
        if (TextUtils.isEmpty(this.f28926g0)) {
            return;
        }
        this.f28926g0 = str;
        if (TextUtils.isEmpty(com.mbridge.msdk.foundation.controller.c.m().i())) {
            com.mbridge.msdk.foundation.controller.c.m().d(this.f28926g0);
        }
    }

    public void c(long j10) {
        this.L = j10;
    }

    public String d() {
        return this.f28933k;
    }

    public void e(long j10) {
        this.f28954u0 = j10;
    }

    public void f(long j10) {
        this.f28956v0 = j10;
    }

    public void g(long j10) {
        this.I0 = j10;
    }

    public void h(long j10) {
        this.L0 = j10;
    }

    public void i(long j10) {
        this.N0 = j10;
    }

    public void o(String str) {
        this.P = str;
    }

    public void c(JSONArray jSONArray) {
        this.F0 = jSONArray;
    }

    public void d(boolean z10) {
        this.S = z10;
    }

    public void e(boolean z10) {
        this.f28911a = z10;
    }

    public void f(boolean z10) {
        this.T = z10;
    }

    public void g(boolean z10) {
        this.D0 = z10;
    }

    public void h(boolean z10) {
        this.O0 = z10;
    }

    public void v(String str) {
        this.f28940n0 = str;
    }

    public void c(JSONObject jSONObject) {
        this.G0 = jSONObject;
    }

    public void c(boolean z10) {
        this.f28957w = z10;
    }

    public static Map<String, a> a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                a aVar = new a();
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                if (optJSONObject != null) {
                    aVar.a(optJSONObject);
                }
                hashMap.put(next, aVar);
            }
            return hashMap;
        } catch (JSONException e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
            return null;
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
            return null;
        }
    }

    /* compiled from: BaseSetting.java */
    /* renamed from: com.mbridge.msdk.setting.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class C0419b {

        /* renamed from: a  reason: collision with root package name */
        private String f28969a;

        /* renamed from: b  reason: collision with root package name */
        private JSONArray f28970b;

        /* renamed from: c  reason: collision with root package name */
        private String f28971c;

        /* renamed from: d  reason: collision with root package name */
        private String f28972d;

        /* renamed from: e  reason: collision with root package name */
        private String f28973e;

        /* renamed from: f  reason: collision with root package name */
        private String f28974f;

        public static C0419b a(JSONObject jSONObject) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            C0419b c0419b = new C0419b();
            Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
            c0419b.f28974f = jSONObject.optString("title", d10.getString(h0.a(d10, "mbridge_cm_feedback_dialog_title", TypedValues.Custom.S_STRING)));
            c0419b.f28969a = jSONObject.optString("cancel", d10.getString(h0.a(d10, "mbridge_cm_feedback_dialog_close_close", TypedValues.Custom.S_STRING)));
            c0419b.f28972d = jSONObject.optString("submit", d10.getString(h0.a(d10, "mbridge_cm_feedback_dialog_close_submit", TypedValues.Custom.S_STRING)));
            c0419b.f28973e = jSONObject.optString("submit_notice", d10.getString(h0.a(d10, "mbridge_cm_feedback_dialog_submit_notice", TypedValues.Custom.S_STRING)));
            c0419b.f28971c = jSONObject.optString("privacy", d10.getString(h0.a(d10, "mbridge_cm_feedback_dialog_privacy_des", TypedValues.Custom.S_STRING)));
            JSONArray optJSONArray = jSONObject.optJSONArray("content");
            c0419b.f28970b = optJSONArray;
            if (optJSONArray == null) {
                JSONArray jSONArray = new JSONArray();
                c0419b.f28970b = jSONArray;
                jSONArray.put(d10.getString(h0.a(d10, "mbridge_cm_feedback_dialog_content_not_play", TypedValues.Custom.S_STRING)));
                c0419b.f28970b.put(d10.getString(h0.a(d10, "mbridge_cm_feedback_dialog_content_sound_problems", TypedValues.Custom.S_STRING)));
                c0419b.f28970b.put(d10.getString(h0.a(d10, "mbridge_cm_feedback_dialog_content_misleading", TypedValues.Custom.S_STRING)));
                c0419b.f28970b.put(d10.getString(h0.a(d10, "mbridge_cm_feedback_dialog_content_fraud", TypedValues.Custom.S_STRING)));
                c0419b.f28970b.put(d10.getString(h0.a(d10, "mbridge_cm_feedback_dialog_content_por_violence", TypedValues.Custom.S_STRING)));
                c0419b.f28970b.put(d10.getString(h0.a(d10, "mbridge_cm_feedback_dialog_content_other", TypedValues.Custom.S_STRING)));
            }
            return c0419b;
        }

        public JSONArray b() {
            return this.f28970b;
        }

        public String c() {
            return this.f28971c;
        }

        public String d() {
            return this.f28972d;
        }

        public String e() {
            return this.f28973e;
        }

        public String f() {
            return this.f28974f;
        }

        public String a() {
            return this.f28969a;
        }
    }

    public void a(int i10) {
        this.f28958w0.add(Integer.valueOf(i10));
    }

    private static void a(JSONObject jSONObject) {
        FastKV fastKV = null;
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            try {
                fastKV = new FastKV.Builder(com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), j0.a("H+tU+FeXHM==")).build();
            } catch (Exception unused) {
            }
        }
        if (fastKV != null) {
            try {
                Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
                if (jSONObject == null || d10 == null) {
                    return;
                }
                String optString = jSONObject.optString(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                if (!TextUtils.isEmpty(optString) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.V, optString)) {
                    com.mbridge.msdk.foundation.same.a.V = optString;
                    com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                    try {
                        fastKV.putString(j0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                    } catch (Exception unused2) {
                    }
                }
                String optString2 = jSONObject.optString("c");
                if (TextUtils.isEmpty(optString2) || TextUtils.equals(com.mbridge.msdk.foundation.same.a.f27025g, optString2)) {
                    return;
                }
                com.mbridge.msdk.foundation.same.a.f27025g = optString2;
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.f27025g);
                try {
                    fastKV.putString(j0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.f27025g);
                    return;
                } catch (Exception unused3) {
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        try {
            Context d11 = com.mbridge.msdk.foundation.controller.c.m().d();
            if (jSONObject == null || d11 == null) {
                return;
            }
            String optString3 = jSONObject.optString(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
            if (!TextUtils.isEmpty(optString3) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.V, optString3)) {
                com.mbridge.msdk.foundation.same.a.V = optString3;
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                SharedPreferences sharedPreferences = d11.getSharedPreferences(j0.a("H+tU+FeXHM=="), 0);
                if (sharedPreferences != null) {
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putString(j0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                    edit.apply();
                }
            }
            String optString4 = jSONObject.optString("c");
            if (TextUtils.isEmpty(optString4) || TextUtils.equals(com.mbridge.msdk.foundation.same.a.f27025g, optString4)) {
                return;
            }
            com.mbridge.msdk.foundation.same.a.f27025g = optString4;
            com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.f27025g);
            SharedPreferences sharedPreferences2 = d11.getSharedPreferences(j0.a("H+tU+FeXHM=="), 0);
            if (sharedPreferences2 != null) {
                SharedPreferences.Editor edit2 = sharedPreferences2.edit();
                edit2.putString(j0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.f27025g);
                edit2.apply();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public String a() {
        return this.f28919d;
    }

    public void a(List<com.mbridge.msdk.foundation.entity.a> list) {
        this.f28939n = list;
    }

    public void a(long j10) {
        this.f28943p = j10;
    }

    public void a(com.mbridge.msdk.setting.a aVar) {
        this.f28945q = aVar;
    }

    public void a(Map<String, a> map) {
        this.f28949s = map;
    }

    public void a(ArrayList<Integer> arrayList) {
        this.H = arrayList;
    }

    public void a(d dVar) {
        this.I = dVar;
    }

    public void a(C0419b c0419b) {
        this.J = c0419b;
    }

    public void a(HashMap<String, String> hashMap) {
        this.O = hashMap;
    }

    public void a(JSONArray jSONArray) {
        if (jSONArray == null) {
            jSONArray = new JSONArray();
            jSONArray.put("2000088");
        }
        this.f28914b = jSONArray;
    }

    public void a(boolean z10) {
        this.Q = z10;
    }

    public void b(String str) {
        this.f28919d = str;
    }

    public String b() {
        return this.f28929i;
    }

    public void b(long j10) {
        this.F = j10;
    }

    public void b(JSONArray jSONArray) {
        if (jSONArray == null) {
            jSONArray = new JSONArray();
            jSONArray.put("2000041");
            jSONArray.put("2000042");
            jSONArray.put("2000032");
            jSONArray.put("2000079");
        }
        this.f28917c = jSONArray;
    }

    public void b(boolean z10) {
        this.f28951t = z10;
    }

    public boolean b(int i10) {
        return this.f28958w0.contains(Integer.valueOf(i10));
    }
}
