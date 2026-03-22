package okhttp3;

import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: CipherSuite.kt */
@Metadata
/* loaded from: classes8.dex */
public final class CipherSuite {
    @NotNull
    public static final CipherSuite A;
    @NotNull
    public static final CipherSuite A0;
    @NotNull
    public static final CipherSuite B;
    @NotNull
    public static final CipherSuite B0;
    @NotNull
    public static final CipherSuite C;
    @NotNull
    public static final CipherSuite C0;
    @NotNull
    public static final CipherSuite D;
    @NotNull
    public static final CipherSuite D0;
    @NotNull
    public static final CipherSuite E;
    @NotNull
    public static final CipherSuite E0;
    @NotNull
    public static final CipherSuite F;
    @NotNull
    public static final CipherSuite F0;
    @NotNull
    public static final CipherSuite G;
    @NotNull
    public static final CipherSuite G0;
    @NotNull
    public static final CipherSuite H;
    @NotNull
    public static final CipherSuite H0;
    @NotNull
    public static final CipherSuite I;
    @NotNull
    public static final CipherSuite I0;
    @NotNull
    public static final CipherSuite J;
    @NotNull
    public static final CipherSuite J0;
    @NotNull
    public static final CipherSuite K;
    @NotNull
    public static final CipherSuite K0;
    @NotNull
    public static final CipherSuite L;
    @NotNull
    public static final CipherSuite L0;
    @NotNull
    public static final CipherSuite M;
    @NotNull
    public static final CipherSuite M0;
    @NotNull
    public static final CipherSuite N;
    @NotNull
    public static final CipherSuite N0;
    @NotNull
    public static final CipherSuite O;
    @NotNull
    public static final CipherSuite O0;
    @NotNull
    public static final CipherSuite P;
    @NotNull
    public static final CipherSuite P0;
    @NotNull
    public static final CipherSuite Q;
    @NotNull
    public static final CipherSuite Q0;
    @NotNull
    public static final CipherSuite R;
    @NotNull
    public static final CipherSuite R0;
    @NotNull
    public static final CipherSuite S;
    @NotNull
    public static final CipherSuite S0;
    @NotNull
    public static final CipherSuite T;
    @NotNull
    public static final CipherSuite T0;
    @NotNull
    public static final CipherSuite U;
    @NotNull
    public static final CipherSuite U0;
    @NotNull
    public static final CipherSuite V;
    @NotNull
    public static final CipherSuite V0;
    @NotNull
    public static final CipherSuite W;
    @NotNull
    public static final CipherSuite W0;
    @NotNull
    public static final CipherSuite X;
    @NotNull
    public static final CipherSuite X0;
    @NotNull
    public static final CipherSuite Y;
    @NotNull
    public static final CipherSuite Y0;
    @NotNull
    public static final CipherSuite Z;
    @NotNull
    public static final CipherSuite Z0;
    @NotNull

    /* renamed from: a0  reason: collision with root package name */
    public static final CipherSuite f63320a0;
    @NotNull

    /* renamed from: a1  reason: collision with root package name */
    public static final CipherSuite f63321a1;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final Companion f63322b;
    @NotNull

    /* renamed from: b0  reason: collision with root package name */
    public static final CipherSuite f63323b0;
    @NotNull

    /* renamed from: b1  reason: collision with root package name */
    public static final CipherSuite f63324b1;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final Comparator<String> f63325c;
    @NotNull

    /* renamed from: c0  reason: collision with root package name */
    public static final CipherSuite f63326c0;
    @NotNull

    /* renamed from: c1  reason: collision with root package name */
    public static final CipherSuite f63327c1;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final Map<String, CipherSuite> f63328d;
    @NotNull

    /* renamed from: d0  reason: collision with root package name */
    public static final CipherSuite f63329d0;
    @NotNull

    /* renamed from: d1  reason: collision with root package name */
    public static final CipherSuite f63330d1;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final CipherSuite f63331e;
    @NotNull

    /* renamed from: e0  reason: collision with root package name */
    public static final CipherSuite f63332e0;
    @NotNull

    /* renamed from: e1  reason: collision with root package name */
    public static final CipherSuite f63333e1;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final CipherSuite f63334f;
    @NotNull

    /* renamed from: f0  reason: collision with root package name */
    public static final CipherSuite f63335f0;
    @NotNull

    /* renamed from: f1  reason: collision with root package name */
    public static final CipherSuite f63336f1;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final CipherSuite f63337g;
    @NotNull

    /* renamed from: g0  reason: collision with root package name */
    public static final CipherSuite f63338g0;
    @NotNull

    /* renamed from: g1  reason: collision with root package name */
    public static final CipherSuite f63339g1;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final CipherSuite f63340h;
    @NotNull

    /* renamed from: h0  reason: collision with root package name */
    public static final CipherSuite f63341h0;
    @NotNull

    /* renamed from: h1  reason: collision with root package name */
    public static final CipherSuite f63342h1;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final CipherSuite f63343i;
    @NotNull

    /* renamed from: i0  reason: collision with root package name */
    public static final CipherSuite f63344i0;
    @NotNull

    /* renamed from: i1  reason: collision with root package name */
    public static final CipherSuite f63345i1;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final CipherSuite f63346j;
    @NotNull

    /* renamed from: j0  reason: collision with root package name */
    public static final CipherSuite f63347j0;
    @NotNull

    /* renamed from: j1  reason: collision with root package name */
    public static final CipherSuite f63348j1;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final CipherSuite f63349k;
    @NotNull

    /* renamed from: k0  reason: collision with root package name */
    public static final CipherSuite f63350k0;
    @NotNull

    /* renamed from: k1  reason: collision with root package name */
    public static final CipherSuite f63351k1;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final CipherSuite f63352l;
    @NotNull

    /* renamed from: l0  reason: collision with root package name */
    public static final CipherSuite f63353l0;
    @NotNull

    /* renamed from: l1  reason: collision with root package name */
    public static final CipherSuite f63354l1;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final CipherSuite f63355m;
    @NotNull

    /* renamed from: m0  reason: collision with root package name */
    public static final CipherSuite f63356m0;
    @NotNull

    /* renamed from: m1  reason: collision with root package name */
    public static final CipherSuite f63357m1;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final CipherSuite f63358n;
    @NotNull

    /* renamed from: n0  reason: collision with root package name */
    public static final CipherSuite f63359n0;
    @NotNull

    /* renamed from: n1  reason: collision with root package name */
    public static final CipherSuite f63360n1;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final CipherSuite f63361o;
    @NotNull

    /* renamed from: o0  reason: collision with root package name */
    public static final CipherSuite f63362o0;
    @NotNull

    /* renamed from: o1  reason: collision with root package name */
    public static final CipherSuite f63363o1;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final CipherSuite f63364p;
    @NotNull

    /* renamed from: p0  reason: collision with root package name */
    public static final CipherSuite f63365p0;
    @NotNull

    /* renamed from: p1  reason: collision with root package name */
    public static final CipherSuite f63366p1;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final CipherSuite f63367q;
    @NotNull

    /* renamed from: q0  reason: collision with root package name */
    public static final CipherSuite f63368q0;
    @NotNull

    /* renamed from: q1  reason: collision with root package name */
    public static final CipherSuite f63369q1;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final CipherSuite f63370r;
    @NotNull

    /* renamed from: r0  reason: collision with root package name */
    public static final CipherSuite f63371r0;
    @NotNull

    /* renamed from: r1  reason: collision with root package name */
    public static final CipherSuite f63372r1;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    public static final CipherSuite f63373s;
    @NotNull

    /* renamed from: s0  reason: collision with root package name */
    public static final CipherSuite f63374s0;
    @NotNull

    /* renamed from: s1  reason: collision with root package name */
    public static final CipherSuite f63375s1;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final CipherSuite f63376t;
    @NotNull

    /* renamed from: t0  reason: collision with root package name */
    public static final CipherSuite f63377t0;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    public static final CipherSuite f63378u;
    @NotNull

    /* renamed from: u0  reason: collision with root package name */
    public static final CipherSuite f63379u0;
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    public static final CipherSuite f63380v;
    @NotNull

    /* renamed from: v0  reason: collision with root package name */
    public static final CipherSuite f63381v0;
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final CipherSuite f63382w;
    @NotNull

    /* renamed from: w0  reason: collision with root package name */
    public static final CipherSuite f63383w0;
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    public static final CipherSuite f63384x;
    @NotNull

    /* renamed from: x0  reason: collision with root package name */
    public static final CipherSuite f63385x0;
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    public static final CipherSuite f63386y;
    @NotNull

    /* renamed from: y0  reason: collision with root package name */
    public static final CipherSuite f63387y0;
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    public static final CipherSuite f63388z;
    @NotNull

    /* renamed from: z0  reason: collision with root package name */
    public static final CipherSuite f63389z0;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f63390a;

    /* compiled from: CipherSuite.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final CipherSuite d(String str, int i10) {
            CipherSuite cipherSuite = new CipherSuite(str, null);
            CipherSuite.f63328d.put(str, cipherSuite);
            return cipherSuite;
        }

        private final String e(String str) {
            if (StringsKt.V(str, "TLS_", false, 2, null)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("SSL_");
                String substring = str.substring(4);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                sb2.append(substring);
                return sb2.toString();
            } else if (StringsKt.V(str, "SSL_", false, 2, null)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("TLS_");
                String substring2 = str.substring(4);
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                sb3.append(substring2);
                return sb3.toString();
            } else {
                return str;
            }
        }

        @NotNull
        public final synchronized CipherSuite b(@NotNull String javaName) {
            CipherSuite cipherSuite;
            try {
                Intrinsics.checkNotNullParameter(javaName, "javaName");
                cipherSuite = (CipherSuite) CipherSuite.f63328d.get(javaName);
                if (cipherSuite == null) {
                    cipherSuite = (CipherSuite) CipherSuite.f63328d.get(e(javaName));
                    if (cipherSuite == null) {
                        cipherSuite = new CipherSuite(javaName, null);
                    }
                    CipherSuite.f63328d.put(javaName, cipherSuite);
                }
            } catch (Throwable th2) {
                throw th2;
            }
            return cipherSuite;
        }

        @NotNull
        public final Comparator<String> c() {
            return CipherSuite.f63325c;
        }

        private Companion() {
        }
    }

    static {
        Companion companion = new Companion(null);
        f63322b = companion;
        f63325c = new Comparator<String>() { // from class: okhttp3.CipherSuite$Companion$ORDER_BY_NAME$1
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(@NotNull String a10, @NotNull String b10) {
                Intrinsics.checkNotNullParameter(a10, "a");
                Intrinsics.checkNotNullParameter(b10, "b");
                int min = Math.min(a10.length(), b10.length());
                for (int i10 = 4; i10 < min; i10++) {
                    char charAt = a10.charAt(i10);
                    char charAt2 = b10.charAt(i10);
                    if (charAt != charAt2) {
                        if (Intrinsics.compare((int) charAt, (int) charAt2) < 0) {
                            return -1;
                        }
                        return 1;
                    }
                }
                int length = a10.length();
                int length2 = b10.length();
                if (length != length2) {
                    if (length < length2) {
                        return -1;
                    }
                    return 1;
                }
                return 0;
            }
        };
        f63328d = new LinkedHashMap();
        f63331e = companion.d("SSL_RSA_WITH_NULL_MD5", 1);
        f63334f = companion.d("SSL_RSA_WITH_NULL_SHA", 2);
        f63337g = companion.d("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);
        f63340h = companion.d("SSL_RSA_WITH_RC4_128_MD5", 4);
        f63343i = companion.d("SSL_RSA_WITH_RC4_128_SHA", 5);
        f63346j = companion.d("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);
        f63349k = companion.d("SSL_RSA_WITH_DES_CBC_SHA", 9);
        f63352l = companion.d("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);
        f63355m = companion.d("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);
        f63358n = companion.d("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);
        f63361o = companion.d("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);
        f63364p = companion.d("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);
        f63367q = companion.d("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);
        f63370r = companion.d("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);
        f63373s = companion.d("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);
        f63376t = companion.d("SSL_DH_anon_WITH_RC4_128_MD5", 24);
        f63378u = companion.d("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);
        f63380v = companion.d("SSL_DH_anon_WITH_DES_CBC_SHA", 26);
        f63382w = companion.d("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);
        f63384x = companion.d("TLS_KRB5_WITH_DES_CBC_SHA", 30);
        f63386y = companion.d("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);
        f63388z = companion.d("TLS_KRB5_WITH_RC4_128_SHA", 32);
        A = companion.d("TLS_KRB5_WITH_DES_CBC_MD5", 34);
        B = companion.d("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);
        C = companion.d("TLS_KRB5_WITH_RC4_128_MD5", 36);
        D = companion.d("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);
        E = companion.d("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);
        F = companion.d("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);
        G = companion.d("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);
        H = companion.d("TLS_RSA_WITH_AES_128_CBC_SHA", 47);
        I = companion.d("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);
        J = companion.d("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);
        K = companion.d("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);
        L = companion.d("TLS_RSA_WITH_AES_256_CBC_SHA", 53);
        M = companion.d("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);
        N = companion.d("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);
        O = companion.d("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);
        P = companion.d("TLS_RSA_WITH_NULL_SHA256", 59);
        Q = companion.d("TLS_RSA_WITH_AES_128_CBC_SHA256", 60);
        R = companion.d("TLS_RSA_WITH_AES_256_CBC_SHA256", 61);
        S = companion.d("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);
        T = companion.d("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);
        U = companion.d("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);
        V = companion.d("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);
        W = companion.d("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);
        X = companion.d("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);
        Y = companion.d("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);
        Z = companion.d("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);
        f63320a0 = companion.d("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);
        f63323b0 = companion.d("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);
        f63326c0 = companion.d("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);
        f63329d0 = companion.d("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);
        f63332e0 = companion.d("TLS_PSK_WITH_RC4_128_SHA", 138);
        f63335f0 = companion.d("TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);
        f63338g0 = companion.d("TLS_PSK_WITH_AES_128_CBC_SHA", 140);
        f63341h0 = companion.d("TLS_PSK_WITH_AES_256_CBC_SHA", 141);
        f63344i0 = companion.d("TLS_RSA_WITH_SEED_CBC_SHA", 150);
        f63347j0 = companion.d("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);
        f63350k0 = companion.d("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);
        f63353l0 = companion.d("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);
        f63356m0 = companion.d("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);
        f63359n0 = companion.d("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);
        f63362o0 = companion.d("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);
        f63365p0 = companion.d("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166);
        f63368q0 = companion.d("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);
        f63371r0 = companion.d("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);
        f63374s0 = companion.d("TLS_FALLBACK_SCSV", 22016);
        f63377t0 = companion.d("TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);
        f63379u0 = companion.d("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);
        f63381v0 = companion.d("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);
        f63383w0 = companion.d("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);
        f63385x0 = companion.d("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);
        f63387y0 = companion.d("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);
        f63389z0 = companion.d("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);
        A0 = companion.d("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);
        B0 = companion.d("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);
        C0 = companion.d("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);
        D0 = companion.d("TLS_ECDH_RSA_WITH_NULL_SHA", 49163);
        E0 = companion.d("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);
        F0 = companion.d("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);
        G0 = companion.d("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);
        H0 = companion.d("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);
        I0 = companion.d("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);
        J0 = companion.d("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);
        K0 = companion.d("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);
        L0 = companion.d("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);
        M0 = companion.d("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);
        N0 = companion.d("TLS_ECDH_anon_WITH_NULL_SHA", 49173);
        O0 = companion.d("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);
        P0 = companion.d("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);
        Q0 = companion.d("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);
        R0 = companion.d("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);
        S0 = companion.d("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);
        T0 = companion.d("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);
        U0 = companion.d("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);
        V0 = companion.d("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);
        W0 = companion.d("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);
        X0 = companion.d("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);
        Y0 = companion.d("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);
        Z0 = companion.d("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);
        f63321a1 = companion.d("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);
        f63324b1 = companion.d("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);
        f63327c1 = companion.d("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);
        f63330d1 = companion.d("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);
        f63333e1 = companion.d("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);
        f63336f1 = companion.d("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);
        f63339g1 = companion.d("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);
        f63342h1 = companion.d("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);
        f63345i1 = companion.d("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);
        f63348j1 = companion.d("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);
        f63351k1 = companion.d("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);
        f63354l1 = companion.d("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);
        f63357m1 = companion.d("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52394);
        f63360n1 = companion.d("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", 52396);
        f63363o1 = companion.d("TLS_AES_128_GCM_SHA256", 4865);
        f63366p1 = companion.d("TLS_AES_256_GCM_SHA384", 4866);
        f63369q1 = companion.d("TLS_CHACHA20_POLY1305_SHA256", 4867);
        f63372r1 = companion.d("TLS_AES_128_CCM_SHA256", 4868);
        f63375s1 = companion.d("TLS_AES_128_CCM_8_SHA256", 4869);
    }

    public /* synthetic */ CipherSuite(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @NotNull
    public final String c() {
        return this.f63390a;
    }

    @NotNull
    public String toString() {
        return this.f63390a;
    }

    private CipherSuite(String str) {
        this.f63390a = str;
    }
}
