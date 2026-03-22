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
public final class w2 implements KSerializer<String> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final w2 f69539a = new w2();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f69540b = new n2("kotlin.String", e.i.f68617a);

    private w2() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public String deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return decoder.decodeString();
    }

    @Override // st.l
    /* renamed from: b */
    public void serialize(@NotNull Encoder encoder, @NotNull String value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        encoder.encodeString(value);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f69540b;
    }
}
