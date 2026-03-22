package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.ShortCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
/* compiled from: ValueClasses.kt */
@Metadata
/* loaded from: classes8.dex */
public final class p3 implements KSerializer<ms.s> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final p3 f69492a = new p3();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f69493b = s0.a("kotlin.UShort", tt.a.C(ShortCompanionObject.INSTANCE));

    private p3() {
    }

    public short a(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return ms.s.b(decoder.decodeInline(getDescriptor()).decodeShort());
    }

    public void b(@NotNull Encoder encoder, short s10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeInline(getDescriptor()).encodeShort(s10);
    }

    @Override // st.c
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return ms.s.a(a(decoder));
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f69493b;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((ms.s) obj).g());
    }
}
