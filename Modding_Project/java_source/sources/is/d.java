package is;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Numbers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d {
    @NotNull
    public static final Void a(long j10, @NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        throw new IllegalArgumentException("Long value " + j10 + " of " + name + " doesn't fit into 32-bit integer");
    }
}
