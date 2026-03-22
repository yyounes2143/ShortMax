package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import ut.e;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JsonElementSerializers.kt */
@Metadata
@SourceDebugExtension({"SMAP\nJsonElementSerializers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonElementSerializers.kt\nkotlinx/serialization/json/JsonLiteralSerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,236:1\n1#2:237\n*E\n"})
/* loaded from: classes8.dex */
public final class u implements KSerializer<t> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final u f62011a = new u();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f62012b = ut.k.c("kotlinx.serialization.json.JsonLiteral", e.i.f68617a);

    private u() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public t deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        JsonElement b10 = p.d(decoder).b();
        if (b10 instanceof t) {
            return (t) b10;
        }
        throw wt.b0.f(-1, "Unexpected JSON element, expected JsonLiteral, had " + Reflection.getOrCreateKotlinClass(b10.getClass()), b10.toString());
    }

    @Override // st.l
    /* renamed from: b */
    public void serialize(@NotNull Encoder encoder, @NotNull t value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        p.h(encoder);
        if (value.d()) {
            encoder.encodeString(value.a());
        } else if (value.c() != null) {
            encoder.encodeInline(value.c()).encodeString(value.a());
        } else {
            Long v10 = StringsKt.v(value.a());
            if (v10 != null) {
                encoder.encodeLong(v10.longValue());
                return;
            }
            ms.p h10 = kotlin.text.d0.h(value.a());
            if (h10 != null) {
                encoder.encodeInline(tt.a.I(ms.p.f62643b).getDescriptor()).encodeLong(h10.g());
                return;
            }
            Double r10 = StringsKt.r(value.a());
            if (r10 != null) {
                encoder.encodeDouble(r10.doubleValue());
                return;
            }
            Boolean u12 = StringsKt.u1(value.a());
            if (u12 != null) {
                encoder.encodeBoolean(u12.booleanValue());
            } else {
                encoder.encodeString(value.a());
            }
        }
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f62012b;
    }
}
