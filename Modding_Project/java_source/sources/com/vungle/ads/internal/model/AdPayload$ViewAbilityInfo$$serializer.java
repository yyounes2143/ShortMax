package com.vungle.ads.internal.model;

import com.vungle.ads.internal.model.AdPayload;
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
/* compiled from: AdPayload.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class AdPayload$ViewAbilityInfo$$serializer implements m0<AdPayload.ViewAbilityInfo> {
    @NotNull
    public static final AdPayload$ViewAbilityInfo$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        AdPayload$ViewAbilityInfo$$serializer adPayload$ViewAbilityInfo$$serializer = new AdPayload$ViewAbilityInfo$$serializer();
        INSTANCE = adPayload$ViewAbilityInfo$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.AdPayload.ViewAbilityInfo", adPayload$ViewAbilityInfo$$serializer, 2);
        h2Var.o("is_enabled", true);
        h2Var.o("extra_vast", true);
        descriptor = h2Var;
    }

    private AdPayload$ViewAbilityInfo$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{a.t(i.f69441a), a.t(w2.f69539a)};
    }

    @Override // st.c
    @NotNull
    public AdPayload.ViewAbilityInfo deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        int i10;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 0, i.f69441a, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, w2.f69539a, null);
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
                    obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, w2.f69539a, obj3);
                    i11 |= 2;
                }
            }
            obj2 = obj3;
            i10 = i11;
        }
        beginStructure.endStructure(descriptor2);
        return new AdPayload.ViewAbilityInfo(i10, (Boolean) obj, (String) obj2, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull AdPayload.ViewAbilityInfo value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        AdPayload.ViewAbilityInfo.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
