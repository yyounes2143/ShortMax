package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import ut.e;
/* compiled from: JsonElementSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b0 implements KSerializer<JsonPrimitive> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b0 f61953a = new b0();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f61954b = ut.k.i("kotlinx.serialization.json.JsonPrimitive", e.i.f68617a, new SerialDescriptor[0], null, 8, null);

    private b0() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public JsonPrimitive deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        JsonElement b10 = p.d(decoder).b();
        if (b10 instanceof JsonPrimitive) {
            return (JsonPrimitive) b10;
        }
        throw wt.b0.f(-1, "Unexpected JSON element, expected JsonPrimitive, had " + Reflection.getOrCreateKotlinClass(b10.getClass()), b10.toString());
    }

    @Override // st.l
    /* renamed from: b */
    public void serialize(@NotNull Encoder encoder, @NotNull JsonPrimitive value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        p.c(encoder);
        if (value instanceof JsonNull) {
            encoder.encodeSerializableValue(x.f62013a, JsonNull.INSTANCE);
        } else {
            encoder.encodeSerializableValue(u.f62011a, (t) value);
        }
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f61954b;
    }
}
