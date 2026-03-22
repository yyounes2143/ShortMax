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
public final class g1 implements KSerializer<Long> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g1 f69417a = new g1();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f69418b = new n2("kotlin.Long", e.g.f68615a);

    private g1() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public Long deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return Long.valueOf(decoder.decodeLong());
    }

    public void b(@NotNull Encoder encoder, long j10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeLong(j10);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f69418b;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((Number) obj).longValue());
    }
}
