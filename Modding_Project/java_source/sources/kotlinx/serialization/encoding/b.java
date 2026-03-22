package kotlinx.serialization.encoding;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.encoding.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.l;
import vt.p1;
/* compiled from: AbstractEncoder.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class b implements Encoder, d {
    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public d beginCollection(@NotNull SerialDescriptor serialDescriptor, int i10) {
        return Encoder.a.a(this, serialDescriptor, i10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public d beginStructure(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return this;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeBoolean(boolean z10) {
        encodeValue(Boolean.valueOf(z10));
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeBooleanElement(@NotNull SerialDescriptor descriptor, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            encodeBoolean(z10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeByte(byte b10) {
        encodeValue(Byte.valueOf(b10));
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeByteElement(@NotNull SerialDescriptor descriptor, int i10, byte b10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            encodeByte(b10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeChar(char c10) {
        encodeValue(Character.valueOf(c10));
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeCharElement(@NotNull SerialDescriptor descriptor, int i10, char c10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            encodeChar(c10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeDouble(double d10) {
        encodeValue(Double.valueOf(d10));
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeDoubleElement(@NotNull SerialDescriptor descriptor, int i10, double d10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            encodeDouble(d10);
        }
    }

    public boolean encodeElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return true;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeEnum(@NotNull SerialDescriptor enumDescriptor, int i10) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        encodeValue(Integer.valueOf(i10));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeFloat(float f10) {
        encodeValue(Float.valueOf(f10));
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeFloatElement(@NotNull SerialDescriptor descriptor, int i10, float f10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            encodeFloat(f10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public Encoder encodeInline(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return this;
    }

    @Override // kotlinx.serialization.encoding.d
    @NotNull
    public final Encoder encodeInlineElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            return encodeInline(descriptor.d(i10));
        }
        return p1.f69488a;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeInt(int i10) {
        encodeValue(Integer.valueOf(i10));
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeIntElement(@NotNull SerialDescriptor descriptor, int i10, int i11) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            encodeInt(i11);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeLong(long j10) {
        encodeValue(Long.valueOf(j10));
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeLongElement(@NotNull SerialDescriptor descriptor, int i10, long j10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            encodeLong(j10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeNotNullMark() {
        Encoder.a.b(this);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeNull() {
        throw new SerializationException("'null' is not supported by default");
    }

    @Override // kotlinx.serialization.encoding.d
    public <T> void encodeNullableSerializableElement(@NotNull SerialDescriptor descriptor, int i10, @NotNull l<? super T> serializer, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        if (encodeElement(descriptor, i10)) {
            encodeNullableSerializableValue(serializer, t10);
        }
    }

    public <T> void encodeNullableSerializableValue(@NotNull l<? super T> lVar, @Nullable T t10) {
        Encoder.a.c(this, lVar, t10);
    }

    @Override // kotlinx.serialization.encoding.d
    public <T> void encodeSerializableElement(@NotNull SerialDescriptor descriptor, int i10, @NotNull l<? super T> serializer, T t10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        if (encodeElement(descriptor, i10)) {
            encodeSerializableValue(serializer, t10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public <T> void encodeSerializableValue(@NotNull l<? super T> lVar, T t10) {
        Encoder.a.d(this, lVar, t10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeShort(short s10) {
        encodeValue(Short.valueOf(s10));
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeShortElement(@NotNull SerialDescriptor descriptor, int i10, short s10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (encodeElement(descriptor, i10)) {
            encodeShort(s10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeString(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        encodeValue(value);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeStringElement(@NotNull SerialDescriptor descriptor, int i10, @NotNull String value) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(value, "value");
        if (encodeElement(descriptor, i10)) {
            encodeString(value);
        }
    }

    public void encodeValue(@NotNull Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        throw new SerializationException("Non-serializable " + Reflection.getOrCreateKotlinClass(value.getClass()) + " is not supported by " + Reflection.getOrCreateKotlinClass(getClass()) + " encoder");
    }

    @Override // kotlinx.serialization.encoding.d
    public void endStructure(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
    }

    public boolean shouldEncodeElementDefault(@NotNull SerialDescriptor serialDescriptor, int i10) {
        return d.a.a(this, serialDescriptor, i10);
    }
}
