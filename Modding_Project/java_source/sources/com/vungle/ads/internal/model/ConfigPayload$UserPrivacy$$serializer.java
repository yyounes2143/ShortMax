package com.vungle.ads.internal.model;

import com.inmobi.sdk.InMobiSdk;
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
/* compiled from: ConfigPayload.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class ConfigPayload$UserPrivacy$$serializer implements m0<ConfigPayload.UserPrivacy> {
    @NotNull
    public static final ConfigPayload$UserPrivacy$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        ConfigPayload$UserPrivacy$$serializer configPayload$UserPrivacy$$serializer = new ConfigPayload$UserPrivacy$$serializer();
        INSTANCE = configPayload$UserPrivacy$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.ConfigPayload.UserPrivacy", configPayload$UserPrivacy$$serializer, 2);
        h2Var.o(InMobiSdk.IM_GDPR_CONSENT_GDPR_APPLIES, true);
        h2Var.o("iab", true);
        descriptor = h2Var;
    }

    private ConfigPayload$UserPrivacy$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{a.t(ConfigPayload$GDPRSettings$$serializer.INSTANCE), a.t(ConfigPayload$IABSettings$$serializer.INSTANCE)};
    }

    @Override // st.c
    @NotNull
    public ConfigPayload.UserPrivacy deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        int i10;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 0, ConfigPayload$GDPRSettings$$serializer.INSTANCE, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, ConfigPayload$IABSettings$$serializer.INSTANCE, null);
            i10 = 3;
        } else {
            boolean z10 = true;
            int i11 = 0;
            obj = null;
            Object obj3 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z10 = false;
                } else if (decodeElementIndex == 0) {
                    obj = beginStructure.decodeNullableSerializableElement(descriptor2, 0, ConfigPayload$GDPRSettings$$serializer.INSTANCE, obj);
                    i11 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, ConfigPayload$IABSettings$$serializer.INSTANCE, obj3);
                    i11 |= 2;
                }
            }
            obj2 = obj3;
            i10 = i11;
        }
        beginStructure.endStructure(descriptor2);
        return new ConfigPayload.UserPrivacy(i10, (ConfigPayload.GDPRSettings) obj, (ConfigPayload.IABSettings) obj2, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull ConfigPayload.UserPrivacy value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        ConfigPayload.UserPrivacy.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
