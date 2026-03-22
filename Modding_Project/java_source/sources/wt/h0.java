package wt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.WriteMode;
import org.jetbrains.annotations.NotNull;
/* compiled from: JsonStreams.kt */
@Metadata
/* loaded from: classes8.dex */
public final class h0 {
    public static final <T> void a(@NotNull kotlinx.serialization.json.a json, @NotNull z writer, @NotNull st.l<? super T> serializer, T t10) {
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        new s0(writer, json, WriteMode.OBJ, new kotlinx.serialization.json.q[WriteMode.getEntries().size()]).encodeSerializableValue(serializer, t10);
    }
}
