package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DurationUnitJvm.kt */
@Metadata
/* loaded from: classes8.dex */
public class d {
    public static final double a(double d10, @NotNull DurationUnit sourceUnit, @NotNull DurationUnit targetUnit) {
        Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
        Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
        long convert = targetUnit.getTimeUnit$kotlin_stdlib().convert(1L, sourceUnit.getTimeUnit$kotlin_stdlib());
        if (convert > 0) {
            return d10 * convert;
        }
        return d10 / sourceUnit.getTimeUnit$kotlin_stdlib().convert(1L, targetUnit.getTimeUnit$kotlin_stdlib());
    }

    public static final long b(long j10, @NotNull DurationUnit sourceUnit, @NotNull DurationUnit targetUnit) {
        Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
        Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
        return targetUnit.getTimeUnit$kotlin_stdlib().convert(j10, sourceUnit.getTimeUnit$kotlin_stdlib());
    }

    public static final long c(long j10, @NotNull DurationUnit sourceUnit, @NotNull DurationUnit targetUnit) {
        Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
        Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
        return targetUnit.getTimeUnit$kotlin_stdlib().convert(j10, sourceUnit.getTimeUnit$kotlin_stdlib());
    }
}
