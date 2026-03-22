package ps;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _ComparisonsJvm.kt */
@Metadata
/* loaded from: classes8.dex */
public class c extends b {
    public static float e(float f10, @NotNull float... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (float f11 : other) {
            f10 = Math.max(f10, f11);
        }
        return f10;
    }

    public static int f(int i10, @NotNull int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (int i11 : other) {
            i10 = Math.max(i10, i11);
        }
        return i10;
    }

    public static float g(float f10, @NotNull float... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (float f11 : other) {
            f10 = Math.min(f10, f11);
        }
        return f10;
    }
}
