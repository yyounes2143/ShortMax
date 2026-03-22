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
/* compiled from: ConfigPayload.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class ConfigPayload$AutoRedirect$$serializer implements m0<ConfigPayload.AutoRedirect> {
    @NotNull
    public static final ConfigPayload$AutoRedirect$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        ConfigPayload$AutoRedirect$$serializer configPayload$AutoRedirect$$serializer = new ConfigPayload$AutoRedirect$$serializer();
        INSTANCE = configPayload$AutoRedirect$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.ConfigPayload.AutoRedirect", configPayload$AutoRedirect$$serializer, 2);
        h2Var.o("allow_auto_redirect", true);
        h2Var.o("after_click_ms", true);
        descriptor = h2Var;
    }

    private ConfigPayload$AutoRedirect$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{a.t(i.f69441a), a.t(g1.f69417a)};
    }

    @Override // st.c
    @NotNull
    public ConfigPayload.AutoRedirect deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        int i10;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 0, i.f69441a, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, g1.f69417a, null);
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
                    obj = beginStructure.decodeNullableSerializableElement(descriptor2, 0, i.f69441a, obj);
                    i11 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, g1.f69417a, obj3);
                    i11 |= 2;
                }
            }
            obj2 = obj3;
            i10 = i11;
        }
        beginStructure.endStructure(descriptor2);
        return new ConfigPayload.AutoRedirect(i10, (Boolean) obj, (Long) obj2, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull ConfigPayload.AutoRedirect value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        ConfigPayload.AutoRedirect.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
