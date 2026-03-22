package ms;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: UnsignedJVM.kt */
@Metadata
/* loaded from: classes8.dex */
public final class u {
    public static final int a(double d10) {
        if (Double.isNaN(d10) || d10 <= c(0)) {
            return 0;
        }
        if (d10 >= c(-1)) {
            return -1;
        }
        if (d10 <= 2.147483647E9d) {
            return n.b((int) d10);
        }
        return n.b(n.b((int) (d10 - Integer.MAX_VALUE)) + n.b(Integer.MAX_VALUE));
    }

    public static final int b(int i10, int i11) {
        return Intrinsics.compare(i10 ^ Integer.MIN_VALUE, i11 ^ Integer.MIN_VALUE);
    }

    public static final double c(int i10) {
        return (Integer.MAX_VALUE & i10) + (((i10 >>> 31) << 30) * 2);
    }

    public static final int d(long j10, long j11) {
        return Intrinsics.compare(j10 ^ Long.MIN_VALUE, j11 ^ Long.MIN_VALUE);
    }

    public static final double e(long j10) {
        return ((j10 >>> 11) * 2048) + (j10 & 2047);
    }

    @NotNull
    public static final String f(long j10, int i10) {
        if (j10 >= 0) {
            String l10 = Long.toString(j10, CharsKt.checkRadix(i10));
            Intrinsics.checkNotNullExpressionValue(l10, "toString(...)");
            return l10;
        }
        long j11 = i10;
        long j12 = ((j10 >>> 1) / j11) << 1;
        long j13 = j10 - (j12 * j11);
        if (j13 >= j11) {
            j13 -= j11;
            j12++;
        }
        StringBuilder sb2 = new StringBuilder();
        String l11 = Long.toString(j12, CharsKt.checkRadix(i10));
        Intrinsics.checkNotNullExpressionValue(l11, "toString(...)");
        sb2.append(l11);
        String l12 = Long.toString(j13, CharsKt.checkRadix(i10));
        Intrinsics.checkNotNullExpressionValue(l12, "toString(...)");
        sb2.append(l12);
        return sb2.toString();
    }
}
