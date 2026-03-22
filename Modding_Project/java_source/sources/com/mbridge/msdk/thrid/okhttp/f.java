package com.mbridge.msdk.thrid.okhttp;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* compiled from: CipherSuite.java */
/* loaded from: classes6.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    final String f29575a;

    /* renamed from: b  reason: collision with root package name */
    static final Comparator<String> f29508b = new a();

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, f> f29511c = new LinkedHashMap();

    /* renamed from: d  reason: collision with root package name */
    public static final f f29514d = a("SSL_RSA_WITH_NULL_MD5", 1);

    /* renamed from: e  reason: collision with root package name */
    public static final f f29517e = a("SSL_RSA_WITH_NULL_SHA", 2);

    /* renamed from: f  reason: collision with root package name */
    public static final f f29520f = a("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);

    /* renamed from: g  reason: collision with root package name */
    public static final f f29523g = a("SSL_RSA_WITH_RC4_128_MD5", 4);

    /* renamed from: h  reason: collision with root package name */
    public static final f f29526h = a("SSL_RSA_WITH_RC4_128_SHA", 5);

    /* renamed from: i  reason: collision with root package name */
    public static final f f29529i = a("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);

    /* renamed from: j  reason: collision with root package name */
    public static final f f29532j = a("SSL_RSA_WITH_DES_CBC_SHA", 9);

    /* renamed from: k  reason: collision with root package name */
    public static final f f29535k = a("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);

    /* renamed from: l  reason: collision with root package name */
    public static final f f29538l = a("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);

    /* renamed from: m  reason: collision with root package name */
    public static final f f29541m = a("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);

    /* renamed from: n  reason: collision with root package name */
    public static final f f29544n = a("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);

    /* renamed from: o  reason: collision with root package name */
    public static final f f29547o = a("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);

    /* renamed from: p  reason: collision with root package name */
    public static final f f29550p = a("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);

    /* renamed from: q  reason: collision with root package name */
    public static final f f29553q = a("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);

    /* renamed from: r  reason: collision with root package name */
    public static final f f29556r = a("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);

    /* renamed from: s  reason: collision with root package name */
    public static final f f29559s = a("SSL_DH_anon_WITH_RC4_128_MD5", 24);

    /* renamed from: t  reason: collision with root package name */
    public static final f f29561t = a("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);

    /* renamed from: u  reason: collision with root package name */
    public static final f f29563u = a("SSL_DH_anon_WITH_DES_CBC_SHA", 26);

    /* renamed from: v  reason: collision with root package name */
    public static final f f29565v = a("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);

    /* renamed from: w  reason: collision with root package name */
    public static final f f29567w = a("TLS_KRB5_WITH_DES_CBC_SHA", 30);

    /* renamed from: x  reason: collision with root package name */
    public static final f f29569x = a("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);

    /* renamed from: y  reason: collision with root package name */
    public static final f f29571y = a("TLS_KRB5_WITH_RC4_128_SHA", 32);

    /* renamed from: z  reason: collision with root package name */
    public static final f f29573z = a("TLS_KRB5_WITH_DES_CBC_MD5", 34);
    public static final f A = a("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);
    public static final f B = a("TLS_KRB5_WITH_RC4_128_MD5", 36);
    public static final f C = a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);
    public static final f D = a("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);
    public static final f E = a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);
    public static final f F = a("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);
    public static final f G = a("TLS_RSA_WITH_AES_128_CBC_SHA", 47);
    public static final f H = a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);
    public static final f I = a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);
    public static final f J = a("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);
    public static final f K = a("TLS_RSA_WITH_AES_256_CBC_SHA", 53);
    public static final f L = a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);
    public static final f M = a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);
    public static final f N = a("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);
    public static final f O = a("TLS_RSA_WITH_NULL_SHA256", 59);
    public static final f P = a("TLS_RSA_WITH_AES_128_CBC_SHA256", 60);
    public static final f Q = a("TLS_RSA_WITH_AES_256_CBC_SHA256", 61);
    public static final f R = a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);
    public static final f S = a("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);
    public static final f T = a("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);
    public static final f U = a("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);
    public static final f V = a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);
    public static final f W = a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);
    public static final f X = a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);
    public static final f Y = a("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);
    public static final f Z = a("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);

    /* renamed from: a0  reason: collision with root package name */
    public static final f f29506a0 = a("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);

    /* renamed from: b0  reason: collision with root package name */
    public static final f f29509b0 = a("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);

    /* renamed from: c0  reason: collision with root package name */
    public static final f f29512c0 = a("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);

    /* renamed from: d0  reason: collision with root package name */
    public static final f f29515d0 = a("TLS_PSK_WITH_RC4_128_SHA", 138);

    /* renamed from: e0  reason: collision with root package name */
    public static final f f29518e0 = a("TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);

    /* renamed from: f0  reason: collision with root package name */
    public static final f f29521f0 = a("TLS_PSK_WITH_AES_128_CBC_SHA", 140);

    /* renamed from: g0  reason: collision with root package name */
    public static final f f29524g0 = a("TLS_PSK_WITH_AES_256_CBC_SHA", 141);

    /* renamed from: h0  reason: collision with root package name */
    public static final f f29527h0 = a("TLS_RSA_WITH_SEED_CBC_SHA", 150);

    /* renamed from: i0  reason: collision with root package name */
    public static final f f29530i0 = a("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);

    /* renamed from: j0  reason: collision with root package name */
    public static final f f29533j0 = a("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);

    /* renamed from: k0  reason: collision with root package name */
    public static final f f29536k0 = a("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);

    /* renamed from: l0  reason: collision with root package name */
    public static final f f29539l0 = a("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);

    /* renamed from: m0  reason: collision with root package name */
    public static final f f29542m0 = a("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);

    /* renamed from: n0  reason: collision with root package name */
    public static final f f29545n0 = a("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);

    /* renamed from: o0  reason: collision with root package name */
    public static final f f29548o0 = a("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166);

    /* renamed from: p0  reason: collision with root package name */
    public static final f f29551p0 = a("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);

    /* renamed from: q0  reason: collision with root package name */
    public static final f f29554q0 = a("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);

    /* renamed from: r0  reason: collision with root package name */
    public static final f f29557r0 = a("TLS_FALLBACK_SCSV", 22016);

    /* renamed from: s0  reason: collision with root package name */
    public static final f f29560s0 = a("TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);

    /* renamed from: t0  reason: collision with root package name */
    public static final f f29562t0 = a("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);

    /* renamed from: u0  reason: collision with root package name */
    public static final f f29564u0 = a("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);

    /* renamed from: v0  reason: collision with root package name */
    public static final f f29566v0 = a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);

    /* renamed from: w0  reason: collision with root package name */
    public static final f f29568w0 = a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);

    /* renamed from: x0  reason: collision with root package name */
    public static final f f29570x0 = a("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);

    /* renamed from: y0  reason: collision with root package name */
    public static final f f29572y0 = a("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);

    /* renamed from: z0  reason: collision with root package name */
    public static final f f29574z0 = a("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);
    public static final f A0 = a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);
    public static final f B0 = a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);
    public static final f C0 = a("TLS_ECDH_RSA_WITH_NULL_SHA", 49163);
    public static final f D0 = a("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);
    public static final f E0 = a("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);
    public static final f F0 = a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);
    public static final f G0 = a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);
    public static final f H0 = a("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);
    public static final f I0 = a("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);
    public static final f J0 = a("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);
    public static final f K0 = a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);
    public static final f L0 = a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);
    public static final f M0 = a("TLS_ECDH_anon_WITH_NULL_SHA", 49173);
    public static final f N0 = a("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);
    public static final f O0 = a("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);
    public static final f P0 = a("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);
    public static final f Q0 = a("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);
    public static final f R0 = a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);
    public static final f S0 = a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);
    public static final f T0 = a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);
    public static final f U0 = a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);
    public static final f V0 = a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);
    public static final f W0 = a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);
    public static final f X0 = a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);
    public static final f Y0 = a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);
    public static final f Z0 = a("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);

    /* renamed from: a1  reason: collision with root package name */
    public static final f f29507a1 = a("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);

    /* renamed from: b1  reason: collision with root package name */
    public static final f f29510b1 = a("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);

    /* renamed from: c1  reason: collision with root package name */
    public static final f f29513c1 = a("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);

    /* renamed from: d1  reason: collision with root package name */
    public static final f f29516d1 = a("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);

    /* renamed from: e1  reason: collision with root package name */
    public static final f f29519e1 = a("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);

    /* renamed from: f1  reason: collision with root package name */
    public static final f f29522f1 = a("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);

    /* renamed from: g1  reason: collision with root package name */
    public static final f f29525g1 = a("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);

    /* renamed from: h1  reason: collision with root package name */
    public static final f f29528h1 = a("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);

    /* renamed from: i1  reason: collision with root package name */
    public static final f f29531i1 = a("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);

    /* renamed from: j1  reason: collision with root package name */
    public static final f f29534j1 = a("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);

    /* renamed from: k1  reason: collision with root package name */
    public static final f f29537k1 = a("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);

    /* renamed from: l1  reason: collision with root package name */
    public static final f f29540l1 = a("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52394);

    /* renamed from: m1  reason: collision with root package name */
    public static final f f29543m1 = a("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", 52396);

    /* renamed from: n1  reason: collision with root package name */
    public static final f f29546n1 = a("TLS_AES_128_GCM_SHA256", 4865);

    /* renamed from: o1  reason: collision with root package name */
    public static final f f29549o1 = a("TLS_AES_256_GCM_SHA384", 4866);

    /* renamed from: p1  reason: collision with root package name */
    public static final f f29552p1 = a("TLS_CHACHA20_POLY1305_SHA256", 4867);

    /* renamed from: q1  reason: collision with root package name */
    public static final f f29555q1 = a("TLS_AES_128_CCM_SHA256", 4868);

    /* renamed from: r1  reason: collision with root package name */
    public static final f f29558r1 = a("TLS_AES_256_CCM_8_SHA256", 4869);

    /* compiled from: CipherSuite.java */
    /* loaded from: classes6.dex */
    static class a implements Comparator<String> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(String str, String str2) {
            int min = Math.min(str.length(), str2.length());
            for (int i10 = 4; i10 < min; i10++) {
                char charAt = str.charAt(i10);
                char charAt2 = str2.charAt(i10);
                if (charAt != charAt2) {
                    if (charAt < charAt2) {
                        return -1;
                    }
                    return 1;
                }
            }
            int length = str.length();
            int length2 = str2.length();
            if (length != length2) {
                if (length < length2) {
                    return -1;
                }
                return 1;
            }
            return 0;
        }
    }

    private f(String str) {
        str.getClass();
        this.f29575a = str;
    }

    public static synchronized f a(String str) {
        f fVar;
        synchronized (f.class) {
            try {
                Map<String, f> map = f29511c;
                fVar = map.get(str);
                if (fVar == null) {
                    fVar = map.get(b(str));
                    if (fVar == null) {
                        fVar = new f(str);
                    }
                    map.put(str, fVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fVar;
    }

    private static String b(String str) {
        if (str.startsWith("TLS_")) {
            return "SSL_" + str.substring(4);
        } else if (str.startsWith("SSL_")) {
            return "TLS_" + str.substring(4);
        } else {
            return str;
        }
    }

    public String toString() {
        return this.f29575a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<f> a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private static f a(String str, int i10) {
        f fVar = new f(str);
        f29511c.put(str, fVar);
        return fVar;
    }
}
