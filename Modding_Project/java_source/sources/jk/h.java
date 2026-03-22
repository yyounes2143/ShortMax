package jk;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: FloatExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class h {
    @NotNull
    public static final String a(float f10) {
        int i10 = (int) f10;
        if (i10 == f10) {
            return String.valueOf(i10);
        }
        String format = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(f10)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return StringsKt.x1(StringsKt.x1(format, '0'), '.');
    }

    public static final int b(float f10) {
        if (!Float.isNaN(f10)) {
            return bt.a.c(f10);
        }
        return 0;
    }
}
