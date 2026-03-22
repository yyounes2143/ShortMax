package kotlinx.serialization.encoding;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Decoding.kt */
@Metadata
/* loaded from: classes8.dex */
public interface Decoder {

    /* compiled from: Decoding.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDecoding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Decoding.kt\nkotlinx/serialization/encoding/Decoder$DefaultImpls\n+ 2 Decoding.kt\nkotlinx/serialization/encoding/DecodingKt\n*L\n1#1,575:1\n270#2,2:576\n*S KotlinDebug\n*F\n+ 1 Decoding.kt\nkotlinx/serialization/encoding/Decoder$DefaultImpls\n*L\n263#1:576,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a {
        @Nullable
        public static <T> T a(@NotNull Decoder decoder, @NotNull st.c<? extends T> deserializer) {
            Intrinsics.checkNotNullParameter(deserializer, "deserializer");
            if (!deserializer.getDescriptor().b() && !decoder.decodeNotNullMark()) {
                return (T) decoder.decodeNull();
            }
            return (T) decoder.decodeSerializableValue(deserializer);
        }

        public static <T> T b(@NotNull Decoder decoder, @NotNull st.c<? extends T> deserializer) {
            Intrinsics.checkNotNullParameter(deserializer, "deserializer");
            return deserializer.deserialize(decoder);
        }
    }

    @NotNull
    c beginStructure(@NotNull SerialDescriptor serialDescriptor);

    boolean decodeBoolean();

    byte decodeByte();

    char decodeChar();

    double decodeDouble();

    int decodeEnum(@NotNull SerialDescriptor serialDescriptor);

    float decodeFloat();

    @NotNull
    Decoder decodeInline(@NotNull SerialDescriptor serialDescriptor);

    int decodeInt();

    long decodeLong();

    boolean decodeNotNullMark();

    @Nullable
    Void decodeNull();

    <T> T decodeSerializableValue(@NotNull st.c<? extends T> cVar);

    short decodeShort();

    @NotNull
    String decodeString();

    @NotNull
    xt.a getSerializersModule();
}
