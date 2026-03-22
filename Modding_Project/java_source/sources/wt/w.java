package wt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Composers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class w {
    @NotNull
    public static final m a(@NotNull z sb2, @NotNull kotlinx.serialization.json.a json) {
        Intrinsics.checkNotNullParameter(sb2, "sb");
        Intrinsics.checkNotNullParameter(json, "json");
        if (json.d().m()) {
            return new v(sb2, json);
        }
        return new m(sb2);
    }
}
