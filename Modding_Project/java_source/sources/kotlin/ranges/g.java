package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.ranges.d;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Ranges.kt */
@Metadata
@SourceDebugExtension({"SMAP\n_Ranges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Ranges.kt\nkotlin/ranges/RangesKt___RangesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1538:1\n1#2:1539\n*E\n"})
/* loaded from: classes8.dex */
public class g extends f {
    public static double c(double d10, double d11) {
        if (d10 < d11) {
            return d11;
        }
        return d10;
    }

    public static float d(float f10, float f11) {
        if (f10 < f11) {
            return f11;
        }
        return f10;
    }

    public static int e(int i10, int i11) {
        if (i10 < i11) {
            return i11;
        }
        return i10;
    }

    public static long f(long j10, long j11) {
        if (j10 < j11) {
            return j11;
        }
        return j10;
    }

    @NotNull
    public static <T extends Comparable<? super T>> T g(@NotNull T t10, @NotNull T minimumValue) {
        Intrinsics.checkNotNullParameter(t10, "<this>");
        Intrinsics.checkNotNullParameter(minimumValue, "minimumValue");
        if (t10.compareTo(minimumValue) < 0) {
            return minimumValue;
        }
        return t10;
    }

    public static double h(double d10, double d11) {
        if (d10 > d11) {
            return d11;
        }
        return d10;
    }

    public static float i(float f10, float f11) {
        if (f10 > f11) {
            return f11;
        }
        return f10;
    }

    public static int j(int i10, int i11) {
        if (i10 > i11) {
            return i11;
        }
        return i10;
    }

    public static long k(long j10, long j11) {
        if (j10 > j11) {
            return j11;
        }
        return j10;
    }

    public static double l(double d10, double d11, double d12) {
        if (d11 <= d12) {
            if (d10 < d11) {
                return d11;
            }
            if (d10 > d12) {
                return d12;
            }
            return d10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d12 + " is less than minimum " + d11 + '.');
    }

    public static float m(float f10, float f11, float f12) {
        if (f11 <= f12) {
            if (f10 < f11) {
                return f11;
            }
            if (f10 > f12) {
                return f12;
            }
            return f10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f12 + " is less than minimum " + f11 + '.');
    }

    public static int n(int i10, int i11, int i12) {
        if (i11 <= i12) {
            if (i10 < i11) {
                return i11;
            }
            if (i10 > i12) {
                return i12;
            }
            return i10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i12 + " is less than minimum " + i11 + '.');
    }

    public static int o(int i10, @NotNull dt.c<Integer> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof dt.b) {
            return ((Number) e.q(Integer.valueOf(i10), (dt.b) range)).intValue();
        }
        if (!range.isEmpty()) {
            if (i10 < range.getStart().intValue()) {
                return range.getStart().intValue();
            }
            if (i10 > range.getEndInclusive().intValue()) {
                return range.getEndInclusive().intValue();
            }
            return i10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    public static long p(long j10, long j11, long j12) {
        if (j11 <= j12) {
            if (j10 < j11) {
                return j11;
            }
            if (j10 > j12) {
                return j12;
            }
            return j10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j12 + " is less than minimum " + j11 + '.');
    }

    @NotNull
    public static <T extends Comparable<? super T>> T q(@NotNull T t10, @NotNull dt.b<T> range) {
        Intrinsics.checkNotNullParameter(t10, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        if (!range.isEmpty()) {
            if (range.a(t10, range.getStart()) && !range.a(range.getStart(), t10)) {
                return range.getStart();
            }
            if (range.a(range.getEndInclusive(), t10) && !range.a(t10, range.getEndInclusive())) {
                return range.getEndInclusive();
            }
            return t10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    @NotNull
    public static d r(int i10, int i11) {
        return d.f61086d.a(i10, i11, -1);
    }

    public static int s(@NotNull IntRange intRange, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(intRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return kotlin.random.d.f(random, intRange);
        } catch (IllegalArgumentException e10) {
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @NotNull
    public static d t(@NotNull d dVar) {
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        return d.f61086d.a(dVar.d(), dVar.c(), -dVar.e());
    }

    @NotNull
    public static d u(@NotNull d dVar, int i10) {
        boolean z10;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        f.a(z10, Integer.valueOf(i10));
        d.a aVar = d.f61086d;
        int c10 = dVar.c();
        int d10 = dVar.d();
        if (dVar.e() <= 0) {
            i10 = -i10;
        }
        return aVar.a(c10, d10, i10);
    }

    @NotNull
    public static IntRange v(int i10, int i11) {
        if (i11 <= Integer.MIN_VALUE) {
            return IntRange.f61076e.a();
        }
        return new IntRange(i10, i11 - 1);
    }
}
