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
public interface d {

    /* compiled from: Encoding.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public static boolean a(@NotNull d dVar, @NotNull SerialDescriptor descriptor, int i10) {
            Intrinsics.checkNotNullParameter(descriptor, "descriptor");
            return true;
        }
    }

    void encodeBooleanElement(@NotNull SerialDescriptor serialDescriptor, int i10, boolean z10);

    void encodeByteElement(@NotNull SerialDescriptor serialDescriptor, int i10, byte b10);

    void encodeCharElement(@NotNull SerialDescriptor serialDescriptor, int i10, char c10);

    void encodeDoubleElement(@NotNull SerialDescriptor serialDescriptor, int i10, double d10);

    void encodeFloatElement(@NotNull SerialDescriptor serialDescriptor, int i10, float f10);

    @NotNull
    Encoder encodeInlineElement(@NotNull SerialDescriptor serialDescriptor, int i10);

    void encodeIntElement(@NotNull SerialDescriptor serialDescriptor, int i10, int i11);

    void encodeLongElement(@NotNull SerialDescriptor serialDescriptor, int i10, long j10);

    <T> void encodeNullableSerializableElement(@NotNull SerialDescriptor serialDescriptor, int i10, @NotNull l<? super T> lVar, @Nullable T t10);

    <T> void encodeSerializableElement(@NotNull SerialDescriptor serialDescriptor, int i10, @NotNull l<? super T> lVar, T t10);

    void encodeShortElement(@NotNull SerialDescriptor serialDescriptor, int i10, short s10);

    void encodeStringElement(@NotNull SerialDescriptor serialDescriptor, int i10, @NotNull String str);

    void endStructure(@NotNull SerialDescriptor serialDescriptor);

    boolean shouldEncodeElementDefault(@NotNull SerialDescriptor serialDescriptor, int i10);
}
