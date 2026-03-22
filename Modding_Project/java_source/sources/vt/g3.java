package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
/* compiled from: ValueClasses.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g3 implements KSerializer<ms.l> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g3 f69420a = new g3();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f69421b = s0.a("kotlin.UByte", tt.a.w(ByteCompanionObject.INSTANCE));

    private g3() {
    }

    public byte a(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return ms.l.b(decoder.decodeInline(getDescriptor()).decodeByte());
    }

    public void b(@NotNull Encoder encoder, byte b10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeInline(getDescriptor()).encodeByte(b10);
    }

    @Override // st.c
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return ms.l.a(a(decoder));
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f69421b;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((ms.l) obj).g());
    }
}
