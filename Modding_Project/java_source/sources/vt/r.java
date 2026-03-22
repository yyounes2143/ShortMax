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
public final class r implements KSerializer<Character> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final r f69504a = new r();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f69505b = new n2("kotlin.Char", e.c.f68611a);

    private r() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public Character deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return Character.valueOf(decoder.decodeChar());
    }

    public void b(@NotNull Encoder encoder, char c10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeChar(c10);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f69505b;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((Character) obj).charValue());
    }
}
