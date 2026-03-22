package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NullableSerializer.kt */
@Metadata
/* loaded from: classes8.dex */
public final class s1<T> implements KSerializer<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final KSerializer<T> f69512a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final SerialDescriptor f69513b;

    public s1(@NotNull KSerializer<T> serializer) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        this.f69512a = serializer;
        this.f69513b = new q2(serializer.getDescriptor());
    }

    @Override // st.c
    @Nullable
    public T deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        if (decoder.decodeNotNullMark()) {
            return (T) decoder.decodeSerializableValue(this.f69512a);
        }
        return (T) decoder.decodeNull();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && s1.class == obj.getClass() && Intrinsics.areEqual(this.f69512a, ((s1) obj).f69512a)) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.f69513b;
    }

    public int hashCode() {
        return this.f69512a.hashCode();
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        if (t10 != null) {
            encoder.encodeNotNullMark();
            encoder.encodeSerializableValue(this.f69512a, t10);
            return;
        }
        encoder.encodeNull();
    }
}
