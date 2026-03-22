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
public final class v0 implements KSerializer<Integer> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final v0 f69529a = new v0();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f69530b = new n2("kotlin.Int", e.f.f68614a);

    private v0() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public Integer deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return Integer.valueOf(decoder.decodeInt());
    }

    public void b(@NotNull Encoder encoder, int i10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeInt(i10);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f69530b;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((Number) obj).intValue());
    }
}
