package com.vungle.ads.internal.model;

import com.vungle.ads.internal.model.AdPayload;
import java.util.Map;
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
import vt.a1;
import vt.h2;
import vt.m0;
import vt.r2;
import vt.w2;
/* compiled from: AdPayload.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class AdPayload$TemplateSettings$$serializer implements m0<AdPayload.TemplateSettings> {
    @NotNull
    public static final AdPayload$TemplateSettings$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        AdPayload$TemplateSettings$$serializer adPayload$TemplateSettings$$serializer = new AdPayload$TemplateSettings$$serializer();
        INSTANCE = adPayload$TemplateSettings$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.AdPayload.TemplateSettings", adPayload$TemplateSettings$$serializer, 2);
        h2Var.o("normal_replacements", true);
        h2Var.o("cacheable_replacements", true);
        descriptor = h2Var;
    }

    private AdPayload$TemplateSettings$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        w2 w2Var = w2.f69539a;
        return new KSerializer[]{a.t(new a1(w2Var, w2Var)), a.t(new a1(w2Var, AdPayload$CacheableReplacement$$serializer.INSTANCE))};
    }

    @Override // st.c
    @NotNull
    public AdPayload.TemplateSettings deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        int i10;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            w2 w2Var = w2.f69539a;
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 0, new a1(w2Var, w2Var), null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, new a1(w2Var, AdPayload$CacheableReplacement$$serializer.INSTANCE), null);
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
                    w2 w2Var2 = w2.f69539a;
                    obj = beginStructure.decodeNullableSerializableElement(descriptor2, 0, new a1(w2Var2, w2Var2), obj);
                    i11 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, new a1(w2.f69539a, AdPayload$CacheableReplacement$$serializer.INSTANCE), obj3);
                    i11 |= 2;
                }
            }
            obj2 = obj3;
            i10 = i11;
        }
        beginStructure.endStructure(descriptor2);
        return new AdPayload.TemplateSettings(i10, (Map) obj, (Map) obj2, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull AdPayload.TemplateSettings value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        AdPayload.TemplateSettings.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
