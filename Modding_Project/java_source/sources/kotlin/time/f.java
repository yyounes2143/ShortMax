package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.b;
import org.jetbrains.annotations.NotNull;
/* compiled from: longSaturatedMath.kt */
@Metadata
@SourceDebugExtension({"SMAP\nlongSaturatedMath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,81:1\n80#1:82\n80#1:83\n80#1:84\n80#1:85\n80#1:86\n80#1:87\n*S KotlinDebug\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n14#1:82\n17#1:83\n36#1:84\n46#1:85\n53#1:86\n57#1:87\n*E\n"})
/* loaded from: classes8.dex */
public final class f {
    private static final long a(long j10) {
        if (j10 < 0) {
            return b.f61250b.b();
        }
        return b.f61250b.a();
    }

    public static final long b(long j10, long j11, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if ((1 | (j11 - 1)) == Long.MAX_VALUE) {
            return b.L(a(j11));
        }
        return c(j10, j11, unit);
    }

    private static final long c(long j10, long j11, DurationUnit durationUnit) {
        long j12 = j10 - j11;
        if (((j12 ^ j10) & (~(j12 ^ j11))) < 0) {
            DurationUnit durationUnit2 = DurationUnit.MILLISECONDS;
            if (durationUnit.compareTo(durationUnit2) < 0) {
                long b10 = d.b(1L, durationUnit2, durationUnit);
                long j13 = (j10 % b10) - (j11 % b10);
                b.a aVar = b.f61250b;
                return b.G(c.t((j10 / b10) - (j11 / b10), durationUnit2), c.t(j13, durationUnit));
            }
            return b.L(a(j12));
        }
        return c.t(j12, durationUnit);
    }

    public static final long d(long j10, long j11, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (((j11 - 1) | 1) == Long.MAX_VALUE) {
            if (j10 == j11) {
                return b.f61250b.c();
            }
            return b.L(a(j11));
        } else if ((1 | (j10 - 1)) == Long.MAX_VALUE) {
            return a(j10);
        } else {
            return c(j10, j11, unit);
        }
    }
}
