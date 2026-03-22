package wr;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Headers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class h extends yr.r implements f {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(@NotNull Map<String, ? extends List<String>> values) {
        super(true, values);
        Intrinsics.checkNotNullParameter(values, "values");
    }

    @NotNull
    public String toString() {
        return "Headers " + b();
    }
}
