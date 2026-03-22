package yr;

import io.ktor.util.Platform;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformUtilsJvm.kt */
@Metadata
/* loaded from: classes8.dex */
public final class o {
    @NotNull
    public static final Platform a(@NotNull n nVar) {
        Intrinsics.checkNotNullParameter(nVar, "<this>");
        return Platform.Jvm;
    }

    public static final boolean b(@NotNull n nVar) {
        Intrinsics.checkNotNullParameter(nVar, "<this>");
        String property = System.getProperty("io.ktor.development");
        if (property == null || !Boolean.parseBoolean(property)) {
            return false;
        }
        return true;
    }

    public static final boolean c(@NotNull n nVar) {
        Intrinsics.checkNotNullParameter(nVar, "<this>");
        return true;
    }
}
