package com.vungle.ads.fpd;

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
import vt.h2;
import vt.m0;
import vt.v0;
/* compiled from: Demographic.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class Demographic$$serializer implements m0<Demographic> {
    @NotNull
    public static final Demographic$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        Demographic$$serializer demographic$$serializer = new Demographic$$serializer();
        INSTANCE = demographic$$serializer;
        h2 h2Var = new h2("com.vungle.ads.fpd.Demographic", demographic$$serializer, 4);
        h2Var.o("age_range", true);
        h2Var.o("length_of_residence", true);
        h2Var.o("median_home_value_usd", true);
        h2Var.o("monthly_housing_payment_usd", true);
        descriptor = h2Var;
    }

    private Demographic$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        v0 v0Var = v0.f69529a;
        return new KSerializer[]{a.t(v0Var), a.t(v0Var), a.t(v0Var), a.t(v0Var)};
    }

    @Override // st.c
    @NotNull
    public Demographic deserialize(@NotNull Decoder decoder) {
        Object obj;
        int i10;
        Object obj2;
        Object obj3;
        Object obj4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        Object obj5 = null;
        if (beginStructure.decodeSequentially()) {
            v0 v0Var = v0.f69529a;
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, v0Var, null);
            obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, v0Var, null);
            Object decodeNullableSerializableElement = beginStructure.decodeNullableSerializableElement(descriptor2, 2, v0Var, null);
            obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, v0Var, null);
            obj = decodeNullableSerializableElement;
            i10 = 15;
        } else {
            boolean z10 = true;
            int i11 = 0;
            Object obj6 = null;
            obj = null;
            Object obj7 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z10 = false;
                } else if (decodeElementIndex == 0) {
                    obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, v0.f69529a, obj5);
                    i11 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, v0.f69529a, obj6);
                    i11 |= 2;
                } else if (decodeElementIndex == 2) {
                    obj = beginStructure.decodeNullableSerializableElement(descriptor2, 2, v0.f69529a, obj);
                    i11 |= 4;
                } else if (decodeElementIndex != 3) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, v0.f69529a, obj7);
                    i11 |= 8;
                }
            }
            i10 = i11;
            obj2 = obj5;
            obj3 = obj6;
            obj4 = obj7;
        }
        beginStructure.endStructure(descriptor2);
        return new Demographic(i10, (Integer) obj2, (Integer) obj3, (Integer) obj, (Integer) obj4, null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull Demographic value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        Demographic.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
