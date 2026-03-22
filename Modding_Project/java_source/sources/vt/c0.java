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
public final class c0 implements KSerializer<Double> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c0 f69382a = new c0();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f69383b = new n2("kotlin.Double", e.d.f68612a);

    private c0() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public Double deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return Double.valueOf(decoder.decodeDouble());
    }

    public void b(@NotNull Encoder encoder, double d10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeDouble(d10);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f69383b;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((Number) obj).doubleValue());
    }
}
