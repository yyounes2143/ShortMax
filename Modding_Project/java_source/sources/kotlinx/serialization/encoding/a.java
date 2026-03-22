package kotlinx.serialization.encoding;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractDecoder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAbstractDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractDecoder.kt\nkotlinx/serialization/encoding/AbstractDecoder\n+ 2 Decoding.kt\nkotlinx/serialization/encoding/DecodingKt\n*L\n1#1,81:1\n270#2,2:82\n*S KotlinDebug\n*F\n+ 1 AbstractDecoder.kt\nkotlinx/serialization/encoding/AbstractDecoder\n*L\n77#1:82,2\n*E\n"})
/* loaded from: classes8.dex */
public abstract class a implements Decoder, c {
    public static /* synthetic */ Object decodeSerializableValue$default(a aVar, st.c cVar, Object obj, int i10, Object obj2) {
        if (obj2 == null) {
            if ((i10 & 2) != 0) {
                obj = null;
            }
            return aVar.decodeSerializableValue(cVar, obj);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeSerializableValue");
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @NotNull
    public c beginStructure(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return this;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean decodeBoolean() {
        Object decodeValue = decodeValue();
        Intrinsics.checkNotNull(decodeValue, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) decodeValue).booleanValue();
    }

    @Override // kotlinx.serialization.encoding.c
    public final boolean decodeBooleanElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeBoolean();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public byte decodeByte() {
        Object decodeValue = decodeValue();
        Intrinsics.checkNotNull(decodeValue, "null cannot be cast to non-null type kotlin.Byte");
        return ((Byte) decodeValue).byteValue();
    }

    @Override // kotlinx.serialization.encoding.c
    public final byte decodeByteElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeByte();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public char decodeChar() {
        Object decodeValue = decodeValue();
        Intrinsics.checkNotNull(decodeValue, "null cannot be cast to non-null type kotlin.Char");
        return ((Character) decodeValue).charValue();
    }

    @Override // kotlinx.serialization.encoding.c
    public final char decodeCharElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeChar();
    }

    @Override // kotlinx.serialization.encoding.c
    public int decodeCollectionSize(@NotNull SerialDescriptor serialDescriptor) {
        return c.a.a(this, serialDescriptor);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public double decodeDouble() {
        Object decodeValue = decodeValue();
        Intrinsics.checkNotNull(decodeValue, "null cannot be cast to non-null type kotlin.Double");
        return ((Double) decodeValue).doubleValue();
    }

    @Override // kotlinx.serialization.encoding.c
    public final double decodeDoubleElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeDouble();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public int decodeEnum(@NotNull SerialDescriptor enumDescriptor) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        Object decodeValue = decodeValue();
        Intrinsics.checkNotNull(decodeValue, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) decodeValue).intValue();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public float decodeFloat() {
        Object decodeValue = decodeValue();
        Intrinsics.checkNotNull(decodeValue, "null cannot be cast to non-null type kotlin.Float");
        return ((Float) decodeValue).floatValue();
    }

    @Override // kotlinx.serialization.encoding.c
    public final float decodeFloatElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeFloat();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @NotNull
    public Decoder decodeInline(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return this;
    }

    @Override // kotlinx.serialization.encoding.c
    @NotNull
    public Decoder decodeInlineElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeInline(descriptor.d(i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public int decodeInt() {
        Object decodeValue = decodeValue();
        Intrinsics.checkNotNull(decodeValue, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) decodeValue).intValue();
    }

    @Override // kotlinx.serialization.encoding.c
    public final int decodeIntElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeInt();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public long decodeLong() {
        Object decodeValue = decodeValue();
        Intrinsics.checkNotNull(decodeValue, "null cannot be cast to non-null type kotlin.Long");
        return ((Long) decodeValue).longValue();
    }

    @Override // kotlinx.serialization.encoding.c
    public final long decodeLongElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeLong();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean decodeNotNullMark() {
        return true;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @Nullable
    public Void decodeNull() {
        return null;
    }

    @Override // kotlinx.serialization.encoding.c
    @Nullable
    public final <T> T decodeNullableSerializableElement(@NotNull SerialDescriptor descriptor, int i10, @NotNull st.c<? extends T> deserializer, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        if (!deserializer.getDescriptor().b() && !decodeNotNullMark()) {
            return (T) decodeNull();
        }
        return (T) decodeSerializableValue(deserializer, t10);
    }

    @Nullable
    public <T> T decodeNullableSerializableValue(@NotNull st.c<? extends T> cVar) {
        return (T) Decoder.a.a(this, cVar);
    }

    @Override // kotlinx.serialization.encoding.c
    public boolean decodeSequentially() {
        return c.a.b(this);
    }

    @Override // kotlinx.serialization.encoding.c
    public <T> T decodeSerializableElement(@NotNull SerialDescriptor descriptor, int i10, @NotNull st.c<? extends T> deserializer, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        return (T) decodeSerializableValue(deserializer, t10);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public <T> T decodeSerializableValue(@NotNull st.c<? extends T> cVar) {
        return (T) Decoder.a.b(this, cVar);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public short decodeShort() {
        Object decodeValue = decodeValue();
        Intrinsics.checkNotNull(decodeValue, "null cannot be cast to non-null type kotlin.Short");
        return ((Short) decodeValue).shortValue();
    }

    @Override // kotlinx.serialization.encoding.c
    public final short decodeShortElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeShort();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @NotNull
    public String decodeString() {
        Object decodeValue = decodeValue();
        Intrinsics.checkNotNull(decodeValue, "null cannot be cast to non-null type kotlin.String");
        return (String) decodeValue;
    }

    @Override // kotlinx.serialization.encoding.c
    @NotNull
    public final String decodeStringElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeString();
    }

    @NotNull
    public Object decodeValue() {
        throw new SerializationException(Reflection.getOrCreateKotlinClass(getClass()) + " can't retrieve untyped values");
    }

    @Override // kotlinx.serialization.encoding.c
    public void endStructure(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
    }

    public <T> T decodeSerializableValue(@NotNull st.c<? extends T> deserializer, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        return (T) decodeSerializableValue(deserializer);
    }
}
