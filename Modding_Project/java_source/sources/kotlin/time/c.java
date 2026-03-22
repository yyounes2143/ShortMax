package kotlin.time;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.m0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;
import kotlin.time.b;
import org.jetbrains.annotations.NotNull;
/* compiled from: Duration.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1059:1\n1012#1,6:1061\n1015#1,3:1067\n1012#1,6:1070\n1012#1,6:1076\n1015#1,3:1085\n1#2:1060\n1734#3,3:1082\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n936#1:1061,6\n970#1:1067,3\n973#1:1070,6\n976#1:1076,6\n1012#1:1085,3\n1001#1:1082,3\n*E\n"})
/* loaded from: classes8.dex */
public final class c {
    public static final long i(long j10, int i10) {
        return b.j((j10 << 1) + i10);
    }

    public static final long j(long j10) {
        return b.j((j10 << 1) + 1);
    }

    public static final long k(long j10) {
        if (-4611686018426L <= j10 && j10 < 4611686018427L) {
            return l(n(j10));
        }
        return j(kotlin.ranges.e.p(j10, -4611686018427387903L, 4611686018427387903L));
    }

    public static final long l(long j10) {
        return b.j(j10 << 1);
    }

    public static final long m(long j10) {
        if (-4611686018426999999L <= j10 && j10 < 4611686018427000000L) {
            return l(j10);
        }
        return j(o(j10));
    }

    public static final long n(long j10) {
        return j10 * ((long) TTVideoEngineInterface.PLAYER_TIME_BASE);
    }

    public static final long o(long j10) {
        return j10 / ((long) TTVideoEngineInterface.PLAYER_TIME_BASE);
    }

    public static final long p(String str, boolean z10) {
        int i10;
        boolean z11;
        boolean z12;
        long j10;
        char charAt;
        char charAt2;
        int i11;
        char charAt3;
        int length = str.length();
        if (length != 0) {
            b.a aVar = b.f61250b;
            long c10 = aVar.c();
            char charAt4 = str.charAt(0);
            boolean z13 = true;
            if (charAt4 != '+' && charAt4 != '-') {
                i10 = 0;
            } else {
                i10 = 1;
            }
            if (i10 > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z11 && StringsKt.b1(str, '-', false, 2, null)) {
                z12 = true;
            } else {
                z12 = false;
            }
            if (length > i10) {
                char c11 = ':';
                char c12 = '0';
                if (str.charAt(i10) == 'P') {
                    int i12 = i10 + 1;
                    if (i12 != length) {
                        DurationUnit durationUnit = null;
                        boolean z14 = false;
                        while (i12 < length) {
                            if (str.charAt(i12) == 'T') {
                                if (!z14 && (i12 = i12 + 1) != length) {
                                    z14 = z13;
                                } else {
                                    throw new IllegalArgumentException();
                                }
                            } else {
                                int i13 = i12;
                                while (i13 < str.length() && ((c12 <= (charAt3 = str.charAt(i13)) && charAt3 < c11) || StringsKt.a0("+-.", charAt3, false, 2, null))) {
                                    i13++;
                                    c11 = ':';
                                    c12 = '0';
                                }
                                Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
                                String substring = str.substring(i12, i13);
                                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                                if (substring.length() != 0) {
                                    int length2 = i12 + substring.length();
                                    if (length2 >= 0 && length2 < str.length()) {
                                        char charAt5 = str.charAt(length2);
                                        int i14 = length2 + 1;
                                        DurationUnit d10 = e.d(charAt5, z14);
                                        if (durationUnit != null && durationUnit.compareTo(d10) <= 0) {
                                            throw new IllegalArgumentException("Unexpected order of duration components");
                                        }
                                        int p02 = StringsKt.p0(substring, '.', 0, false, 6, null);
                                        if (d10 == DurationUnit.SECONDS && p02 > 0) {
                                            Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
                                            String substring2 = substring.substring(0, p02);
                                            Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                                            i11 = i14;
                                            long G = b.G(c10, t(q(substring2), d10));
                                            Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
                                            String substring3 = substring.substring(p02);
                                            Intrinsics.checkNotNullExpressionValue(substring3, "substring(...)");
                                            c10 = b.G(G, r(Double.parseDouble(substring3), d10));
                                        } else {
                                            i11 = i14;
                                            c10 = b.G(c10, t(q(substring), d10));
                                        }
                                        i12 = i11;
                                        durationUnit = d10;
                                        c11 = ':';
                                        c12 = '0';
                                        z13 = true;
                                    } else {
                                        throw new IllegalArgumentException("Missing unit for value " + substring);
                                    }
                                } else {
                                    throw new IllegalArgumentException();
                                }
                            }
                        }
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else if (!z10) {
                    String str2 = "Unexpected order of duration components";
                    if (StringsKt.J(str, i10, "Infinity", 0, Math.max(length - i10, 8), true)) {
                        c10 = aVar.a();
                    } else {
                        boolean z15 = !z11;
                        if (z11 && str.charAt(i10) == '(' && StringsKt.E1(str) == ')') {
                            i10++;
                            length--;
                            if (i10 != length) {
                                j10 = c10;
                                z15 = true;
                            } else {
                                throw new IllegalArgumentException("No components");
                            }
                        } else {
                            j10 = c10;
                        }
                        DurationUnit durationUnit2 = null;
                        boolean z16 = false;
                        while (i10 < length) {
                            if (z16 && z15) {
                                while (i10 < str.length() && str.charAt(i10) == ' ') {
                                    i10++;
                                }
                            }
                            int i15 = i10;
                            while (i15 < str.length() && (('0' <= (charAt2 = str.charAt(i15)) && charAt2 < ':') || charAt2 == '.')) {
                                i15++;
                            }
                            Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
                            String substring4 = str.substring(i10, i15);
                            Intrinsics.checkNotNullExpressionValue(substring4, "substring(...)");
                            if (substring4.length() != 0) {
                                int length3 = i10 + substring4.length();
                                int i16 = length3;
                                while (i16 < str.length() && 'a' <= (charAt = str.charAt(i16)) && charAt < '{') {
                                    i16++;
                                }
                                Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
                                String substring5 = str.substring(length3, i16);
                                Intrinsics.checkNotNullExpressionValue(substring5, "substring(...)");
                                i10 = length3 + substring5.length();
                                DurationUnit e10 = e.e(substring5);
                                if (durationUnit2 == null || durationUnit2.compareTo(e10) > 0) {
                                    String str3 = str2;
                                    int p03 = StringsKt.p0(substring4, '.', 0, false, 6, null);
                                    if (p03 > 0) {
                                        Intrinsics.checkNotNull(substring4, "null cannot be cast to non-null type java.lang.String");
                                        String substring6 = substring4.substring(0, p03);
                                        Intrinsics.checkNotNullExpressionValue(substring6, "substring(...)");
                                        long G2 = b.G(j10, t(Long.parseLong(substring6), e10));
                                        Intrinsics.checkNotNull(substring4, "null cannot be cast to non-null type java.lang.String");
                                        String substring7 = substring4.substring(p03);
                                        Intrinsics.checkNotNullExpressionValue(substring7, "substring(...)");
                                        j10 = b.G(G2, r(Double.parseDouble(substring7), e10));
                                        i10 = i10;
                                        if (i10 < length) {
                                            throw new IllegalArgumentException("Fractional component must be last");
                                        }
                                    } else {
                                        j10 = b.G(j10, t(Long.parseLong(substring4), e10));
                                    }
                                    str2 = str3;
                                    durationUnit2 = e10;
                                    z16 = true;
                                } else {
                                    throw new IllegalArgumentException(str2);
                                }
                            } else {
                                throw new IllegalArgumentException();
                            }
                        }
                        c10 = j10;
                    }
                } else {
                    throw new IllegalArgumentException();
                }
                if (z12) {
                    return b.L(c10);
                }
                return c10;
            }
            throw new IllegalArgumentException("No components");
        }
        throw new IllegalArgumentException("The string is empty");
    }

    private static final long q(String str) {
        int i10;
        int length = str.length();
        if (length > 0 && StringsKt.a0("+-", str.charAt(0), false, 2, null)) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (length - i10 > 16) {
            IntRange intRange = new IntRange(i10, StringsKt.k0(str));
            if (!(intRange instanceof Collection) || !((Collection) intRange).isEmpty()) {
                Iterator<Integer> it = intRange.iterator();
                while (it.hasNext()) {
                    char charAt = str.charAt(((m0) it).nextInt());
                    if ('0' <= charAt) {
                        if (charAt >= ':') {
                        }
                    }
                }
            }
            if (str.charAt(0) == '-') {
                return Long.MIN_VALUE;
            }
            return Long.MAX_VALUE;
        }
        if (StringsKt.V(str, "+", false, 2, null)) {
            str = StringsKt.z1(str, 1);
        }
        return Long.parseLong(str);
    }

    public static final long r(double d10, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        double a10 = d.a(d10, unit, DurationUnit.NANOSECONDS);
        if (!Double.isNaN(a10)) {
            long d11 = bt.a.d(a10);
            if (-4611686018426999999L <= d11 && d11 < 4611686018427000000L) {
                return l(d11);
            }
            return k(bt.a.d(d.a(d10, unit, DurationUnit.MILLISECONDS)));
        }
        throw new IllegalArgumentException("Duration value cannot be NaN.");
    }

    public static final long s(int i10, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (unit.compareTo(DurationUnit.SECONDS) <= 0) {
            return l(d.c(i10, unit, DurationUnit.NANOSECONDS));
        }
        return t(i10, unit);
    }

    public static final long t(long j10, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        DurationUnit durationUnit = DurationUnit.NANOSECONDS;
        long c10 = d.c(4611686018426999999L, durationUnit, unit);
        if ((-c10) <= j10 && j10 <= c10) {
            return l(d.c(j10, unit, durationUnit));
        }
        return j(kotlin.ranges.e.p(d.b(j10, unit, DurationUnit.MILLISECONDS), -4611686018427387903L, 4611686018427387903L));
    }
}
