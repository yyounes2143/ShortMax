package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import ut.e;
/* compiled from: Primitives.kt */
@Metadata
/* loaded from: classes8.dex */
public final class l implements KSerializer<Byte> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final l f69467a = new l();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f69468b = new n2("kotlin.Byte", e.b.f68610a);

    private l() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public Byte deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return Byte.valueOf(decoder.decodeByte());
    }

    public void b(@NotNull Encoder encoder, byte b10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeByte(b10);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f69468b;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((Number) obj).byteValue());
    }
}
