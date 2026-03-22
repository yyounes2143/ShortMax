package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
/* compiled from: BuiltInSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class r1 implements KSerializer {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final r1 f69507a = new r1();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f69508b = q1.f69496a;

    private r1() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public Void deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        throw new SerializationException("'kotlin.Nothing' does not have instances");
    }

    @Override // st.l
    /* renamed from: b */
    public void serialize(@NotNull Encoder encoder, @NotNull Void value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        throw new SerializationException("'kotlin.Nothing' cannot be serialized");
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f69508b;
    }
}
