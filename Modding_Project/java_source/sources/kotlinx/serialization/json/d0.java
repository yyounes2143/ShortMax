package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import wt.a1;
/* compiled from: JsonTransformingSerializer.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class d0<T> implements KSerializer<T> {
    @NotNull
    private final KSerializer<T> tSerializer;

    public d0(@NotNull KSerializer<T> tSerializer) {
        Intrinsics.checkNotNullParameter(tSerializer, "tSerializer");
        this.tSerializer = tSerializer;
    }

    @Override // st.c
    @NotNull
    public final T deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        f d10 = p.d(decoder);
        return (T) d10.a().c(this.tSerializer, transformDeserialize(d10.b()));
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.tSerializer.getDescriptor();
    }

    @Override // st.l
    public final void serialize(@NotNull Encoder encoder, @NotNull T value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        q e10 = p.e(encoder);
        e10.b(transformSerialize(a1.d(e10.a(), value, this.tSerializer)));
    }

    @NotNull
    protected JsonElement transformDeserialize(@NotNull JsonElement element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return element;
    }

    @NotNull
    protected JsonElement transformSerialize(@NotNull JsonElement element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return element;
    }
}
