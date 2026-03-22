package kotlin.ranges;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Ranges.kt */
@Metadata
/* loaded from: classes8.dex */
public class f {
    public static final void a(boolean z10, @NotNull Number step) {
        Intrinsics.checkNotNullParameter(step, "step");
        if (z10) {
            return;
        }
        throw new IllegalArgumentException("Step must be positive, was: " + step + '.');
    }

    @NotNull
    public static dt.b<Float> b(float f10, float f11) {
        return new c(f10, f11);
    }
}
