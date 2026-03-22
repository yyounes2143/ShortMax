package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import ut.e;
/* compiled from: BuiltInSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d0 implements KSerializer<kotlin.time.b> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final d0 f69389a = new d0();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f69390b = new n2("kotlin.time.Duration", e.i.f68617a);

    private d0() {
    }

    public long a(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return kotlin.time.b.f61250b.d(decoder.decodeString());
    }

    public void b(@NotNull Encoder encoder, long j10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeString(kotlin.time.b.I(j10));
    }

    @Override // st.c
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return kotlin.time.b.g(a(decoder));
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f69390b;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((kotlin.time.b) obj).M());
    }
}
