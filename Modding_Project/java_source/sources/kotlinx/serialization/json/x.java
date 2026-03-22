package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.internal.JsonDecodingException;
import org.jetbrains.annotations.NotNull;
import ut.l;
/* compiled from: JsonElementSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class x implements KSerializer<JsonNull> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final x f62013a = new x();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f62014b = ut.k.i("kotlinx.serialization.json.JsonNull", l.b.f68627a, new SerialDescriptor[0], null, 8, null);

    private x() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public JsonNull deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        p.g(decoder);
        if (!decoder.decodeNotNullMark()) {
            decoder.decodeNull();
            return JsonNull.INSTANCE;
        }
        throw new JsonDecodingException("Expected 'null' literal");
    }

    @Override // st.l
    /* renamed from: b */
    public void serialize(@NotNull Encoder encoder, @NotNull JsonNull value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        p.h(encoder);
        encoder.encodeNull();
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f62014b;
    }
}
