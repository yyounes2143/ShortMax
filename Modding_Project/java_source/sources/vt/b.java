package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.encoding.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractPolymorphicSerializer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAbstractPolymorphicSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractPolymorphicSerializer.kt\nkotlinx/serialization/internal/AbstractPolymorphicSerializer\n+ 2 Encoding.kt\nkotlinx/serialization/encoding/EncodingKt\n+ 3 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 4 Decoding.kt\nkotlinx/serialization/encoding/DecodingKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,115:1\n475#2,2:116\n477#2,2:119\n82#3:118\n570#4,2:121\n572#4,2:124\n1#5:123\n*S KotlinDebug\n*F\n+ 1 AbstractPolymorphicSerializer.kt\nkotlinx/serialization/internal/AbstractPolymorphicSerializer\n*L\n33#1:116,2\n33#1:119,2\n35#1:118\n39#1:121,2\n39#1:124,2\n*E\n"})
/* loaded from: classes8.dex */
public abstract class b<T> implements KSerializer<T> {
    /* JADX INFO: Access modifiers changed from: private */
    public final T b(kotlinx.serialization.encoding.c cVar) {
        return (T) c.a.c(cVar, getDescriptor(), 1, st.h.a(this, cVar, cVar.decodeStringElement(getDescriptor(), 0)), null, 8, null);
    }

    @Nullable
    public st.c<T> c(@NotNull kotlinx.serialization.encoding.c decoder, @Nullable String str) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return decoder.getSerializersModule().e(e(), str);
    }

    @Nullable
    public st.l<T> d(@NotNull Encoder encoder, @NotNull T value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        return encoder.getSerializersModule().f(e(), value);
    }

    @Override // st.c
    @NotNull
    public final T deserialize(@NotNull Decoder decoder) {
        T t10;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor);
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (beginStructure.decodeSequentially()) {
            t10 = (T) b(beginStructure);
        } else {
            t10 = null;
            while (true) {
                int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
                if (decodeElementIndex != -1) {
                    if (decodeElementIndex != 0) {
                        if (decodeElementIndex != 1) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Invalid index in polymorphic deserialization of ");
                            String str = (String) objectRef.element;
                            if (str == null) {
                                str = "unknown class";
                            }
                            sb2.append(str);
                            sb2.append("\n Expected 0, 1 or DECODE_DONE(-1), but found ");
                            sb2.append(decodeElementIndex);
                            throw new SerializationException(sb2.toString());
                        }
                        T t11 = objectRef.element;
                        if (t11 != null) {
                            objectRef.element = t11;
                            t10 = (T) c.a.c(beginStructure, getDescriptor(), decodeElementIndex, st.h.a(this, beginStructure, (String) t11), null, 8, null);
                        } else {
                            throw new IllegalArgumentException("Cannot read polymorphic value before its type token");
                        }
                    } else {
                        objectRef.element = (T) beginStructure.decodeStringElement(getDescriptor(), decodeElementIndex);
                    }
                } else if (t10 != null) {
                    Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type T of kotlinx.serialization.internal.AbstractPolymorphicSerializer");
                } else {
                    throw new IllegalArgumentException(("Polymorphic value has not been read for class " + ((String) objectRef.element)).toString());
                }
            }
        }
        beginStructure.endStructure(descriptor);
        return t10;
    }

    @NotNull
    public abstract KClass<T> e();

    @Override // st.l
    public final void serialize(@NotNull Encoder encoder, @NotNull T value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        st.l<? super T> b10 = st.h.b(this, encoder, value);
        SerialDescriptor descriptor = getDescriptor();
        kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(descriptor);
        beginStructure.encodeStringElement(getDescriptor(), 0, b10.getDescriptor().h());
        SerialDescriptor descriptor2 = getDescriptor();
        Intrinsics.checkNotNull(b10, "null cannot be cast to non-null type kotlinx.serialization.SerializationStrategy<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        beginStructure.encodeSerializableElement(descriptor2, 1, b10, value);
        beginStructure.endStructure(descriptor);
    }
}
