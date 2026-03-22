package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import ut.d;
/* compiled from: JsonElementSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class o implements KSerializer<JsonElement> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final o f62005a = new o();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f62006b = ut.k.h("kotlinx.serialization.json.JsonElement", d.b.f68608a, new SerialDescriptor[0], new Function1() { // from class: kotlinx.serialization.json.i
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Unit g10;
            g10 = o.g((ut.a) obj);
            return g10;
        }
    });

    private o() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(ut.a buildSerialDescriptor) {
        Intrinsics.checkNotNullParameter(buildSerialDescriptor, "$this$buildSerialDescriptor");
        ut.a.b(buildSerialDescriptor, "JsonPrimitive", p.a(new Function0() { // from class: kotlinx.serialization.json.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SerialDescriptor h10;
                h10 = o.h();
                return h10;
            }
        }), null, false, 12, null);
        ut.a.b(buildSerialDescriptor, "JsonNull", p.a(new Function0() { // from class: kotlinx.serialization.json.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SerialDescriptor i10;
                i10 = o.i();
                return i10;
            }
        }), null, false, 12, null);
        ut.a.b(buildSerialDescriptor, "JsonLiteral", p.a(new Function0() { // from class: kotlinx.serialization.json.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SerialDescriptor j10;
                j10 = o.j();
                return j10;
            }
        }), null, false, 12, null);
        ut.a.b(buildSerialDescriptor, "JsonObject", p.a(new Function0() { // from class: kotlinx.serialization.json.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SerialDescriptor k10;
                k10 = o.k();
                return k10;
            }
        }), null, false, 12, null);
        ut.a.b(buildSerialDescriptor, "JsonArray", p.a(new Function0() { // from class: kotlinx.serialization.json.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SerialDescriptor l10;
                l10 = o.l();
                return l10;
            }
        }), null, false, 12, null);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor h() {
        return b0.f61953a.getDescriptor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor i() {
        return x.f62013a.getDescriptor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor j() {
        return u.f62011a.getDescriptor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor k() {
        return a0.f61943a.getDescriptor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor l() {
        return b.f61948a.getDescriptor();
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f62006b;
    }

    @Override // st.c
    @NotNull
    /* renamed from: m */
    public JsonElement deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return p.d(decoder).b();
    }

    @Override // st.l
    /* renamed from: n */
    public void serialize(@NotNull Encoder encoder, @NotNull JsonElement value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        p.c(encoder);
        if (value instanceof JsonPrimitive) {
            encoder.encodeSerializableValue(b0.f61953a, value);
        } else if (value instanceof JsonObject) {
            encoder.encodeSerializableValue(a0.f61943a, value);
        } else if (value instanceof JsonArray) {
            encoder.encodeSerializableValue(b.f61948a, value);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }
}
