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
public final class v2 implements KSerializer<Short> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final v2 f69534a = new v2();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f69535b = new n2("kotlin.Short", e.h.f68616a);

    private v2() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public Short deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return Short.valueOf(decoder.decodeShort());
    }

    public void b(@NotNull Encoder encoder, short s10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeShort(s10);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f69535b;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((Number) obj).shortValue());
    }
}
