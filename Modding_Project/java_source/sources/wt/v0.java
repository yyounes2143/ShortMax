package wt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: StringJsonLexer.kt */
@Metadata
/* loaded from: classes8.dex */
public final class v0 {
    @NotNull
    public static final u0 a(@NotNull kotlinx.serialization.json.a json, @NotNull String source) {
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(source, "source");
        if (!json.d().a()) {
            return new u0(source);
        }
        return new w0(source);
    }
}
