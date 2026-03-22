package com.vungle.ads.internal.model;

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
import vt.i;
import vt.m0;
import vt.r2;
import vt.w2;
/* compiled from: ConfigPayload.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class Placement$$serializer implements m0<Placement> {
    @NotNull
    public static final Placement$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        Placement$$serializer placement$$serializer = new Placement$$serializer();
        INSTANCE = placement$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.Placement", placement$$serializer, 3);
        h2Var.o("placement_ref_id", false);
        h2Var.o("is_hb", true);
        h2Var.o("type", true);
        descriptor = h2Var;
    }

    private Placement$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        w2 w2Var = w2.f69539a;
        return new KSerializer[]{w2Var, i.f69441a, a.t(w2Var)};
    }

    @Override // st.c
    @NotNull
    public Placement deserialize(@NotNull Decoder decoder) {
        boolean z10;
        int i10;
        String str;
        Object obj;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            String decodeStringElement = beginStructure.decodeStringElement(descriptor2, 0);
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 1);
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 2, w2.f69539a, null);
            str = decodeStringElement;
            z10 = decodeBooleanElement;
            i10 = 7;
        } else {
            boolean z11 = true;
            boolean z12 = false;
            String str2 = null;
            Object obj2 = null;
            int i11 = 0;
            while (z11) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z11 = false;
                } else if (decodeElementIndex == 0) {
                    str2 = beginStructure.decodeStringElement(descriptor2, 0);
                    i11 |= 1;
                } else if (decodeElementIndex == 1) {
                    z12 = beginStructure.decodeBooleanElement(descriptor2, 1);
                    i11 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, w2.f69539a, obj2);
                    i11 |= 4;
                }
            }
            z10 = z12;
            i10 = i11;
            str = str2;
            obj = obj2;
        }
        beginStructure.endStructure(descriptor2);
        return new Placement(i10, str, z10, (String) obj, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull Placement value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        Placement.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
