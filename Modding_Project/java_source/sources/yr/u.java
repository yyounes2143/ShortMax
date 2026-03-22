package yr;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Throwable.kt */
@Metadata
/* loaded from: classes8.dex */
public final class u {
    @Nullable
    public static final Throwable a(@NotNull Throwable th2) {
        Throwable th3;
        Intrinsics.checkNotNullParameter(th2, "<this>");
        while (true) {
            if (th2 != null) {
                th3 = th2.getCause();
            } else {
                th3 = null;
            }
            if (th3 != null) {
                th2 = th2.getCause();
            } else {
                return th2;
            }
        }
    }
}
