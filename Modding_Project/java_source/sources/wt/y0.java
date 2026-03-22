package wt;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import org.jetbrains.annotations.NotNull;
/* compiled from: TreeJsonDecoder.kt */
@Metadata
/* loaded from: classes8.dex */
public final class y0 {
    public static final <T> T a(@NotNull kotlinx.serialization.json.a json, @NotNull JsonElement element, @NotNull st.c<? extends T> deserializer) {
        Decoder f0Var;
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(element, "element");
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        if (element instanceof JsonObject) {
            f0Var = new j0(json, (JsonObject) element, null, null, 12, null);
        } else if (element instanceof JsonArray) {
            f0Var = new l0(json, (JsonArray) element);
        } else if (!(element instanceof kotlinx.serialization.json.t) && !Intrinsics.areEqual(element, JsonNull.INSTANCE)) {
            throw new NoWhenBranchMatchedException();
        } else {
            f0Var = new f0(json, (JsonPrimitive) element, null, 4, null);
        }
        return (T) f0Var.decodeSerializableValue(deserializer);
    }

    public static final <T> T b(@NotNull kotlinx.serialization.json.a aVar, @NotNull String discriminator, @NotNull JsonObject element, @NotNull st.c<? extends T> deserializer) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(discriminator, "discriminator");
        Intrinsics.checkNotNullParameter(element, "element");
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        return (T) new j0(aVar, element, discriminator, deserializer.getDescriptor()).decodeSerializableValue(deserializer);
    }
}
