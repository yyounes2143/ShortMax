package kotlin.time;

import androidx.collection.SieveCacheKt;
import androidx.exifinterface.media.ExifInterface;
import com.applovin.shadow.okhttp3.internal.http2.Http2Connection;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Duration.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1059:1\n38#1:1060\n38#1:1061\n38#1:1062\n38#1:1063\n38#1:1064\n501#1:1065\n518#1:1073\n170#2,6:1066\n1#3:1072\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n*L\n39#1:1060\n40#1:1061\n275#1:1062\n295#1:1063\n479#1:1064\n728#1:1065\n819#1:1073\n770#1:1066,6\n*E\n"})
/* loaded from: classes8.dex */
public final class b implements Comparable<b> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f61250b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    private static final long f61251c = j(0);

    /* renamed from: d  reason: collision with root package name */
    private static final long f61252d = c.b(4611686018427387903L);

    /* renamed from: e  reason: collision with root package name */
    private static final long f61253e = c.b(-4611686018427387903L);

    /* renamed from: a  reason: collision with root package name */
    private final long f61254a;

    /* compiled from: Duration.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return b.f61252d;
        }

        public final long b() {
            return b.f61253e;
        }

        public final long c() {
            return b.f61251c;
        }

        public final long d(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return c.h(value, true);
            } catch (IllegalArgumentException e10) {
                throw new IllegalArgumentException("Invalid ISO duration string format: '" + value + "'.", e10);
            }
        }

        private a() {
        }
    }

    private /* synthetic */ b(long j10) {
        this.f61254a = j10;
    }

    private static final boolean A(long j10) {
        if ((((int) j10) & 1) == 1) {
            return true;
        }
        return false;
    }

    private static final boolean B(long j10) {
        if ((((int) j10) & 1) == 0) {
            return true;
        }
        return false;
    }

    public static final boolean C(long j10) {
        if (j10 != f61252d && j10 != f61253e) {
            return false;
        }
        return true;
    }

    public static final boolean D(long j10) {
        if (j10 < 0) {
            return true;
        }
        return false;
    }

    public static final boolean E(long j10) {
        if (j10 > 0) {
            return true;
        }
        return false;
    }

    public static final long F(long j10, long j11) {
        return G(j10, L(j11));
    }

    public static final long G(long j10, long j11) {
        if (C(j10)) {
            if (!z(j11) && (j11 ^ j10) < 0) {
                throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
            }
            return j10;
        } else if (C(j11)) {
            return j11;
        } else {
            if ((((int) j10) & 1) == (((int) j11) & 1)) {
                long x10 = x(j10) + x(j11);
                if (B(j10)) {
                    return c.e(x10);
                }
                return c.c(x10);
            } else if (A(j10)) {
                return e(j10, x(j10), x(j11));
            } else {
                return e(j10, x(j11), x(j10));
            }
        }
    }

    public static final double H(long j10, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j10 == f61252d) {
            return Double.POSITIVE_INFINITY;
        }
        if (j10 == f61253e) {
            return Double.NEGATIVE_INFINITY;
        }
        return d.a(x(j10), w(j10), unit);
    }

    @NotNull
    public static final String I(long j10) {
        boolean z10;
        boolean z11;
        StringBuilder sb2 = new StringBuilder();
        if (D(j10)) {
            sb2.append('-');
        }
        sb2.append("PT");
        long m10 = m(j10);
        long p10 = p(m10);
        int t10 = t(m10);
        int v10 = v(m10);
        int u10 = u(m10);
        if (C(j10)) {
            p10 = 9999999999999L;
        }
        boolean z12 = false;
        if (p10 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (v10 == 0 && u10 == 0) {
            z11 = false;
        } else {
            z11 = true;
        }
        if (t10 != 0 || (z11 && z10)) {
            z12 = true;
        }
        if (z10) {
            sb2.append(p10);
            sb2.append('H');
        }
        if (z12) {
            sb2.append(t10);
            sb2.append('M');
        }
        if (z11 || (!z10 && !z12)) {
            f(j10, sb2, v10, u10, 9, ExifInterface.LATITUDE_SOUTH, true);
        }
        return sb2.toString();
    }

    public static final long J(long j10, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j10 == f61252d) {
            return Long.MAX_VALUE;
        }
        if (j10 == f61253e) {
            return Long.MIN_VALUE;
        }
        return d.b(x(j10), w(j10), unit);
    }

    @NotNull
    public static String K(long j10) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        if (j10 == 0) {
            return "0s";
        }
        if (j10 == f61252d) {
            return "Infinity";
        }
        if (j10 == f61253e) {
            return "-Infinity";
        }
        boolean D = D(j10);
        StringBuilder sb2 = new StringBuilder();
        if (D) {
            sb2.append('-');
        }
        long m10 = m(j10);
        long o10 = o(m10);
        int n10 = n(m10);
        int t10 = t(m10);
        int v10 = v(m10);
        int u10 = u(m10);
        int i10 = 0;
        if (o10 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (n10 != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (t10 != 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (v10 == 0 && u10 == 0) {
            z13 = false;
        } else {
            z13 = true;
        }
        if (z10) {
            sb2.append(o10);
            sb2.append('d');
            i10 = 1;
        }
        if (z11 || (z10 && (z12 || z13))) {
            int i11 = i10 + 1;
            if (i10 > 0) {
                sb2.append(' ');
            }
            sb2.append(n10);
            sb2.append('h');
            i10 = i11;
        }
        if (z12 || (z13 && (z11 || z10))) {
            int i12 = i10 + 1;
            if (i10 > 0) {
                sb2.append(' ');
            }
            sb2.append(t10);
            sb2.append('m');
            i10 = i12;
        }
        if (z13) {
            int i13 = i10 + 1;
            if (i10 > 0) {
                sb2.append(' ');
            }
            if (v10 == 0 && !z10 && !z11 && !z12) {
                if (u10 >= 1000000) {
                    f(j10, sb2, u10 / TTVideoEngineInterface.PLAYER_TIME_BASE, u10 % TTVideoEngineInterface.PLAYER_TIME_BASE, 6, "ms", false);
                } else if (u10 >= 1000) {
                    f(j10, sb2, u10 / 1000, u10 % 1000, 3, "us", false);
                } else {
                    sb2.append(u10);
                    sb2.append("ns");
                }
            } else {
                f(j10, sb2, v10, u10, 9, "s", false);
            }
            i10 = i13;
        }
        if (D && i10 > 1) {
            sb2.insert(1, '(').append(')');
        }
        return sb2.toString();
    }

    public static final long L(long j10) {
        return c.a(-x(j10), ((int) j10) & 1);
    }

    private static final long e(long j10, long j11, long j12) {
        long g10 = c.g(j12);
        long j13 = j11 + g10;
        if (-4611686018426L <= j13 && j13 < 4611686018427L) {
            return c.d(c.f(j13) + (j12 - c.f(g10)));
        }
        return c.b(kotlin.ranges.e.p(j13, -4611686018427387903L, 4611686018427387903L));
    }

    private static final void f(long j10, StringBuilder sb2, int i10, int i11, int i12, String str, boolean z10) {
        sb2.append(i10);
        if (i11 != 0) {
            sb2.append('.');
            String G0 = StringsKt.G0(String.valueOf(i11), i12, '0');
            int i13 = -1;
            int length = G0.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i14 = length - 1;
                    if (G0.charAt(length) != '0') {
                        i13 = length;
                        break;
                    } else if (i14 < 0) {
                        break;
                    } else {
                        length = i14;
                    }
                }
            }
            int i15 = i13 + 1;
            if (!z10 && i15 < 3) {
                sb2.append((CharSequence) G0, 0, i15);
                Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
            } else {
                sb2.append((CharSequence) G0, 0, ((i13 + 3) / 3) * 3);
                Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
            }
        }
        sb2.append(str);
    }

    public static final /* synthetic */ b g(long j10) {
        return new b(j10);
    }

    public static int i(long j10, long j11) {
        long j12 = j10 ^ j11;
        if (j12 >= 0 && (((int) j12) & 1) != 0) {
            int i10 = (((int) j10) & 1) - (((int) j11) & 1);
            if (D(j10)) {
                return -i10;
            }
            return i10;
        }
        return Intrinsics.compare(j10, j11);
    }

    public static long j(long j10) {
        if (et.a.a()) {
            if (B(j10)) {
                long x10 = x(j10);
                if (-4611686018426999999L > x10 || x10 >= 4611686018427000000L) {
                    throw new AssertionError(x(j10) + " ns is out of nanoseconds range");
                }
            } else {
                long x11 = x(j10);
                if (-4611686018427387903L <= x11 && x11 < SieveCacheKt.NodeVisitedBit) {
                    long x12 = x(j10);
                    if (-4611686018426L <= x12 && x12 < 4611686018427L) {
                        throw new AssertionError(x(j10) + " ms is denormalized");
                    }
                } else {
                    throw new AssertionError(x(j10) + " ms is out of milliseconds range");
                }
            }
        }
        return j10;
    }

    public static boolean k(long j10, Object obj) {
        if (!(obj instanceof b) || j10 != ((b) obj).M()) {
            return false;
        }
        return true;
    }

    public static final boolean l(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    public static final long m(long j10) {
        if (D(j10)) {
            return L(j10);
        }
        return j10;
    }

    public static final int n(long j10) {
        if (C(j10)) {
            return 0;
        }
        return (int) (p(j10) % 24);
    }

    public static final long o(long j10) {
        return J(j10, DurationUnit.DAYS);
    }

    public static final long p(long j10) {
        return J(j10, DurationUnit.HOURS);
    }

    public static final long q(long j10) {
        if (A(j10) && z(j10)) {
            return x(j10);
        }
        return J(j10, DurationUnit.MILLISECONDS);
    }

    public static final long r(long j10) {
        return J(j10, DurationUnit.MINUTES);
    }

    public static final long s(long j10) {
        return J(j10, DurationUnit.SECONDS);
    }

    public static final int t(long j10) {
        if (C(j10)) {
            return 0;
        }
        return (int) (r(j10) % 60);
    }

    public static final int u(long j10) {
        long x10;
        if (C(j10)) {
            return 0;
        }
        if (A(j10)) {
            x10 = c.f(x(j10) % 1000);
        } else {
            x10 = x(j10) % ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS);
        }
        return (int) x10;
    }

    public static final int v(long j10) {
        if (C(j10)) {
            return 0;
        }
        return (int) (s(j10) % 60);
    }

    private static final DurationUnit w(long j10) {
        if (B(j10)) {
            return DurationUnit.NANOSECONDS;
        }
        return DurationUnit.MILLISECONDS;
    }

    private static final long x(long j10) {
        return j10 >> 1;
    }

    public static int y(long j10) {
        return Long.hashCode(j10);
    }

    public static final boolean z(long j10) {
        return !C(j10);
    }

    public final /* synthetic */ long M() {
        return this.f61254a;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(b bVar) {
        return h(bVar.M());
    }

    public boolean equals(Object obj) {
        return k(this.f61254a, obj);
    }

    public int h(long j10) {
        return i(this.f61254a, j10);
    }

    public int hashCode() {
        return y(this.f61254a);
    }

    @NotNull
    public String toString() {
        return K(this.f61254a);
    }
}
