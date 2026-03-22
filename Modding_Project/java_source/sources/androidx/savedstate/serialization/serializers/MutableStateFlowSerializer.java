package androidx.savedstate.serialization.serializers;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.o;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kt.e;
import org.jetbrains.annotations.NotNull;
import ut.k;
import ut.l;
/* compiled from: MutableStateFlowSerializer.kt */
@Metadata
/* loaded from: classes2.dex */
public final class MutableStateFlowSerializer<T> implements KSerializer<e<T>> {
    @NotNull
    private final SerialDescriptor descriptor;
    @NotNull
    private final KSerializer<T> valueSerializer;

    public MutableStateFlowSerializer(@NotNull KSerializer<T> valueSerializer) {
        SerialDescriptor d10;
        Intrinsics.checkNotNullParameter(valueSerializer, "valueSerializer");
        this.valueSerializer = valueSerializer;
        l kind = valueSerializer.getDescriptor().getKind();
        if (kind instanceof ut.e) {
            d10 = k.c("kotlinx.coroutines.flow.MutableStateFlow", (ut.e) kind);
        } else {
            d10 = k.d("kotlinx.coroutines.flow.MutableStateFlow", valueSerializer.getDescriptor());
        }
        this.descriptor = d10;
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, (e) ((e) obj));
    }

    @Override // st.c
    @NotNull
    public e<T> deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return o.a(decoder.decodeSerializableValue(this.valueSerializer));
    }

    public void serialize(@NotNull Encoder encoder, @NotNull e<T> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        encoder.encodeSerializableValue(this.valueSerializer, value.getValue());
    }

    public static /* synthetic */ void getDescriptor$annotations() {
    }
}
