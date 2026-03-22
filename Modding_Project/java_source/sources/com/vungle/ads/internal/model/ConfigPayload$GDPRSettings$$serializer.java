package com.vungle.ads.internal.model;

import com.vungle.ads.internal.model.ConfigPayload;
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
public final class ConfigPayload$GDPRSettings$$serializer implements m0<ConfigPayload.GDPRSettings> {
    @NotNull
    public static final ConfigPayload$GDPRSettings$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        ConfigPayload$GDPRSettings$$serializer configPayload$GDPRSettings$$serializer = new ConfigPayload$GDPRSettings$$serializer();
        INSTANCE = configPayload$GDPRSettings$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.ConfigPayload.GDPRSettings", configPayload$GDPRSettings$$serializer, 6);
        h2Var.o("is_country_data_protected", true);
        h2Var.o("consent_title", true);
        h2Var.o("consent_message", true);
        h2Var.o("consent_message_version", true);
        h2Var.o("button_accept", true);
        h2Var.o("button_deny", true);
        descriptor = h2Var;
    }

    private ConfigPayload$GDPRSettings$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        KSerializer<?> t10 = a.t(i.f69441a);
        w2 w2Var = w2.f69539a;
        return new KSerializer[]{t10, a.t(w2Var), a.t(w2Var), a.t(w2Var), a.t(w2Var), a.t(w2Var)};
    }

    @Override // st.c
    @NotNull
    public ConfigPayload.GDPRSettings deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        int i10;
        Object obj6;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        int i11 = 5;
        Object obj7 = null;
        if (beginStructure.decodeSequentially()) {
            obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, i.f69441a, null);
            w2 w2Var = w2.f69539a;
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 1, w2Var, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, w2Var, null);
            obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, w2Var, null);
            obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, w2Var, null);
            obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, w2Var, null);
            i10 = 63;
        } else {
            boolean z10 = true;
            int i12 = 0;
            Object obj8 = null;
            Object obj9 = null;
            Object obj10 = null;
            Object obj11 = null;
            Object obj12 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z10 = false;
                        i11 = 5;
                    case 0:
                        obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, i.f69441a, obj7);
                        i12 |= 1;
                        i11 = 5;
                    case 1:
                        obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, w2.f69539a, obj8);
                        i12 |= 2;
                    case 2:
                        obj9 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, w2.f69539a, obj9);
                        i12 |= 4;
                    case 3:
                        obj10 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, w2.f69539a, obj10);
                        i12 |= 8;
                    case 4:
                        obj11 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, w2.f69539a, obj11);
                        i12 |= 16;
                    case 5:
                        obj12 = beginStructure.decodeNullableSerializableElement(descriptor2, i11, w2.f69539a, obj12);
                        i12 |= 32;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            obj = obj8;
            obj2 = obj9;
            obj3 = obj10;
            obj4 = obj11;
            obj5 = obj12;
            Object obj13 = obj7;
            i10 = i12;
            obj6 = obj13;
        }
        beginStructure.endStructure(descriptor2);
        return new ConfigPayload.GDPRSettings(i10, (Boolean) obj6, (String) obj, (String) obj2, (String) obj3, (String) obj4, (String) obj5, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull ConfigPayload.GDPRSettings value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        ConfigPayload.GDPRSettings.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
