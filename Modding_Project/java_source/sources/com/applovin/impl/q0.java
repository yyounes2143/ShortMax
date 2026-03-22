package com.applovin.impl;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.util.Consumer;
import androidx.webkit.ProxyConfig;
import com.applovin.impl.s4;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.y3;
import com.applovin.sdk.AppLovinErrorCodes;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import com.vungle.ads.internal.ui.AdActivity;
import java.net.MalformedURLException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class q0 {

    /* renamed from: e  reason: collision with root package name */
    private static final List f9300e = Arrays.asList("5.0/i", "4.0/ad", "1.0/mediate");

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f9301a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f9302b;

    /* renamed from: c  reason: collision with root package name */
    private final y3 f9303c;

    /* renamed from: d  reason: collision with root package name */
    private d f9304d;

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private long f9305a;

        /* renamed from: b  reason: collision with root package name */
        private long f9306b;

        public long a() {
            return this.f9305a;
        }

        public long b() {
            return this.f9306b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(long j10) {
            this.f9305a = j10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(long j10) {
            this.f9306b = j10;
        }
    }

    /* loaded from: classes2.dex */
    private class c implements Consumer {

        /* renamed from: a  reason: collision with root package name */
        private final String f9307a;

        /* renamed from: b  reason: collision with root package name */
        private final com.applovin.impl.sdk.network.a f9308b;

        /* renamed from: c  reason: collision with root package name */
        private final String f9309c;

        /* renamed from: d  reason: collision with root package name */
        private final Object f9310d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f9311e;

        /* renamed from: f  reason: collision with root package name */
        private final b f9312f;

        /* renamed from: g  reason: collision with root package name */
        private final e f9313g;

        @Override // androidx.core.util.Consumer
        /* renamed from: a */
        public void accept(y3.d dVar) {
            int i10;
            int c10;
            String str;
            long e10 = dVar.e();
            Object obj = null;
            try {
                try {
                    c10 = dVar.c();
                } catch (MalformedURLException e11) {
                    e = e11;
                    i10 = 0;
                }
                try {
                    if (c10 <= 0) {
                        q0.this.a(this.f9309c, this.f9307a, c10, e10, (Throwable) null);
                        this.f9313g.a(this.f9307a, c10, null, null);
                    } else if (c10 >= 200 && c10 < 400) {
                        b bVar = this.f9312f;
                        if (bVar != null) {
                            bVar.a(e10);
                        }
                        q0.this.a(this.f9309c, this.f9307a, c10, e10);
                        byte[] d10 = dVar.d();
                        if (k7.h(com.applovin.impl.sdk.k.o()) && (!this.f9311e || s4.b(d10) != s4.a.V2)) {
                            String str2 = "";
                            if (d10 == null) {
                                str = "";
                            } else {
                                str = new String(dVar.d(), Charset.forName("UTF-8"));
                            }
                            if (this.f9308b.b() != null) {
                                str2 = this.f9308b.b().toString();
                            }
                            q0.this.f9301a.u().a(str, this.f9307a, str2);
                        }
                        if (d10 != null) {
                            String str3 = new String(dVar.d(), Charset.forName("UTF-8"));
                            b bVar2 = this.f9312f;
                            if (bVar2 != null) {
                                bVar2.b(d10.length);
                                if (this.f9308b.r()) {
                                    q0.this.f9304d = new d(this.f9308b.f(), d10.length, e10);
                                }
                            }
                            if (this.f9311e) {
                                String b10 = s4.b(d10, q0.this.f9301a.j0(), q0.this.f9301a);
                                if (b10 == null) {
                                    HashMap hashMap = new HashMap(2);
                                    hashMap.put(AdActivity.REQUEST_KEY_EXTRA, StringUtils.getHostAndPath(this.f9307a));
                                    hashMap.put("response", str3);
                                    q0.this.f9301a.G().trackEvent("rdf", hashMap);
                                }
                                str3 = b10;
                            }
                            try {
                                this.f9313g.a(this.f9307a, q0.this.a(str3, this.f9310d), c10);
                                return;
                            } catch (Throwable th2) {
                                String str4 = "Unable to parse response from " + StringUtils.getHostAndPath(this.f9307a) + " because of " + th2.getClass().getName() + " : " + th2.getMessage();
                                com.applovin.impl.sdk.o unused = q0.this.f9302b;
                                if (com.applovin.impl.sdk.o.a()) {
                                    q0.this.f9302b.a("ConnectionManager", str4, th2);
                                }
                                q0.this.f9301a.E().a("ConnectionManager", "failedToParseResponse", th2, CollectionUtils.hashMap("url", StringUtils.getHostAndPath(this.f9307a)));
                                this.f9313g.a(this.f9307a, AppLovinErrorCodes.INVALID_RESPONSE, str4, null);
                                return;
                            }
                        }
                        this.f9313g.a(this.f9307a, this.f9310d, c10);
                    } else {
                        this.f9313g.a(this.f9307a, c10, null, null);
                    }
                } catch (MalformedURLException e12) {
                    e = e12;
                    i10 = c10;
                    if (this.f9310d == null) {
                        q0.this.a(this.f9309c, this.f9307a, i10, e10);
                        this.f9313g.a(this.f9307a, this.f9310d, -901);
                        return;
                    }
                    q0.this.a(this.f9309c, this.f9307a, i10, e10, e);
                    this.f9313g.a(this.f9307a, -901, e.getMessage(), null);
                }
            } catch (Throwable th3) {
                int b11 = dVar.b();
                try {
                    byte[] f10 = dVar.f();
                    String str5 = new String(f10);
                    if (f10 != null) {
                        if (this.f9311e) {
                            str5 = s4.b(f10, q0.this.f9301a.j0(), q0.this.f9301a);
                        }
                        obj = q0.this.a(str5, this.f9310d);
                    }
                } catch (Throwable unused2) {
                }
                q0.this.a(this.f9309c, this.f9307a, b11, e10, th3);
                this.f9313g.a(this.f9307a, b11, th3.getMessage(), obj);
            }
        }

        private c(String str, com.applovin.impl.sdk.network.a aVar, String str2, Object obj, boolean z10, b bVar, e eVar) {
            this.f9307a = str;
            this.f9308b = aVar;
            this.f9309c = str2;
            this.f9310d = obj;
            this.f9311e = z10;
            this.f9312f = bVar;
            this.f9313g = eVar;
        }
    }

    /* loaded from: classes2.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private final long f9315a = System.currentTimeMillis();

        /* renamed from: b  reason: collision with root package name */
        private final String f9316b;

        /* renamed from: c  reason: collision with root package name */
        private final long f9317c;

        /* renamed from: d  reason: collision with root package name */
        private final long f9318d;

        public d(String str, long j10, long j11) {
            this.f9316b = str;
            this.f9317c = j10;
            this.f9318d = j11;
        }

        protected boolean a(Object obj) {
            return obj instanceof d;
        }

        public long b() {
            return this.f9317c;
        }

        public long c() {
            return this.f9315a;
        }

        public String d() {
            return this.f9316b;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (!dVar.a(this) || c() != dVar.c() || b() != dVar.b() || a() != dVar.a()) {
                return false;
            }
            String d10 = d();
            String d11 = dVar.d();
            if (d10 != null ? d10.equals(d11) : d11 == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            long c10 = c();
            long b10 = b();
            long a10 = a();
            String d10 = d();
            int i10 = (((((((int) (c10 ^ (c10 >>> 32))) + 59) * 59) + ((int) (b10 ^ (b10 >>> 32)))) * 59) + ((int) ((a10 >>> 32) ^ a10))) * 59;
            if (d10 == null) {
                hashCode = 43;
            } else {
                hashCode = d10.hashCode();
            }
            return i10 + hashCode;
        }

        public String toString() {
            return "ConnectionManager.RequestMeasurement(timestampMillis=" + c() + ", urlHostAndPathString=" + d() + ", responseSizeBytes=" + b() + ", connectionTimeMillis=" + a() + ")";
        }

        public long a() {
            return this.f9318d;
        }
    }

    /* loaded from: classes2.dex */
    public interface e {
        void a(String str, int i10, String str2, Object obj);

        void a(String str, Object obj, int i10);
    }

    public q0(com.applovin.impl.sdk.k kVar) {
        this.f9301a = kVar;
        this.f9302b = kVar.O();
        y3 y3Var = new y3(kVar);
        this.f9303c = y3Var;
        y3Var.a();
    }

    public void a(com.applovin.impl.sdk.network.a aVar, b bVar, e eVar) {
        String str;
        y3.c.a a10;
        y3 y3Var;
        Object d10;
        byte[] bytes;
        if (aVar != null) {
            String f10 = aVar.f();
            String h10 = aVar.h();
            if (f10 == null) {
                throw new IllegalArgumentException("No endpoint specified");
            }
            if (h10 == null) {
                throw new IllegalArgumentException("No method specified");
            }
            if (eVar != null) {
                if (!f10.toLowerCase().startsWith(ProxyConfig.MATCH_HTTP)) {
                    String str2 = "Requested postback submission to non HTTP endpoint " + f10 + "; skipping...";
                    com.applovin.impl.sdk.o.h("ConnectionManager", str2);
                    eVar.a(f10, AppLovinErrorCodes.INVALID_URL, str2, null);
                    return;
                }
                String httpsString = StringUtils.toHttpsString(f10);
                HashMap hashMap = new HashMap(2);
                boolean m10 = aVar.m();
                s4.a a11 = ((Boolean) this.f9301a.a(v4.f10239e5)).booleanValue() ? s4.a.a(((Integer) this.f9301a.a(v4.f10213b5)).intValue()) : aVar.e();
                long a12 = k7.a(this.f9301a);
                if ((aVar.i() != null && !aVar.i().isEmpty()) || aVar.c() > 0) {
                    Map i10 = aVar.i();
                    Boolean bool = (Boolean) this.f9301a.a(v4.f10253g3);
                    if (i10 != null && aVar.c() > 0) {
                        i10.put("current_retry_attempt", String.valueOf(aVar.c()));
                    }
                    if (m10) {
                        String a13 = k7.a(i10, bool.booleanValue());
                        String b10 = s4.b(a13, a12, a11, this.f9301a.j0(), this.f9301a);
                        if (StringUtils.isValidString(a13) && TextUtils.isEmpty(b10)) {
                            hashMap.put("query", a13);
                        }
                        httpsString = StringUtils.appendQueryParameter(httpsString, TtmlNode.TAG_P, b10);
                    } else {
                        httpsString = StringUtils.appendQueryParameters(httpsString, i10, bool.booleanValue());
                    }
                }
                String str3 = httpsString;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                try {
                    Boolean endsWith = StringUtils.endsWith(StringUtils.getHostAndPath(str3), f9300e);
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar = this.f9302b;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Sending ");
                        sb2.append(h10);
                        sb2.append(" request to id=#");
                        sb2.append(str3.hashCode());
                        sb2.append(" \"");
                        sb2.append(endsWith.booleanValue() ? str3 : StringUtils.getHostAndPath(str3));
                        sb2.append("\"...");
                        oVar.d("ConnectionManager", sb2.toString());
                    }
                    a10 = new y3.c.a().a(str3).b(h10).a(aVar.g()).a(aVar.l());
                    if (aVar.b() != null) {
                        if (m10) {
                            bytes = s4.a(aVar.b().toString(), a12, a11, this.f9301a.j0(), this.f9301a);
                            if (bytes == null) {
                                hashMap.put("body", aVar.b().toString());
                            }
                        } else {
                            bytes = aVar.b().toString().getBytes("UTF-8");
                        }
                        byte[] bArr = bytes;
                        byte[] a14 = (!(m10 && a11 == s4.a.V2) && aVar.o() && bArr != null && bArr.length > ((Integer) this.f9301a.a(v4.f10399y5)).intValue()) ? k7.a(bArr) : null;
                        a10.a(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/json; charset=utf-8");
                        if (aVar.o() && a14 != null) {
                            a10.a("Content-Encoding", "gzip");
                            a10.a(a14);
                        } else if (bArr != null) {
                            a10.a(bArr);
                        }
                    }
                    if (!hashMap.isEmpty()) {
                        hashMap.put(AdActivity.REQUEST_KEY_EXTRA, StringUtils.getHostAndPath(str3));
                        this.f9301a.G().trackEvent("ref", hashMap);
                    }
                    y3Var = this.f9303c;
                    d10 = aVar.d();
                    str = str3;
                } catch (Throwable th2) {
                    th = th2;
                    str = str3;
                }
                try {
                    y3Var.a(a10.a(new c(str3, aVar, h10, d10, m10, bVar, eVar)).a(this.f9301a.r0().d()).a());
                    return;
                } catch (Throwable th3) {
                    th = th3;
                    String str4 = str;
                    a(h10, str4, 0, SystemClock.elapsedRealtime() - elapsedRealtime, th);
                    eVar.a(str4, 0, th.getMessage(), null);
                    return;
                }
            }
            throw new IllegalArgumentException("No callback specified");
        }
        throw new IllegalArgumentException("No request specified");
    }

    public d a() {
        return this.f9304d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object a(String str, Object obj) {
        if (obj == null) {
            return str;
        }
        if (str != null && str.length() >= 3) {
            if (obj instanceof JSONObject) {
                return new JSONObject(str);
            }
            if (obj instanceof m8) {
                return n8.a(str, this.f9301a);
            }
            if (obj instanceof String) {
                return str;
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f9302b;
                oVar.b("ConnectionManager", "Failed to process response of type '" + obj.getClass().getName() + "'");
            }
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i10, long j10) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f9302b;
            oVar.d("ConnectionManager", "Successful " + str + " returned " + i10 + " in " + (((float) j10) / 1000.0f) + " s over " + r0.g(this.f9301a) + " to " + a(str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i10, long j10, Throwable th2) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f9302b;
            oVar.a("ConnectionManager", "Failed " + str + " returned " + i10 + " in " + (((float) j10) / 1000.0f) + " s over " + r0.g(this.f9301a) + " to " + a(str2), th2);
        }
    }

    private String a(String str) {
        return "#" + str.hashCode() + " \"" + StringUtils.getHostAndPath(str) + "\"";
    }
}
