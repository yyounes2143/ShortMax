package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.Uuid;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import ut.e;
/* compiled from: BuiltInSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class r3 implements KSerializer<Uuid> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final r3 f69509a = new r3();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f69510b = new n2("kotlin.uuid.Uuid", e.i.f68617a);

    private r3() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public Uuid deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return Uuid.f61259c.c(decoder.decodeString());
    }

    @Override // st.l
    /* renamed from: b */
    public void serialize(@NotNull Encoder encoder, @NotNull Uuid value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        encoder.encodeString(value.toString());
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f69510b;
    }
}
