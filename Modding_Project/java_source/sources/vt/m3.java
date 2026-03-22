package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
/* compiled from: ValueClasses.kt */
@Metadata
/* loaded from: classes8.dex */
public final class m3 implements KSerializer<ms.p> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final m3 f69476a = new m3();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f69477b = s0.a("kotlin.ULong", tt.a.B(LongCompanionObject.INSTANCE));

    private m3() {
    }

    public long a(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return ms.p.b(decoder.decodeInline(getDescriptor()).decodeLong());
    }

    public void b(@NotNull Encoder encoder, long j10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeInline(getDescriptor()).encodeLong(j10);
    }

    @Override // st.c
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return ms.p.a(a(decoder));
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f69477b;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((ms.p) obj).g());
    }
}
