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
public final class l0 implements KSerializer<Float> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final l0 f69469a = new l0();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f69470b = new n2("kotlin.Float", e.C0945e.f68613a);

    private l0() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public Float deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return Float.valueOf(decoder.decodeFloat());
    }

    public void b(@NotNull Encoder encoder, float f10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeFloat(f10);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f69470b;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((Number) obj).floatValue());
    }
}
