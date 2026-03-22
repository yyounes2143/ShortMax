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
import vt.w2;
/* compiled from: AdPayload.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class AdPayload$PlacementAdUnit$$serializer implements m0<AdPayload.PlacementAdUnit> {
    @NotNull
    public static final AdPayload$PlacementAdUnit$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        AdPayload$PlacementAdUnit$$serializer adPayload$PlacementAdUnit$$serializer = new AdPayload$PlacementAdUnit$$serializer();
        INSTANCE = adPayload$PlacementAdUnit$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.AdPayload.PlacementAdUnit", adPayload$PlacementAdUnit$$serializer, 2);
        h2Var.o("placement_reference_id", true);
        h2Var.o("ad_markup", true);
        descriptor = h2Var;
    }

    private AdPayload$PlacementAdUnit$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{a.t(w2.f69539a), a.t(AdPayload$AdUnit$$serializer.INSTANCE)};
    }

    @Override // st.c
    @NotNull
    public AdPayload.PlacementAdUnit deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        int i10;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 0, w2.f69539a, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, AdPayload$AdUnit$$serializer.INSTANCE, null);
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
                    obj = beginStructure.decodeNullableSerializableElement(descriptor2, 0, w2.f69539a, obj);
                    i11 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, AdPayload$AdUnit$$serializer.INSTANCE, obj3);
                    i11 |= 2;
                }
            }
            obj2 = obj3;
            i10 = i11;
        }
        beginStructure.endStructure(descriptor2);
        return new AdPayload.PlacementAdUnit(i10, (String) obj, (AdPayload.AdUnit) obj2, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull AdPayload.PlacementAdUnit value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        AdPayload.PlacementAdUnit.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
