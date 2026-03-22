package com.vungle.ads.internal.model;

import com.ss.ttvideoengine.superresolution.SRStrategy;
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
import vt.v0;
/* compiled from: AdPayload.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class AdPayload$AdSizeInfo$$serializer implements m0<AdPayload.AdSizeInfo> {
    @NotNull
    public static final AdPayload$AdSizeInfo$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        AdPayload$AdSizeInfo$$serializer adPayload$AdSizeInfo$$serializer = new AdPayload$AdSizeInfo$$serializer();
        INSTANCE = adPayload$AdSizeInfo$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.AdPayload.AdSizeInfo", adPayload$AdSizeInfo$$serializer, 2);
        h2Var.o(SRStrategy.MEDIAINFO_KEY_WIDTH, true);
        h2Var.o("h", true);
        descriptor = h2Var;
    }

    private AdPayload$AdSizeInfo$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        v0 v0Var = v0.f69529a;
        return new KSerializer[]{a.t(v0Var), a.t(v0Var)};
    }

    @Override // st.c
    @NotNull
    public AdPayload.AdSizeInfo deserialize(@NotNull Decoder decoder) {
        Object obj;
        int i10;
        Object obj2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            v0 v0Var = v0.f69529a;
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, v0Var, null);
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 1, v0Var, null);
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
                    obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, v0.f69529a, obj3);
                    i11 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj = beginStructure.decodeNullableSerializableElement(descriptor2, 1, v0.f69529a, obj);
                    i11 |= 2;
                }
            }
            i10 = i11;
            obj2 = obj3;
        }
        beginStructure.endStructure(descriptor2);
        return new AdPayload.AdSizeInfo(i10, (Integer) obj2, (Integer) obj, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull AdPayload.AdSizeInfo value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        AdPayload.AdSizeInfo.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
