package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: JsonElement.kt */
@st.k(with = b0.class)
@Metadata
/* loaded from: classes8.dex */
public abstract class JsonPrimitive extends JsonElement {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: JsonElement.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        private Companion() {
        }

        @NotNull
        public final KSerializer<JsonPrimitive> serializer() {
            return b0.f61953a;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ JsonPrimitive(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @NotNull
    public abstract String a();

    @NotNull
    public String toString() {
        return a();
    }

    private JsonPrimitive() {
        super(null);
    }
}
