package com.mbridge.msdk.tracker.network;

import android.os.SystemClock;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.p0;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: NetworkMonitor.java */
/* loaded from: classes6.dex */
public class p {
    private volatile long A;
    private volatile long B;
    private volatile long C;
    private volatile long D;
    private volatile long E;
    private volatile long F;
    private volatile long G;
    private volatile long H;
    private volatile List<InetAddress> I;
    private volatile InetSocketAddress J;
    private volatile Proxy K;
    private volatile com.mbridge.msdk.thrid.okhttp.o L;
    private volatile com.mbridge.msdk.thrid.okhttp.u M;
    private volatile IOException N;
    private volatile Exception P;
    private long R;
    private long S;
    private long T;
    private long U;

    /* renamed from: d  reason: collision with root package name */
    private volatile String f30292d;

    /* renamed from: f  reason: collision with root package name */
    private volatile long f30294f;

    /* renamed from: j  reason: collision with root package name */
    private volatile String f30298j;

    /* renamed from: k  reason: collision with root package name */
    private volatile String f30299k;

    /* renamed from: s  reason: collision with root package name */
    private volatile long f30307s;

    /* renamed from: t  reason: collision with root package name */
    private volatile long f30308t;

    /* renamed from: u  reason: collision with root package name */
    private volatile IOException f30309u;

    /* renamed from: v  reason: collision with root package name */
    private volatile long f30310v;

    /* renamed from: w  reason: collision with root package name */
    private volatile long f30311w;

    /* renamed from: y  reason: collision with root package name */
    private volatile long f30313y;

    /* renamed from: z  reason: collision with root package name */
    private volatile long f30314z;

    /* renamed from: a  reason: collision with root package name */
    protected volatile String f30289a = "";

    /* renamed from: b  reason: collision with root package name */
    private volatile String f30290b = "";

    /* renamed from: c  reason: collision with root package name */
    private volatile String f30291c = "";

    /* renamed from: e  reason: collision with root package name */
    private volatile String f30293e = "";

    /* renamed from: g  reason: collision with root package name */
    private volatile int f30295g = -1;

    /* renamed from: h  reason: collision with root package name */
    private volatile String f30296h = "";

    /* renamed from: i  reason: collision with root package name */
    private volatile int f30297i = -1;

    /* renamed from: l  reason: collision with root package name */
    private volatile String f30300l = OkHttp3Client.NETWORK_CLIENT_OKHTTP;

    /* renamed from: m  reason: collision with root package name */
    private volatile boolean f30301m = false;

    /* renamed from: n  reason: collision with root package name */
    private final AtomicInteger f30302n = new AtomicInteger(0);

    /* renamed from: o  reason: collision with root package name */
    private volatile String f30303o = "";

    /* renamed from: p  reason: collision with root package name */
    private volatile long f30304p = 0;

    /* renamed from: q  reason: collision with root package name */
    private volatile long f30305q = 0;

    /* renamed from: r  reason: collision with root package name */
    private volatile long f30306r = 0;

    /* renamed from: x  reason: collision with root package name */
    private volatile String f30312x = "system";
    private volatile boolean O = false;
    private volatile boolean Q = false;

    public p(String str, String str2) {
        this.f30292d = "";
        this.f30298j = "un_known";
        this.f30299k = "";
        this.f30298j = str;
        this.f30299k = str2;
        this.f30292d = UUID.randomUUID().toString();
    }

    private void P() {
        JSONObject x10;
        try {
            com.mbridge.msdk.tracker.e a10 = a(x(), "m_request_end");
            if (MBridgeConstans.DEBUG) {
                p0.a("NetworkMonitor_" + H(), "request  end  monitor = " + x10.toString());
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().d().d(a10);
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                p0.b("NetworkMonitor", "reportRequestEnd ", th2);
            }
        }
    }

    private void Q() {
        JSONObject z10;
        try {
            com.mbridge.msdk.tracker.e a10 = a(z(), "m_request_start");
            if (MBridgeConstans.DEBUG) {
                p0.a("NetworkMonitor_" + H(), "request start monitor = " + z10.toString());
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().d().d(a10);
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                p0.b("NetworkMonitor", "reportRequestStart ", th2);
            }
        }
    }

    private void T() {
        this.N = null;
        this.f30309u = null;
        this.P = null;
        this.f30307s = 0L;
        this.f30308t = 0L;
        this.f30310v = 0L;
        this.f30311w = 0L;
        this.f30313y = 0L;
        this.f30314z = 0L;
        this.A = 0L;
        this.B = 0L;
        this.C = 0L;
        this.D = 0L;
        this.E = 0L;
        this.F = 0L;
        this.G = 0L;
        this.H = 0L;
        this.f30305q = 0L;
        this.f30306r = 0L;
        this.f30301m = false;
        this.f30295g = -1;
        this.f30297i = -1;
        this.f30296h = "";
        this.f30303o = "";
        this.f30304p = 0L;
        this.Q = false;
    }

    private JSONObject x() throws JSONException {
        int i10;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("key", "m_request_end");
        jSONObject.put("uuid", M());
        jSONObject.put("request_uuid", A());
        jSONObject.put("url", L());
        jSONObject.put("timeout", I());
        jSONObject.put("timeout_connection", e());
        jSONObject.put("timeout_read", s());
        jSONObject.put("timeout_write", N());
        jSONObject.put("scene", H());
        jSONObject.put("lrid", n());
        jSONObject.put("method", o());
        jSONObject.put("adtp", b());
        jSONObject.put("http_stack", m());
        jSONObject.put("retry_count", v() - 1);
        jSONObject.put("request_wait_duration", this.f30294f);
        jSONObject.put("duration", j());
        jSONObject.put("request_duration", w());
        jSONObject.put("response_code", E());
        String h10 = h();
        jSONObject.put("dns_result", h10);
        if (TextUtils.isEmpty(h10)) {
            i10 = 2;
        } else {
            i10 = 1;
        }
        jSONObject.put("dns_status", i10);
        jSONObject.put("is_connection_acquired", O() ? 1 : 0);
        jSONObject.put("address", c());
        jSONObject.put("port", p());
        jSONObject.put("proxy", r());
        jSONObject.put("protocol", q());
        jSONObject.put("tls_version", J());
        jSONObject.put("content_type", f());
        int G = G();
        jSONObject.put("result", G);
        if (G != 1) {
            jSONObject.put("error_type", l());
            jSONObject.put("reason", k());
        }
        jSONObject.put("dns_duration", g());
        jSONObject.put("connect_duration", d());
        jSONObject.put("request_header_duration", y());
        jSONObject.put("request_body_duration", t());
        jSONObject.put("request_body_size", u());
        jSONObject.put("response_header_duration", F());
        jSONObject.put("response_body_duration", C());
        jSONObject.put("response_body_size", D());
        jSONObject.put("transmission_duration", K());
        jSONObject.put("current_response_body_size", B());
        jSONObject.put("dns_type", i());
        return jSONObject;
    }

    private JSONObject z() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("key", "m_request_start");
        jSONObject.put("uuid", M());
        jSONObject.put("request_uuid", A());
        jSONObject.put("lrid", n());
        jSONObject.put("url", L());
        jSONObject.put("timeout", I());
        jSONObject.put("timeout_connection", e());
        jSONObject.put("timeout_read", s());
        jSONObject.put("timeout_write", N());
        jSONObject.put("scene", H());
        jSONObject.put("method", o());
        jSONObject.put("adtp", b());
        jSONObject.put("http_stack", m());
        jSONObject.put("retry_count", v() - 1);
        jSONObject.put("request_wait_duration", this.f30294f);
        return jSONObject;
    }

    public String A() {
        if (TextUtils.isEmpty(this.f30293e)) {
            return "";
        }
        return this.f30293e;
    }

    public long B() {
        return this.f30306r;
    }

    public long C() {
        return this.H - this.G;
    }

    public long D() {
        return this.f30305q;
    }

    public int E() {
        return this.f30297i;
    }

    public long F() {
        return this.F - this.E;
    }

    public int G() {
        return this.f30295g;
    }

    public String H() {
        if (TextUtils.isEmpty(this.f30298j)) {
            return "un_known";
        }
        return this.f30298j;
    }

    public long I() {
        return this.R;
    }

    public String J() {
        if (this.L != null) {
            try {
                com.mbridge.msdk.thrid.okhttp.b0 c10 = this.L.c();
                if (c10 == null) {
                    return "";
                }
                return c10.a();
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("NetworkMonitor", "getTlsVersion ", e10);
                }
            }
        }
        return "";
    }

    public long K() {
        return this.E - this.A;
    }

    public String L() {
        if (TextUtils.isEmpty(this.f30289a)) {
            return "";
        }
        return this.f30289a;
    }

    public String M() {
        if (TextUtils.isEmpty(this.f30292d)) {
            return "";
        }
        return this.f30292d;
    }

    public long N() {
        return this.U;
    }

    public boolean O() {
        return this.f30301m;
    }

    public void R() {
        this.C = SystemClock.elapsedRealtime();
    }

    public void S() {
        this.A = SystemClock.elapsedRealtime();
    }

    public void U() {
        this.G = SystemClock.elapsedRealtime();
    }

    public void V() {
        this.E = SystemClock.elapsedRealtime();
    }

    public void a(String str) {
        this.f30291c = str;
    }

    public void b(com.mbridge.msdk.thrid.okhttp.g gVar) {
    }

    public void c(String str) {
        this.f30312x = str;
    }

    public void d(String str) {
        this.f30296h = str;
    }

    public void e(long j10) {
        this.S = j10;
    }

    public void f(String str) {
        this.f30289a = str;
    }

    public long g() {
        return this.f30311w - this.f30310v;
    }

    public String h() {
        if (this.I != null && !this.I.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < this.I.size(); i10++) {
                try {
                    InetAddress inetAddress = this.I.get(i10);
                    if (inetAddress != null) {
                        sb2.append(inetAddress.getHostAddress());
                        if (i10 != this.I.size() - 1) {
                            sb2.append(",");
                        }
                    }
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        p0.b("NetworkMonitor", "getDnsResult ", e10);
                    }
                }
            }
            return sb2.toString();
        }
        return "";
    }

    public void i(long j10) {
        this.R = j10;
    }

    public void j(long j10) {
        this.U = j10;
    }

    public String k() {
        try {
            if (this.N != null) {
                String name = this.N.getClass().getName();
                String message = this.N.getMessage();
                if (!TextUtils.isEmpty(message)) {
                    return a("connection: %s ", name, message);
                }
            }
            if (this.f30309u != null) {
                String name2 = this.f30309u.getClass().getName();
                String message2 = this.f30309u.getMessage();
                if (!TextUtils.isEmpty(message2)) {
                    return a("call: %s ", name2, message2);
                }
            }
            if (this.P != null) {
                String name3 = this.P.getClass().getName();
                String message3 = this.P.getMessage();
                if (!TextUtils.isEmpty(message3)) {
                    return a("error: %s ", name3, message3);
                }
                return "un_known";
            }
            return "un_known";
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("NetworkMonitor", "getError ", e10);
                return "un_known";
            }
            return "un_known";
        }
    }

    public String l() {
        return this.f30296h;
    }

    public String m() {
        return this.f30300l;
    }

    public String n() {
        if (TextUtils.isEmpty(this.f30290b)) {
            return "";
        }
        return this.f30290b;
    }

    public String o() {
        if (TextUtils.isEmpty(this.f30299k)) {
            return "";
        }
        return this.f30299k;
    }

    public int p() {
        if (this.J != null) {
            return this.J.getPort();
        }
        return -1;
    }

    public String q() {
        if (this.M != null) {
            return this.M.toString();
        }
        return "";
    }

    public String r() {
        Proxy.Type type;
        if (this.K == null || (type = this.K.type()) == null) {
            return "";
        }
        return type.toString();
    }

    public long s() {
        return this.T;
    }

    public long t() {
        return this.D - this.C;
    }

    public long u() {
        return this.f30304p;
    }

    public int v() {
        return this.f30302n.getAndAdd(0);
    }

    public long w() {
        return this.f30308t - this.f30307s;
    }

    public long y() {
        return this.B - this.A;
    }

    public void a(com.mbridge.msdk.thrid.okhttp.d dVar) {
        this.f30307s = SystemClock.elapsedRealtime();
    }

    public String b() {
        return TextUtils.isEmpty(this.f30291c) ? "" : this.f30291c;
    }

    public String c() {
        if (this.J != null) {
            try {
                InetAddress address = this.J.getAddress();
                if (address == null) {
                    return "";
                }
                String hostAddress = address.getHostAddress();
                return TextUtils.isEmpty(hostAddress) ? "" : hostAddress;
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("NetworkMonitor", "getAddress ", e10);
                }
            }
        }
        return "";
    }

    public long d() {
        return this.f30314z - this.f30313y;
    }

    public long e() {
        return this.S;
    }

    public void f(long j10) {
        this.T = j10;
    }

    public void g(long j10) {
        this.f30304p = j10;
    }

    public String i() {
        return TextUtils.isEmpty(this.f30312x) ? "system" : this.f30312x;
    }

    public long j() {
        return (this.f30308t - this.f30307s) + this.f30294f;
    }

    public void a() {
        this.f30310v = SystemClock.elapsedRealtime();
    }

    public void b(int i10) {
        this.f30297i = i10;
    }

    public void d(long j10) {
        this.H = SystemClock.elapsedRealtime();
    }

    public void e(String str) {
        this.f30290b = str;
    }

    public String f() {
        return com.mbridge.msdk.foundation.same.d.a(this.f30303o);
    }

    public void a(List<InetAddress> list) {
        this.f30311w = SystemClock.elapsedRealtime();
        this.I = list;
    }

    public void b(long j10) {
        this.D = SystemClock.elapsedRealtime();
    }

    public void b(String str) {
        this.f30303o = str;
    }

    public void a(InetSocketAddress inetSocketAddress, Proxy proxy) {
        this.f30313y = SystemClock.elapsedRealtime();
        this.J = inetSocketAddress;
        this.K = proxy;
        this.O = true;
    }

    public void c(long j10) {
        this.f30306r = j10;
    }

    public void a(com.mbridge.msdk.thrid.okhttp.o oVar) {
        this.L = oVar;
    }

    public void a(com.mbridge.msdk.thrid.okhttp.u uVar, IOException iOException) {
        this.f30314z = SystemClock.elapsedRealtime();
        this.M = uVar;
        this.N = iOException;
    }

    public void h(long j10) {
        this.f30305q = j10;
    }

    public void a(com.mbridge.msdk.thrid.okhttp.g gVar) {
        this.f30301m = !this.O;
        if (!this.f30301m || gVar == null) {
            return;
        }
        try {
            this.M = gVar.a();
            com.mbridge.msdk.thrid.okhttp.a0 c10 = gVar.c();
            if (c10 != null) {
                this.J = c10.d();
                this.K = c10.b();
            }
            this.L = gVar.b();
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("NetworkMonitor", "connectionAcquired ", e10);
            }
        }
    }

    public void W() {
    }

    public void a(com.mbridge.msdk.thrid.okhttp.w wVar) {
        this.B = SystemClock.elapsedRealtime();
    }

    public void a(com.mbridge.msdk.thrid.okhttp.y yVar) {
        this.F = SystemClock.elapsedRealtime();
        if (yVar != null) {
            try {
                com.mbridge.msdk.thrid.okhttp.p m10 = yVar.m();
                if (m10 != null) {
                    String b10 = m10.b(CommonGatewayClient.HEADER_CONTENT_TYPE);
                    if (TextUtils.isEmpty(b10)) {
                        b10 = "";
                    }
                    b(b10);
                }
            } catch (Exception e10) {
                b("unknown");
                if (MBridgeConstans.DEBUG) {
                    p0.b("NetworkMonitor", "responseHeadersEnd ", e10);
                }
            }
        }
    }

    public void a(IOException iOException) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.f30308t = elapsedRealtime;
        this.f30309u = iOException;
        a(iOException, elapsedRealtime);
    }

    private void a(IOException iOException, long j10) {
        if (iOException != null) {
            if (this.f30310v == 0) {
                this.f30310v = j10;
            }
            if (this.f30311w == 0) {
                this.f30311w = j10;
            }
            if (this.f30313y == 0) {
                this.f30313y = j10;
            }
            if (this.f30314z == 0) {
                this.f30314z = j10;
            }
            if (this.A == 0) {
                this.A = j10;
            }
            if (this.B == 0) {
                this.B = j10;
            }
            if (this.C == 0) {
                this.C = j10;
            }
            if (this.D == 0) {
                this.D = j10;
            }
            if (this.E == 0) {
                this.E = j10;
            }
            if (this.F == 0) {
                this.F = j10;
            }
            if (this.G == 0) {
                this.G = j10;
            }
            if (this.H == 0) {
                this.H = j10;
            }
        }
    }

    private static String a(String str, String str2, String str3) {
        StringBuilder sb2 = new StringBuilder();
        if (TextUtils.isEmpty(str2)) {
            str2 = "IOException";
        }
        sb2.append(String.format(str, str2));
        sb2.append(TextUtils.isEmpty(str3) ? "" : str3.replaceAll("[\\n\\r]", " "));
        return sb2.toString();
    }

    public void a(long j10) {
        this.f30293e = UUID.randomUUID().toString();
        this.f30294f = j10;
        this.f30302n.addAndGet(1);
        T();
        this.Q = true;
        Q();
    }

    public void a(Exception exc) {
        this.P = exc;
    }

    public void a(int i10) {
        this.f30295g = i10;
        if (this.Q) {
            this.Q = false;
            P();
        }
    }

    private static com.mbridge.msdk.tracker.e a(JSONObject jSONObject, String str) {
        com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e(str);
        eVar.a(0);
        eVar.b(0);
        eVar.a(com.mbridge.msdk.foundation.same.report.c.d());
        eVar.a(jSONObject);
        return eVar;
    }
}
