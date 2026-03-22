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
import vt.g1;
import vt.h2;
import vt.i;
import vt.m0;
import vt.r2;
import vt.v0;
/* compiled from: ConfigPayload.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class ConfigPayload$CleverCache$$serializer implements m0<ConfigPayload.CleverCache> {
    @NotNull
    public static final ConfigPayload$CleverCache$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        ConfigPayload$CleverCache$$serializer configPayload$CleverCache$$serializer = new ConfigPayload$CleverCache$$serializer();
        INSTANCE = configPayload$CleverCache$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.ConfigPayload.CleverCache", configPayload$CleverCache$$serializer, 3);
        h2Var.o("enabled", true);
        h2Var.o("disk_size", true);
        h2Var.o("disk_percentage", true);
        descriptor = h2Var;
    }

    private ConfigPayload$CleverCache$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{a.t(i.f69441a), a.t(g1.f69417a), a.t(v0.f69529a)};
    }

    @Override // st.c
    @NotNull
    public ConfigPayload.CleverCache deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        int i10;
        Object obj3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        Object obj4 = null;
        if (beginStructure.decodeSequentially()) {
            obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, i.f69441a, null);
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 1, g1.f69417a, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, v0.f69529a, null);
            i10 = 7;
        } else {
            boolean z10 = true;
            int i11 = 0;
            Object obj5 = null;
            Object obj6 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z10 = false;
                } else if (decodeElementIndex == 0) {
                    obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, i.f69441a, obj4);
                    i11 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, g1.f69417a, obj5);
                    i11 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, v0.f69529a, obj6);
                    i11 |= 4;
                }
            }
            obj = obj5;
            obj2 = obj6;
            Object obj7 = obj4;
            i10 = i11;
            obj3 = obj7;
        }
        beginStructure.endStructure(descriptor2);
        return new ConfigPayload.CleverCache(i10, (Boolean) obj3, (Long) obj, (Integer) obj2, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull ConfigPayload.CleverCache value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        ConfigPayload.CleverCache.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
