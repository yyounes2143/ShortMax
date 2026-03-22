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
public final class AdPayload$CacheableReplacement$$serializer implements m0<AdPayload.CacheableReplacement> {
    @NotNull
    public static final AdPayload$CacheableReplacement$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        AdPayload$CacheableReplacement$$serializer adPayload$CacheableReplacement$$serializer = new AdPayload$CacheableReplacement$$serializer();
        INSTANCE = adPayload$CacheableReplacement$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.AdPayload.CacheableReplacement", adPayload$CacheableReplacement$$serializer, 3);
        h2Var.o("url", true);
        h2Var.o("extension", true);
        h2Var.o("required", true);
        descriptor = h2Var;
    }

    private AdPayload$CacheableReplacement$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        w2 w2Var = w2.f69539a;
        return new KSerializer[]{a.t(w2Var), a.t(w2Var), a.t(i.f69441a)};
    }

    @Override // st.c
    @NotNull
    public AdPayload.CacheableReplacement deserialize(@NotNull Decoder decoder) {
        int i10;
        Object obj;
        Object obj2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        Object obj3 = null;
        if (beginStructure.decodeSequentially()) {
            w2 w2Var = w2.f69539a;
            Object decodeNullableSerializableElement = beginStructure.decodeNullableSerializableElement(descriptor2, 0, w2Var, null);
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 1, w2Var, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, i.f69441a, null);
            obj3 = decodeNullableSerializableElement;
            i10 = 7;
        } else {
            boolean z10 = true;
            int i11 = 0;
            Object obj4 = null;
            Object obj5 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z10 = false;
                } else if (decodeElementIndex == 0) {
                    obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, w2.f69539a, obj3);
                    i11 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, w2.f69539a, obj4);
                    i11 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, i.f69441a, obj5);
                    i11 |= 4;
                }
            }
            i10 = i11;
            obj = obj4;
            obj2 = obj5;
        }
        beginStructure.endStructure(descriptor2);
        return new AdPayload.CacheableReplacement(i10, (String) obj3, (String) obj, (Boolean) obj2, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull AdPayload.CacheableReplacement value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        AdPayload.CacheableReplacement.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
