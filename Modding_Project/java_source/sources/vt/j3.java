package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
/* compiled from: ValueClasses.kt */
@Metadata
/* loaded from: classes8.dex */
public final class j3 implements KSerializer<ms.n> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final j3 f69459a = new j3();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f69460b = s0.a("kotlin.UInt", tt.a.A(IntCompanionObject.INSTANCE));

    private j3() {
    }

    public int a(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return ms.n.b(decoder.decodeInline(getDescriptor()).decodeInt());
    }

    public void b(@NotNull Encoder encoder, int i10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeInline(getDescriptor()).encodeInt(i10);
    }

    @Override // st.c
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return ms.n.a(a(decoder));
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f69460b;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((ms.n) obj).g());
    }
}
