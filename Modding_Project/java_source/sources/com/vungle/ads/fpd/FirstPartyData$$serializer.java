package com.vungle.ads.fpd;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.encoding.d;
import ms.c;
import org.jetbrains.annotations.NotNull;
import tt.a;
import vt.a1;
import vt.h2;
import vt.m0;
import vt.w2;
/* compiled from: FirstPartyData.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class FirstPartyData$$serializer implements m0<FirstPartyData> {
    @NotNull
    public static final FirstPartyData$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        FirstPartyData$$serializer firstPartyData$$serializer = new FirstPartyData$$serializer();
        INSTANCE = firstPartyData$$serializer;
        h2 h2Var = new h2("com.vungle.ads.fpd.FirstPartyData", firstPartyData$$serializer, 5);
        h2Var.o("session_context", true);
        h2Var.o("demographic", true);
        h2Var.o("location", true);
        h2Var.o("revenue", true);
        h2Var.o("custom_data", true);
        descriptor = h2Var;
    }

    private FirstPartyData$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        KSerializer<?> t10 = a.t(SessionContext$$serializer.INSTANCE);
        KSerializer<?> t11 = a.t(Demographic$$serializer.INSTANCE);
        KSerializer<?> t12 = a.t(Location$$serializer.INSTANCE);
        KSerializer<?> t13 = a.t(Revenue$$serializer.INSTANCE);
        w2 w2Var = w2.f69539a;
        return new KSerializer[]{t10, t11, t12, t13, a.t(new a1(w2Var, w2Var))};
    }

    @Override // st.c
    @NotNull
    public FirstPartyData deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        int i10;
        Object obj5;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        Object obj6 = null;
        if (beginStructure.decodeSequentially()) {
            obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, SessionContext$$serializer.INSTANCE, null);
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 1, Demographic$$serializer.INSTANCE, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, Location$$serializer.INSTANCE, null);
            obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, Revenue$$serializer.INSTANCE, null);
            w2 w2Var = w2.f69539a;
            obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, new a1(w2Var, w2Var), null);
            i10 = 31;
        } else {
            boolean z10 = true;
            int i11 = 0;
            Object obj7 = null;
            Object obj8 = null;
            Object obj9 = null;
            Object obj10 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z10 = false;
                } else if (decodeElementIndex == 0) {
                    obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, SessionContext$$serializer.INSTANCE, obj6);
                    i11 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, Demographic$$serializer.INSTANCE, obj7);
                    i11 |= 2;
                } else if (decodeElementIndex == 2) {
                    obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, Location$$serializer.INSTANCE, obj8);
                    i11 |= 4;
                } else if (decodeElementIndex == 3) {
                    obj9 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, Revenue$$serializer.INSTANCE, obj9);
                    i11 |= 8;
                } else if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    w2 w2Var2 = w2.f69539a;
                    obj10 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, new a1(w2Var2, w2Var2), obj10);
                    i11 |= 16;
                }
            }
            obj = obj7;
            obj2 = obj8;
            obj3 = obj9;
            obj4 = obj10;
            Object obj11 = obj6;
            i10 = i11;
            obj5 = obj11;
        }
        beginStructure.endStructure(descriptor2);
        return new FirstPartyData(i10, (SessionContext) obj5, (Demographic) obj, (Location) obj2, (Revenue) obj3, (Map) obj4, null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull FirstPartyData value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        FirstPartyData.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
