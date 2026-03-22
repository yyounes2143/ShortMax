package kotlinx.serialization.encoding;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.l;
/* compiled from: Encoding.kt */
@Metadata
/* loaded from: classes8.dex */
public interface Encoder {
    @NotNull
    d beginCollection(@NotNull SerialDescriptor serialDescriptor, int i10);

    @NotNull
    d beginStructure(@NotNull SerialDescriptor serialDescriptor);

    void encodeBoolean(boolean z10);

    void encodeByte(byte b10);

    void encodeChar(char c10);

    void encodeDouble(double d10);

    void encodeEnum(@NotNull SerialDescriptor serialDescriptor, int i10);

    void encodeFloat(float f10);

    @NotNull
    Encoder encodeInline(@NotNull SerialDescriptor serialDescriptor);

    void encodeInt(int i10);

    void encodeLong(long j10);

    void encodeNotNullMark();

    void encodeNull();

    <T> void encodeSerializableValue(@NotNull l<? super T> lVar, T t10);

    void encodeShort(short s10);

    void encodeString(@NotNull String str);

    @NotNull
    xt.a getSerializersModule();

    /* compiled from: Encoding.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @NotNull
        public static d a(@NotNull Encoder encoder, @NotNull SerialDescriptor descriptor, int i10) {
            Intrinsics.checkNotNullParameter(descriptor, "descriptor");
            return encoder.beginStructure(descriptor);
        }

        public static <T> void c(@NotNull Encoder encoder, @NotNull l<? super T> serializer, @Nullable T t10) {
            Intrinsics.checkNotNullParameter(serializer, "serializer");
            if (serializer.getDescriptor().b()) {
                encoder.encodeSerializableValue(serializer, t10);
            } else if (t10 == null) {
                encoder.encodeNull();
            } else {
                encoder.encodeNotNullMark();
                encoder.encodeSerializableValue(serializer, t10);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static <T> void d(@NotNull Encoder encoder, @NotNull l<? super T> serializer, T t10) {
            Intrinsics.checkNotNullParameter(serializer, "serializer");
            serializer.serialize(encoder, t10);
        }

        public static void b(@NotNull Encoder encoder) {
        }
    }
}
