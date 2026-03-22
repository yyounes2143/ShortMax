package ur;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ExceptionUtilsJvm.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c {
    @NotNull
    public static final Throwable a(@NotNull Throwable th2) {
        Intrinsics.checkNotNullParameter(th2, "<this>");
        Throwable th3 = th2;
        while (th3 instanceof CancellationException) {
            CancellationException cancellationException = (CancellationException) th3;
            if (Intrinsics.areEqual(th3, cancellationException.getCause())) {
                return th2;
            }
            th3 = cancellationException.getCause();
        }
        if (th3 != null) {
            return th3;
        }
        return th2;
    }
}
