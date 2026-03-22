package vt;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
/* compiled from: Primitives.kt */
@Metadata
/* loaded from: classes8.dex */
public final class q3 implements KSerializer<Unit> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final q3 f69502b = new q3();

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ v1<Unit> f69503a = new v1<>("kotlin.Unit", Unit.f60915a);

    private q3() {
    }

    public void a(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        this.f69503a.deserialize(decoder);
    }

    @Override // st.l
    /* renamed from: b */
    public void serialize(@NotNull Encoder encoder, @NotNull Unit value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f69503a.serialize(encoder, value);
    }

    @Override // st.c
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        a(decoder);
        return Unit.f60915a;
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.f69503a.getDescriptor();
    }
}
