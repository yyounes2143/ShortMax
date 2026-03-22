package wr;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpStatusCode.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpStatusCode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpStatusCode.kt\nio/ktor/http/HttpStatusCode\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,194:1\n1194#2,2:195\n1222#2,4:197\n*S KotlinDebug\n*F\n+ 1 HttpStatusCode.kt\nio/ktor/http/HttpStatusCode\n*L\n112#1:195,2\n112#1:197,4\n*E\n"})
/* loaded from: classes8.dex */
public final class o implements Comparable<o> {
    @NotNull

    /* renamed from: e0  reason: collision with root package name */
    private static final List<o> f70219e0;
    @NotNull

    /* renamed from: f0  reason: collision with root package name */
    private static final Map<Integer, o> f70221f0;

    /* renamed from: a  reason: collision with root package name */
    private final int f70242a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f70243b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f70214c = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final o f70216d = new o(100, "Continue");
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final o f70218e = new o(101, "Switching Protocols");
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final o f70220f = new o(102, "Processing");
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final o f70222g = new o(200, "OK");
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final o f70223h = new o(201, "Created");
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final o f70224i = new o(202, "Accepted");
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final o f70225j = new o(203, "Non-Authoritative Information");
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private static final o f70226k = new o(204, "No Content");
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private static final o f70227l = new o(205, "Reset Content");
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private static final o f70228m = new o(206, "Partial Content");
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private static final o f70229n = new o(207, "Multi-Status");
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private static final o f70230o = new o(300, "Multiple Choices");
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private static final o f70231p = new o(301, "Moved Permanently");
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private static final o f70232q = new o(302, "Found");
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private static final o f70233r = new o(303, "See Other");
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private static final o f70234s = new o(304, "Not Modified");
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private static final o f70235t = new o(305, "Use Proxy");
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private static final o f70236u = new o(306, "Switch Proxy");
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private static final o f70237v = new o(307, "Temporary Redirect");
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private static final o f70238w = new o(308, "Permanent Redirect");
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private static final o f70239x = new o(400, "Bad Request");
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    private static final o f70240y = new o(401, "Unauthorized");
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    private static final o f70241z = new o(402, "Payment Required");
    @NotNull
    private static final o A = new o(403, "Forbidden");
    @NotNull
    private static final o B = new o(404, "Not Found");
    @NotNull
    private static final o C = new o(405, "Method Not Allowed");
    @NotNull
    private static final o D = new o(406, "Not Acceptable");
    @NotNull
    private static final o E = new o(407, "Proxy Authentication Required");
    @NotNull
    private static final o F = new o(408, "Request Timeout");
    @NotNull
    private static final o G = new o(409, "Conflict");
    @NotNull
    private static final o H = new o(410, "Gone");
    @NotNull
    private static final o I = new o(411, "Length Required");
    @NotNull
    private static final o J = new o(412, "Precondition Failed");
    @NotNull
    private static final o K = new o(413, "Payload Too Large");
    @NotNull
    private static final o L = new o(414, "Request-URI Too Long");
    @NotNull
    private static final o M = new o(415, "Unsupported Media Type");
    @NotNull
    private static final o N = new o(416, "Requested Range Not Satisfiable");
    @NotNull
    private static final o O = new o(417, "Expectation Failed");
    @NotNull
    private static final o P = new o(422, "Unprocessable Entity");
    @NotNull
    private static final o Q = new o(423, "Locked");
    @NotNull
    private static final o R = new o(424, "Failed Dependency");
    @NotNull
    private static final o S = new o(425, "Too Early");
    @NotNull
    private static final o T = new o(426, "Upgrade Required");
    @NotNull
    private static final o U = new o(CommonGatewayClient.CODE_TOO_MANY_REQUESTS, "Too Many Requests");
    @NotNull
    private static final o V = new o(TTVideoEngineInterface.PLAYER_OPTION_ACCURATE_LAYOUT, "Request Header Fields Too Large");
    @NotNull
    private static final o W = new o(500, "Internal Server Error");
    @NotNull
    private static final o X = new o(501, "Not Implemented");
    @NotNull
    private static final o Y = new o(502, "Bad Gateway");
    @NotNull
    private static final o Z = new o(503, "Service Unavailable");
    @NotNull

    /* renamed from: a0  reason: collision with root package name */
    private static final o f70212a0 = new o(504, "Gateway Timeout");
    @NotNull

    /* renamed from: b0  reason: collision with root package name */
    private static final o f70213b0 = new o(505, "HTTP Version Not Supported");
    @NotNull

    /* renamed from: c0  reason: collision with root package name */
    private static final o f70215c0 = new o(506, "Variant Also Negotiates");
    @NotNull

    /* renamed from: d0  reason: collision with root package name */
    private static final o f70217d0 = new o(507, "Insufficient Storage");

    /* compiled from: HttpStatusCode.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final o A() {
            return o.f70234s;
        }

        @NotNull
        public final o B() {
            return o.f70222g;
        }

        @NotNull
        public final o C() {
            return o.f70228m;
        }

        @NotNull
        public final o D() {
            return o.K;
        }

        @NotNull
        public final o E() {
            return o.f70241z;
        }

        @NotNull
        public final o F() {
            return o.f70238w;
        }

        @NotNull
        public final o G() {
            return o.J;
        }

        @NotNull
        public final o H() {
            return o.f70220f;
        }

        @NotNull
        public final o I() {
            return o.E;
        }

        @NotNull
        public final o J() {
            return o.V;
        }

        @NotNull
        public final o K() {
            return o.F;
        }

        @NotNull
        public final o L() {
            return o.L;
        }

        @NotNull
        public final o M() {
            return o.N;
        }

        @NotNull
        public final o N() {
            return o.f70227l;
        }

        @NotNull
        public final o O() {
            return o.f70233r;
        }

        @NotNull
        public final o P() {
            return o.Z;
        }

        @NotNull
        public final o Q() {
            return o.f70236u;
        }

        @NotNull
        public final o R() {
            return o.f70218e;
        }

        @NotNull
        public final o S() {
            return o.f70237v;
        }

        @NotNull
        public final o T() {
            return o.S;
        }

        @NotNull
        public final o U() {
            return o.U;
        }

        @NotNull
        public final o V() {
            return o.f70240y;
        }

        @NotNull
        public final o W() {
            return o.P;
        }

        @NotNull
        public final o X() {
            return o.M;
        }

        @NotNull
        public final o Y() {
            return o.T;
        }

        @NotNull
        public final o Z() {
            return o.f70235t;
        }

        @NotNull
        public final o a(int i10) {
            o oVar = (o) o.f70221f0.get(Integer.valueOf(i10));
            if (oVar == null) {
                return new o(i10, "Unknown Status Code");
            }
            return oVar;
        }

        @NotNull
        public final o a0() {
            return o.f70215c0;
        }

        @NotNull
        public final o b() {
            return o.f70224i;
        }

        @NotNull
        public final o b0() {
            return o.f70213b0;
        }

        @NotNull
        public final o c() {
            return o.Y;
        }

        @NotNull
        public final o d() {
            return o.f70239x;
        }

        @NotNull
        public final o e() {
            return o.G;
        }

        @NotNull
        public final o f() {
            return o.f70216d;
        }

        @NotNull
        public final o g() {
            return o.f70223h;
        }

        @NotNull
        public final o h() {
            return o.O;
        }

        @NotNull
        public final o i() {
            return o.R;
        }

        @NotNull
        public final o j() {
            return o.A;
        }

        @NotNull
        public final o k() {
            return o.f70232q;
        }

        @NotNull
        public final o l() {
            return o.f70212a0;
        }

        @NotNull
        public final o m() {
            return o.H;
        }

        @NotNull
        public final o n() {
            return o.f70217d0;
        }

        @NotNull
        public final o o() {
            return o.W;
        }

        @NotNull
        public final o p() {
            return o.I;
        }

        @NotNull
        public final o q() {
            return o.Q;
        }

        @NotNull
        public final o r() {
            return o.C;
        }

        @NotNull
        public final o s() {
            return o.f70231p;
        }

        @NotNull
        public final o t() {
            return o.f70229n;
        }

        @NotNull
        public final o u() {
            return o.f70230o;
        }

        @NotNull
        public final o v() {
            return o.f70226k;
        }

        @NotNull
        public final o w() {
            return o.f70225j;
        }

        @NotNull
        public final o x() {
            return o.D;
        }

        @NotNull
        public final o y() {
            return o.B;
        }

        @NotNull
        public final o z() {
            return o.X;
        }

        private a() {
        }
    }

    static {
        List<o> a10 = p.a();
        f70219e0 = a10;
        List<o> list = a10;
        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.e.e(p0.e(CollectionsKt.z(list, 10)), 16));
        for (Object obj : list) {
            linkedHashMap.put(Integer.valueOf(((o) obj).f70242a), obj);
        }
        f70221f0 = linkedHashMap;
    }

    public o(int i10, @NotNull String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        this.f70242a = i10;
        this.f70243b = description;
    }

    @Override // java.lang.Comparable
    /* renamed from: d0 */
    public int compareTo(@NotNull o other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return this.f70242a - other.f70242a;
    }

    public final int e0() {
        return this.f70242a;
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof o) && ((o) obj).f70242a == this.f70242a) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Integer.hashCode(this.f70242a);
    }

    @NotNull
    public String toString() {
        return this.f70242a + ' ' + this.f70243b;
    }
}
