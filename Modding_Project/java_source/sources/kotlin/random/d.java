package kotlin.random;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
/* compiled from: Random.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/RandomKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,383:1\n1#2:384\n*E\n"})
/* loaded from: classes8.dex */
public final class d {
    @NotNull
    public static final Random a(long j10) {
        return new XorWowRandom((int) j10, (int) (j10 >> 32));
    }

    @NotNull
    public static final String b(@NotNull Object from, @NotNull Object until) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(until, "until");
        return "Random range is empty: [" + from + ", " + until + ").";
    }

    public static final void c(int i10, int i11) {
        if (i11 > i10) {
            return;
        }
        throw new IllegalArgumentException(b(Integer.valueOf(i10), Integer.valueOf(i11)).toString());
    }

    public static final void d(long j10, long j11) {
        if (j11 > j10) {
            return;
        }
        throw new IllegalArgumentException(b(Long.valueOf(j10), Long.valueOf(j11)).toString());
    }

    public static final int e(int i10) {
        return 31 - Integer.numberOfLeadingZeros(i10);
    }

    public static final int f(@NotNull Random random, @NotNull IntRange range) {
        Intrinsics.checkNotNullParameter(random, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        if (!range.isEmpty()) {
            if (range.d() < Integer.MAX_VALUE) {
                return random.h(range.c(), range.d() + 1);
            }
            if (range.c() > Integer.MIN_VALUE) {
                return random.h(range.c() - 1, range.d()) + 1;
            }
            return random.f();
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + range);
    }

    public static final int g(int i10, int i11) {
        return (i10 >>> (32 - i11)) & ((-i11) >> 31);
    }
}
