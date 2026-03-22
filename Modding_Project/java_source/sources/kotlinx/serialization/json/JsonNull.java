package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: JsonElement.kt */
@st.k(with = x.class)
@Metadata
/* loaded from: classes8.dex */
public final class JsonNull extends JsonPrimitive {
    @NotNull
    public static final JsonNull INSTANCE = new JsonNull();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final String f61937a = "null";

    private JsonNull() {
        super(null);
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    @NotNull
    public String a() {
        return f61937a;
    }

    @NotNull
    public final KSerializer<JsonNull> serializer() {
        return x.f62013a;
    }
}
