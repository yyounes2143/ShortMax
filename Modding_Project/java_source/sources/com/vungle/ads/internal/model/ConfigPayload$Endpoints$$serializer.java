package com.vungle.ads.internal.model;

import com.mbridge.msdk.foundation.entity.b;
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
import vt.m0;
import vt.r2;
import vt.w2;
/* compiled from: ConfigPayload.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class ConfigPayload$Endpoints$$serializer implements m0<ConfigPayload.Endpoints> {
    @NotNull
    public static final ConfigPayload$Endpoints$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        ConfigPayload$Endpoints$$serializer configPayload$Endpoints$$serializer = new ConfigPayload$Endpoints$$serializer();
        INSTANCE = configPayload$Endpoints$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.ConfigPayload.Endpoints", configPayload$Endpoints$$serializer, 5);
        h2Var.o(b.JSON_KEY_ADS, true);
        h2Var.o("ri", true);
        h2Var.o("error_logs", true);
        h2Var.o("metrics", true);
        h2Var.o("mraid_js", true);
        descriptor = h2Var;
    }

    private ConfigPayload$Endpoints$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        w2 w2Var = w2.f69539a;
        return new KSerializer[]{a.t(w2Var), a.t(w2Var), a.t(w2Var), a.t(w2Var), a.t(w2Var)};
    }

    @Override // st.c
    @NotNull
    public ConfigPayload.Endpoints deserialize(@NotNull Decoder decoder) {
        Object obj;
        int i10;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        Object obj6 = null;
        if (beginStructure.decodeSequentially()) {
            w2 w2Var = w2.f69539a;
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, w2Var, null);
            obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, w2Var, null);
            Object decodeNullableSerializableElement = beginStructure.decodeNullableSerializableElement(descriptor2, 2, w2Var, null);
            obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, w2Var, null);
            obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, w2Var, null);
            obj = decodeNullableSerializableElement;
            i10 = 31;
        } else {
            boolean z10 = true;
            int i11 = 0;
            Object obj7 = null;
            obj = null;
            Object obj8 = null;
            Object obj9 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z10 = false;
                } else if (decodeElementIndex == 0) {
                    obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, w2.f69539a, obj6);
                    i11 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, w2.f69539a, obj7);
                    i11 |= 2;
                } else if (decodeElementIndex == 2) {
                    obj = beginStructure.decodeNullableSerializableElement(descriptor2, 2, w2.f69539a, obj);
                    i11 |= 4;
                } else if (decodeElementIndex == 3) {
                    obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, w2.f69539a, obj8);
                    i11 |= 8;
                } else if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj9 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, w2.f69539a, obj9);
                    i11 |= 16;
                }
            }
            i10 = i11;
            obj2 = obj6;
            obj3 = obj7;
            obj4 = obj8;
            obj5 = obj9;
        }
        beginStructure.endStructure(descriptor2);
        return new ConfigPayload.Endpoints(i10, (String) obj2, (String) obj3, (String) obj, (String) obj4, (String) obj5, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull ConfigPayload.Endpoints value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        ConfigPayload.Endpoints.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
