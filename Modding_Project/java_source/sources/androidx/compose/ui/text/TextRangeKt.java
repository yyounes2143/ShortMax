package androidx.compose.ui.text;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextRange.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextRangeKt {
    public static final long TextRange(int i10, int i11) {
        return TextRange.m3686constructorimpl(packWithCheck(i10, i11));
    }

    /* renamed from: constrain-8ffj60Q  reason: not valid java name */
    public static final long m3703constrain8ffj60Q(long j10, int i10, int i11) {
        int n10 = e.n(TextRange.m3697getStartimpl(j10), i10, i11);
        int n11 = e.n(TextRange.m3692getEndimpl(j10), i10, i11);
        if (n10 == TextRange.m3697getStartimpl(j10) && n11 == TextRange.m3692getEndimpl(j10)) {
            return j10;
        }
        return TextRange(n10, n11);
    }

    private static final long packWithCheck(int i10, int i11) {
        if (i10 >= 0) {
            if (i11 >= 0) {
                return (i11 & 4294967295L) | (i10 << 32);
            }
            throw new IllegalArgumentException(("end cannot negative. [end: " + i11 + ']').toString());
        }
        throw new IllegalArgumentException(("start cannot be negative. [start: " + i10 + ']').toString());
    }

    @NotNull
    /* renamed from: substring-FDrldGo  reason: not valid java name */
    public static final String m3704substringFDrldGo(@NotNull CharSequence substring, long j10) {
        Intrinsics.checkNotNullParameter(substring, "$this$substring");
        return substring.subSequence(TextRange.m3695getMinimpl(j10), TextRange.m3694getMaximpl(j10)).toString();
    }

    public static final long TextRange(int i10) {
        return TextRange(i10, i10);
    }
}
