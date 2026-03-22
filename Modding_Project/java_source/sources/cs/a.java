package cs;

import du.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: KtorSimpleLoggerJvm.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    @NotNull
    public static final du.a a(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        du.a j10 = b.j(name);
        Intrinsics.checkNotNullExpressionValue(j10, "getLogger(name)");
        return j10;
    }
}
