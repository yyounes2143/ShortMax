package vt;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import ut.m;
/* compiled from: ObjectSerializer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nObjectSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectSerializer.kt\nkotlinx/serialization/internal/ObjectSerializer\n+ 2 Decoding.kt\nkotlinx/serialization/encoding/DecodingKt\n*L\n1#1,57:1\n570#2,4:58\n*S KotlinDebug\n*F\n+ 1 ObjectSerializer.kt\nkotlinx/serialization/internal/ObjectSerializer\n*L\n43#1:58,4\n*E\n"})
/* loaded from: classes8.dex */
public final class v1<T> implements KSerializer<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final T f69531a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private List<? extends Annotation> f69532b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final ms.i f69533c;

    public v1(@NotNull final String serialName, @NotNull T objectInstance) {
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        Intrinsics.checkNotNullParameter(objectInstance, "objectInstance");
        this.f69531a = objectInstance;
        this.f69532b = CollectionsKt.n();
        this.f69533c = kotlin.c.a(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: vt.t1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SerialDescriptor c10;
                c10 = v1.c(serialName, this);
                return c10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor c(String str, final v1 v1Var) {
        return ut.k.h(str, m.d.f68631a, new SerialDescriptor[0], new Function1() { // from class: vt.u1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit d10;
                d10 = v1.d(v1.this, (ut.a) obj);
                return d10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(v1 v1Var, ut.a buildSerialDescriptor) {
        Intrinsics.checkNotNullParameter(buildSerialDescriptor, "$this$buildSerialDescriptor");
        buildSerialDescriptor.h(v1Var.f69532b);
        return Unit.f60915a;
    }

    @Override // st.c
    @NotNull
    public T deserialize(@NotNull Decoder decoder) {
        int decodeElementIndex;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor);
        if (beginStructure.decodeSequentially() || (decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor())) == -1) {
            Unit unit = Unit.f60915a;
            beginStructure.endStructure(descriptor);
            return this.f69531a;
        }
        throw new SerializationException("Unexpected index " + decodeElementIndex);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.f69533c.getValue();
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull T value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        encoder.beginStructure(getDescriptor()).endStructure(getDescriptor());
    }
}
