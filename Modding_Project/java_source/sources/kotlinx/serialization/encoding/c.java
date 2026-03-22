package kotlinx.serialization.encoding;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Decoding.kt */
@Metadata
/* loaded from: classes8.dex */
public interface c {

    /* compiled from: Decoding.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public static int a(@NotNull c cVar, @NotNull SerialDescriptor descriptor) {
            Intrinsics.checkNotNullParameter(descriptor, "descriptor");
            return -1;
        }

        public static boolean b(@NotNull c cVar) {
            return false;
        }

        public static /* synthetic */ Object c(c cVar, SerialDescriptor serialDescriptor, int i10, st.c cVar2, Object obj, int i11, Object obj2) {
            if (obj2 == null) {
                if ((i11 & 8) != 0) {
                    obj = null;
                }
                return cVar.decodeSerializableElement(serialDescriptor, i10, cVar2, obj);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeSerializableElement");
        }
    }

    boolean decodeBooleanElement(@NotNull SerialDescriptor serialDescriptor, int i10);

    byte decodeByteElement(@NotNull SerialDescriptor serialDescriptor, int i10);

    char decodeCharElement(@NotNull SerialDescriptor serialDescriptor, int i10);

    int decodeCollectionSize(@NotNull SerialDescriptor serialDescriptor);

    double decodeDoubleElement(@NotNull SerialDescriptor serialDescriptor, int i10);

    int decodeElementIndex(@NotNull SerialDescriptor serialDescriptor);

    float decodeFloatElement(@NotNull SerialDescriptor serialDescriptor, int i10);

    @NotNull
    Decoder decodeInlineElement(@NotNull SerialDescriptor serialDescriptor, int i10);

    int decodeIntElement(@NotNull SerialDescriptor serialDescriptor, int i10);

    long decodeLongElement(@NotNull SerialDescriptor serialDescriptor, int i10);

    @Nullable
    <T> T decodeNullableSerializableElement(@NotNull SerialDescriptor serialDescriptor, int i10, @NotNull st.c<? extends T> cVar, @Nullable T t10);

    boolean decodeSequentially();

    <T> T decodeSerializableElement(@NotNull SerialDescriptor serialDescriptor, int i10, @NotNull st.c<? extends T> cVar, @Nullable T t10);

    short decodeShortElement(@NotNull SerialDescriptor serialDescriptor, int i10);

    @NotNull
    String decodeStringElement(@NotNull SerialDescriptor serialDescriptor, int i10);

    void endStructure(@NotNull SerialDescriptor serialDescriptor);

    @NotNull
    xt.a getSerializersModule();
}
