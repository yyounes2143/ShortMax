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
public final class i implements KSerializer<Boolean> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final i f69441a = new i();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f69442b = new n2("kotlin.Boolean", e.a.f68609a);

    private i() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public Boolean deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return Boolean.valueOf(decoder.decodeBoolean());
    }

    public void b(@NotNull Encoder encoder, boolean z10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeBoolean(z10);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f69442b;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((Boolean) obj).booleanValue());
    }
}
