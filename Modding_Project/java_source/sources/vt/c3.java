package vt;

import kotlin.Metadata;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.encoding.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: Tuples.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c3<A, B, C> implements KSerializer<Triple<? extends A, ? extends B, ? extends C>> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final KSerializer<A> f69385a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final KSerializer<B> f69386b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final KSerializer<C> f69387c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final SerialDescriptor f69388d;

    public c3(@NotNull KSerializer<A> aSerializer, @NotNull KSerializer<B> bSerializer, @NotNull KSerializer<C> cSerializer) {
        Intrinsics.checkNotNullParameter(aSerializer, "aSerializer");
        Intrinsics.checkNotNullParameter(bSerializer, "bSerializer");
        Intrinsics.checkNotNullParameter(cSerializer, "cSerializer");
        this.f69385a = aSerializer;
        this.f69386b = bSerializer;
        this.f69387c = cSerializer;
        this.f69388d = ut.k.e("kotlin.Triple", new SerialDescriptor[0], new Function1() { // from class: vt.b3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit d10;
                d10 = c3.d(c3.this, (ut.a) obj);
                return d10;
            }
        });
    }

    private final Triple<A, B, C> b(kotlinx.serialization.encoding.c cVar) {
        Object c10 = c.a.c(cVar, getDescriptor(), 0, this.f69385a, null, 8, null);
        Object c11 = c.a.c(cVar, getDescriptor(), 1, this.f69386b, null, 8, null);
        Object c12 = c.a.c(cVar, getDescriptor(), 2, this.f69387c, null, 8, null);
        cVar.endStructure(getDescriptor());
        return new Triple<>(c10, c11, c12);
    }

    private final Triple<A, B, C> c(kotlinx.serialization.encoding.c cVar) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        obj = d3.f69394a;
        obj2 = d3.f69394a;
        obj3 = d3.f69394a;
        while (true) {
            int decodeElementIndex = cVar.decodeElementIndex(getDescriptor());
            if (decodeElementIndex != -1) {
                if (decodeElementIndex != 0) {
                    if (decodeElementIndex != 1) {
                        if (decodeElementIndex == 2) {
                            obj3 = c.a.c(cVar, getDescriptor(), 2, this.f69387c, null, 8, null);
                        } else {
                            throw new SerializationException("Unexpected index " + decodeElementIndex);
                        }
                    } else {
                        obj2 = c.a.c(cVar, getDescriptor(), 1, this.f69386b, null, 8, null);
                    }
                } else {
                    obj = c.a.c(cVar, getDescriptor(), 0, this.f69385a, null, 8, null);
                }
            } else {
                cVar.endStructure(getDescriptor());
                obj4 = d3.f69394a;
                if (obj != obj4) {
                    obj5 = d3.f69394a;
                    if (obj2 != obj5) {
                        obj6 = d3.f69394a;
                        if (obj3 != obj6) {
                            return new Triple<>(obj, obj2, obj3);
                        }
                        throw new SerializationException("Element 'third' is missing");
                    }
                    throw new SerializationException("Element 'second' is missing");
                }
                throw new SerializationException("Element 'first' is missing");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(c3 c3Var, ut.a buildClassSerialDescriptor) {
        Intrinsics.checkNotNullParameter(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
        ut.a.b(buildClassSerialDescriptor, "first", c3Var.f69385a.getDescriptor(), null, false, 12, null);
        ut.a.b(buildClassSerialDescriptor, "second", c3Var.f69386b.getDescriptor(), null, false, 12, null);
        ut.a.b(buildClassSerialDescriptor, "third", c3Var.f69387c.getDescriptor(), null, false, 12, null);
        return Unit.f60915a;
    }

    @Override // st.c
    @NotNull
    /* renamed from: e */
    public Triple<A, B, C> deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(getDescriptor());
        if (beginStructure.decodeSequentially()) {
            return b(beginStructure);
        }
        return c(beginStructure);
    }

    @Override // st.l
    /* renamed from: f */
    public void serialize(@NotNull Encoder encoder, @NotNull Triple<? extends A, ? extends B, ? extends C> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(getDescriptor());
        beginStructure.encodeSerializableElement(getDescriptor(), 0, this.f69385a, value.f());
        beginStructure.encodeSerializableElement(getDescriptor(), 1, this.f69386b, value.g());
        beginStructure.encodeSerializableElement(getDescriptor(), 2, this.f69387c, value.h());
        beginStructure.endStructure(getDescriptor());
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.f69388d;
    }
}
