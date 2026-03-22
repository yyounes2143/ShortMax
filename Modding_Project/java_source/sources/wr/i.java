package wr;

import com.mbridge.msdk.foundation.download.Command;
import com.unity3d.ads.core.domain.AndroidInitializeBoldSDK;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import io.ktor.http.IllegalHeaderNameException;
import io.ktor.http.IllegalHeaderValueException;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpHeaders.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpHeaders.kt\nio/ktor/http/HttpHeaders\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,200:1\n12744#2,2:201\n1183#3,3:203\n1183#3,3:206\n*S KotlinDebug\n*F\n+ 1 HttpHeaders.kt\nio/ktor/http/HttpHeaders\n*L\n130#1:201,2\n147#1:203,3\n158#1:206,3\n*E\n"})
/* loaded from: classes8.dex */
public final class i {
    @NotNull
    private static final String[] V0;
    @NotNull
    private static final List<String> W0;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final i f70141a = new i();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String f70143b = "Accept";
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final String f70145c = "Accept-Charset";
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final String f70147d = "Accept-Encoding";
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final String f70149e = "Accept-Language";
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final String f70151f = "Accept-Ranges";
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final String f70153g = "Age";
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final String f70155h = "Allow";
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final String f70157i = "ALPN";
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final String f70159j = "Authentication-Info";
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private static final String f70161k = "Authorization";
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private static final String f70163l = "Cache-Control";
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private static final String f70165m = "Connection";
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private static final String f70167n = "Content-Disposition";
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private static final String f70169o = "Content-Encoding";
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private static final String f70171p = "Content-Language";
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private static final String f70173q = "Content-Length";
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private static final String f70175r = "Content-Location";
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private static final String f70177s = "Content-Range";
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private static final String f70179t = CommonGatewayClient.HEADER_CONTENT_TYPE;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private static final String f70181u = "Cookie";
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private static final String f70183v = "DASL";
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private static final String f70185w = "Date";
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private static final String f70187x = "DAV";
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    private static final String f70189y = "Depth";
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    private static final String f70191z = "Destination";
    @NotNull
    private static final String A = Command.HTTP_HEADER_ETAG;
    @NotNull
    private static final String B = "Expect";
    @NotNull
    private static final String C = "Expires";
    @NotNull
    private static final String D = "From";
    @NotNull
    private static final String E = "Forwarded";
    @NotNull
    private static final String F = "Host";
    @NotNull
    private static final String G = "HTTP2-Settings";
    @NotNull
    private static final String H = "If";
    @NotNull
    private static final String I = "If-Match";
    @NotNull
    private static final String J = "If-Modified-Since";
    @NotNull
    private static final String K = "If-None-Match";
    @NotNull
    private static final String L = "If-Range";
    @NotNull
    private static final String M = "If-Schedule-Tag-Match";
    @NotNull
    private static final String N = "If-Unmodified-Since";
    @NotNull
    private static final String O = "Last-Modified";
    @NotNull
    private static final String P = "Location";
    @NotNull
    private static final String Q = "Lock-Token";
    @NotNull
    private static final String R = "Link";
    @NotNull
    private static final String S = "Max-Forwards";
    @NotNull
    private static final String T = "MIME-Version";
    @NotNull
    private static final String U = "Ordering-Type";
    @NotNull
    private static final String V = "Origin";
    @NotNull
    private static final String W = "Overwrite";
    @NotNull
    private static final String X = "Position";
    @NotNull
    private static final String Y = "Pragma";
    @NotNull
    private static final String Z = "Prefer";
    @NotNull

    /* renamed from: a0  reason: collision with root package name */
    private static final String f70142a0 = "Preference-Applied";
    @NotNull

    /* renamed from: b0  reason: collision with root package name */
    private static final String f70144b0 = "Proxy-Authenticate";
    @NotNull

    /* renamed from: c0  reason: collision with root package name */
    private static final String f70146c0 = "Proxy-Authentication-Info";
    @NotNull

    /* renamed from: d0  reason: collision with root package name */
    private static final String f70148d0 = "Proxy-Authorization";
    @NotNull

    /* renamed from: e0  reason: collision with root package name */
    private static final String f70150e0 = "Public-Key-Pins";
    @NotNull

    /* renamed from: f0  reason: collision with root package name */
    private static final String f70152f0 = "Public-Key-Pins-Report-Only";
    @NotNull

    /* renamed from: g0  reason: collision with root package name */
    private static final String f70154g0 = Command.HTTP_HEADER_RANGE;
    @NotNull

    /* renamed from: h0  reason: collision with root package name */
    private static final String f70156h0 = "Referer";
    @NotNull

    /* renamed from: i0  reason: collision with root package name */
    private static final String f70158i0 = CommonGatewayClient.HEADER_RETRY_AFTER;
    @NotNull

    /* renamed from: j0  reason: collision with root package name */
    private static final String f70160j0 = "Schedule-Reply";
    @NotNull

    /* renamed from: k0  reason: collision with root package name */
    private static final String f70162k0 = "Schedule-Tag";
    @NotNull

    /* renamed from: l0  reason: collision with root package name */
    private static final String f70164l0 = "Sec-WebSocket-Accept";
    @NotNull

    /* renamed from: m0  reason: collision with root package name */
    private static final String f70166m0 = "Sec-WebSocket-Extensions";
    @NotNull

    /* renamed from: n0  reason: collision with root package name */
    private static final String f70168n0 = "Sec-WebSocket-Key";
    @NotNull

    /* renamed from: o0  reason: collision with root package name */
    private static final String f70170o0 = "Sec-WebSocket-Protocol";
    @NotNull

    /* renamed from: p0  reason: collision with root package name */
    private static final String f70172p0 = "Sec-WebSocket-Version";
    @NotNull

    /* renamed from: q0  reason: collision with root package name */
    private static final String f70174q0 = "Server";
    @NotNull

    /* renamed from: r0  reason: collision with root package name */
    private static final String f70176r0 = "Set-Cookie";
    @NotNull

    /* renamed from: s0  reason: collision with root package name */
    private static final String f70178s0 = "SLUG";
    @NotNull

    /* renamed from: t0  reason: collision with root package name */
    private static final String f70180t0 = "Strict-Transport-Security";
    @NotNull

    /* renamed from: u0  reason: collision with root package name */
    private static final String f70182u0 = "TE";
    @NotNull

    /* renamed from: v0  reason: collision with root package name */
    private static final String f70184v0 = AndroidInitializeBoldSDK.MSG_TIMEOUT;
    @NotNull

    /* renamed from: w0  reason: collision with root package name */
    private static final String f70186w0 = "Trailer";
    @NotNull

    /* renamed from: x0  reason: collision with root package name */
    private static final String f70188x0 = "Transfer-Encoding";
    @NotNull

    /* renamed from: y0  reason: collision with root package name */
    private static final String f70190y0 = "Upgrade";
    @NotNull

    /* renamed from: z0  reason: collision with root package name */
    private static final String f70192z0 = Command.HTTP_HEADER_USER_AGENT;
    @NotNull
    private static final String A0 = "Vary";
    @NotNull
    private static final String B0 = "Via";
    @NotNull
    private static final String C0 = "Warning";
    @NotNull
    private static final String D0 = "WWW-Authenticate";
    @NotNull
    private static final String E0 = "Access-Control-Allow-Origin";
    @NotNull
    private static final String F0 = "Access-Control-Allow-Methods";
    @NotNull
    private static final String G0 = "Access-Control-Allow-Credentials";
    @NotNull
    private static final String H0 = "Access-Control-Allow-Headers";
    @NotNull
    private static final String I0 = "Access-Control-Request-Method";
    @NotNull
    private static final String J0 = "Access-Control-Request-Headers";
    @NotNull
    private static final String K0 = "Access-Control-Expose-Headers";
    @NotNull
    private static final String L0 = "Access-Control-Max-Age";
    @NotNull
    private static final String M0 = "X-Http-Method-Override";
    @NotNull
    private static final String N0 = "X-Forwarded-Host";
    @NotNull
    private static final String O0 = "X-Forwarded-Server";
    @NotNull
    private static final String P0 = "X-Forwarded-Proto";
    @NotNull
    private static final String Q0 = "X-Forwarded-For";
    @NotNull
    private static final String R0 = "X-Forwarded-Port";
    @NotNull
    private static final String S0 = "X-Request-ID";
    @NotNull
    private static final String T0 = "X-Correlation-ID";
    @NotNull
    private static final String U0 = "X-Total-Count";

    static {
        String[] strArr = {"Transfer-Encoding", "Upgrade"};
        V0 = strArr;
        W0 = kotlin.collections.n.g(strArr);
    }

    private i() {
    }

    public final void a(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        int i10 = 0;
        int i11 = 0;
        while (i10 < name.length()) {
            char charAt = name.charAt(i10);
            int i12 = i11 + 1;
            if (Intrinsics.compare((int) charAt, 32) > 0 && !j.a(charAt)) {
                i10++;
                i11 = i12;
            } else {
                throw new IllegalHeaderNameException(name, i11);
            }
        }
    }

    public final void b(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        int i10 = 0;
        int i11 = 0;
        while (i10 < value.length()) {
            char charAt = value.charAt(i10);
            int i12 = i11 + 1;
            if (Intrinsics.compare((int) charAt, 32) < 0 && charAt != '\t') {
                throw new IllegalHeaderValueException(value, i11);
            }
            i10++;
            i11 = i12;
        }
    }

    @NotNull
    public final String c() {
        return f70143b;
    }

    @NotNull
    public final String d() {
        return f70145c;
    }

    @NotNull
    public final String e() {
        return f70161k;
    }

    @NotNull
    public final String f() {
        return f70169o;
    }

    @NotNull
    public final String g() {
        return f70173q;
    }

    @NotNull
    public final String h() {
        return f70177s;
    }

    @NotNull
    public final String i() {
        return f70179t;
    }

    @NotNull
    public final String j() {
        return f70181u;
    }

    @NotNull
    public final String k() {
        return f70185w;
    }

    @NotNull
    public final String l() {
        return A;
    }

    @NotNull
    public final String m() {
        return C;
    }

    @NotNull
    public final String n() {
        return J;
    }

    @NotNull
    public final String o() {
        return L;
    }

    @NotNull
    public final String p() {
        return N;
    }

    @NotNull
    public final String q() {
        return O;
    }

    @NotNull
    public final String r() {
        return P;
    }

    @NotNull
    public final String s() {
        return f70154g0;
    }

    @NotNull
    public final String t() {
        return f70158i0;
    }

    @NotNull
    public final String u() {
        return f70188x0;
    }

    @NotNull
    public final List<String> v() {
        return W0;
    }

    @NotNull
    public final String w() {
        return f70192z0;
    }
}
