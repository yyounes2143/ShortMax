package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.encoding.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: Tuples.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTuples.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tuples.kt\nkotlinx/serialization/internal/KeyValueSerializer\n+ 2 Decoding.kt\nkotlinx/serialization/encoding/DecodingKt\n*L\n1#1,168:1\n570#2,4:169\n*S KotlinDebug\n*F\n+ 1 Tuples.kt\nkotlinx/serialization/internal/KeyValueSerializer\n*L\n35#1:169,4\n*E\n"})
/* loaded from: classes8.dex */
public abstract class y0<K, V, R> implements KSerializer<R> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final KSerializer<K> f69548a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final KSerializer<V> f69549b;

    public /* synthetic */ y0(KSerializer kSerializer, KSerializer kSerializer2, DefaultConstructorMarker defaultConstructorMarker) {
        this(kSerializer, kSerializer2);
    }

    protected abstract K a(R r10);

    @NotNull
    protected final KSerializer<K> b() {
        return this.f69548a;
    }

    protected abstract V c(R r10);

    @NotNull
    protected final KSerializer<V> d() {
        return this.f69549b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // st.c
    public R deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        R r10;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor);
        if (!beginStructure.decodeSequentially()) {
            obj = d3.f69394a;
            obj2 = d3.f69394a;
            Object obj5 = obj;
            Object obj6 = obj2;
            while (true) {
                int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
                if (decodeElementIndex == -1) {
                    obj3 = d3.f69394a;
                    if (obj5 != obj3) {
                        obj4 = d3.f69394a;
                        if (obj6 != obj4) {
                            r10 = (R) e(obj5, obj6);
                        } else {
                            throw new SerializationException("Element 'value' is missing");
                        }
                    } else {
                        throw new SerializationException("Element 'key' is missing");
                    }
                } else if (decodeElementIndex != 0) {
                    if (decodeElementIndex == 1) {
                        obj6 = c.a.c(beginStructure, getDescriptor(), 1, d(), null, 8, null);
                    } else {
                        throw new SerializationException("Invalid index: " + decodeElementIndex);
                    }
                } else {
                    obj5 = c.a.c(beginStructure, getDescriptor(), 0, b(), null, 8, null);
                }
            }
        } else {
            r10 = (R) e(c.a.c(beginStructure, getDescriptor(), 0, b(), null, 8, null), c.a.c(beginStructure, getDescriptor(), 1, d(), null, 8, null));
        }
        beginStructure.endStructure(descriptor);
        return r10;
    }

    protected abstract R e(K k10, V v10);

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, R r10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(getDescriptor());
        beginStructure.encodeSerializableElement(getDescriptor(), 0, this.f69548a, a(r10));
        beginStructure.encodeSerializableElement(getDescriptor(), 1, this.f69549b, c(r10));
        beginStructure.endStructure(getDescriptor());
    }

    private y0(KSerializer<K> kSerializer, KSerializer<V> kSerializer2) {
        this.f69548a = kSerializer;
        this.f69549b = kSerializer2;
    }
}
