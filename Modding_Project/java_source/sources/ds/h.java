package ds;

import io.ktor.utils.io.ExceptionUtilsJvmKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StackTraceRecoverJvm.kt */
@Metadata
/* loaded from: classes8.dex */
public final class h {
    @NotNull
    public static final Throwable a(@NotNull Throwable th2, @Nullable Throwable th3) {
        Intrinsics.checkNotNullParameter(th2, "<this>");
        if (th3 != null && !Intrinsics.areEqual(th2.getCause(), th3)) {
            Throwable e10 = ExceptionUtilsJvmKt.e(th2, th3);
            if (e10 == null) {
                return th2;
            }
            e10.setStackTrace(th2.getStackTrace());
            return e10;
        }
        return th2;
    }
}
