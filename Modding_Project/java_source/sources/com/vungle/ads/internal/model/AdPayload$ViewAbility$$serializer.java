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
import vt.m0;
import vt.r2;
/* compiled from: AdPayload.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class AdPayload$ViewAbility$$serializer implements m0<AdPayload.ViewAbility> {
    @NotNull
    public static final AdPayload$ViewAbility$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        AdPayload$ViewAbility$$serializer adPayload$ViewAbility$$serializer = new AdPayload$ViewAbility$$serializer();
        INSTANCE = adPayload$ViewAbility$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.AdPayload.ViewAbility", adPayload$ViewAbility$$serializer, 1);
        h2Var.o("om", true);
        descriptor = h2Var;
    }

    private AdPayload$ViewAbility$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{a.t(AdPayload$ViewAbilityInfo$$serializer.INSTANCE)};
    }

    @Override // st.c
    @NotNull
    public AdPayload.ViewAbility deserialize(@NotNull Decoder decoder) {
        Object obj;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        int i10 = 1;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 0, AdPayload$ViewAbilityInfo$$serializer.INSTANCE, null);
        } else {
            boolean z10 = true;
            int i11 = 0;
            obj = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z10 = false;
                } else if (decodeElementIndex != 0) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj = beginStructure.decodeNullableSerializableElement(descriptor2, 0, AdPayload$ViewAbilityInfo$$serializer.INSTANCE, obj);
                    i11 = 1;
                }
            }
            i10 = i11;
        }
        beginStructure.endStructure(descriptor2);
        return new AdPayload.ViewAbility(i10, (AdPayload.ViewAbilityInfo) obj, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull AdPayload.ViewAbility value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        AdPayload.ViewAbility.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
