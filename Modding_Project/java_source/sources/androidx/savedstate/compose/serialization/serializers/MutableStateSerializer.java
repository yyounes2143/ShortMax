package androidx.savedstate.compose.serialization.serializers;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import ut.e;
import ut.k;
import ut.l;
/* compiled from: MutableStateSerializer.kt */
@Metadata
/* loaded from: classes2.dex */
public final class MutableStateSerializer<T> implements KSerializer<MutableState<T>> {
    @NotNull
    private final SerialDescriptor descriptor;
    @NotNull
    private final KSerializer<T> valueSerializer;

    public MutableStateSerializer(@NotNull KSerializer<T> valueSerializer) {
        SerialDescriptor d10;
        Intrinsics.checkNotNullParameter(valueSerializer, "valueSerializer");
        this.valueSerializer = valueSerializer;
        l kind = valueSerializer.getDescriptor().getKind();
        if (kind instanceof e) {
            d10 = k.c("androidx.compose.runtime.MutableState", (e) kind);
        } else {
            d10 = k.d("androidx.compose.runtime.MutableState", valueSerializer.getDescriptor());
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
        serialize(encoder, (MutableState) ((MutableState) obj));
    }

    @Override // st.c
    @NotNull
    public MutableState<T> deserialize(@NotNull Decoder decoder) {
        MutableState<T> mutableStateOf$default;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(decoder.decodeSerializableValue(this.valueSerializer), null, 2, null);
        return mutableStateOf$default;
    }

    public void serialize(@NotNull Encoder encoder, @NotNull MutableState<T> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        encoder.encodeSerializableValue(this.valueSerializer, value.getValue());
    }

    public static /* synthetic */ void getDescriptor$annotations() {
    }
}
