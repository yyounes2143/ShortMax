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
/* compiled from: AdPayload.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class AdPayload$WebViewSettings$$serializer implements m0<AdPayload.WebViewSettings> {
    @NotNull
    public static final AdPayload$WebViewSettings$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        AdPayload$WebViewSettings$$serializer adPayload$WebViewSettings$$serializer = new AdPayload$WebViewSettings$$serializer();
        INSTANCE = adPayload$WebViewSettings$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.AdPayload.WebViewSettings", adPayload$WebViewSettings$$serializer, 2);
        h2Var.o("allow_file_access_from_file_urls", true);
        h2Var.o("allow_universal_access_from_file_urls", true);
        descriptor = h2Var;
    }

    private AdPayload$WebViewSettings$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        i iVar = i.f69441a;
        return new KSerializer[]{a.t(iVar), a.t(iVar)};
    }

    @Override // st.c
    @NotNull
    public AdPayload.WebViewSettings deserialize(@NotNull Decoder decoder) {
        Object obj;
        int i10;
        Object obj2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            i iVar = i.f69441a;
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, iVar, null);
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 1, iVar, null);
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
                    obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, i.f69441a, obj3);
                    i11 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj = beginStructure.decodeNullableSerializableElement(descriptor2, 1, i.f69441a, obj);
                    i11 |= 2;
                }
            }
            i10 = i11;
            obj2 = obj3;
        }
        beginStructure.endStructure(descriptor2);
        return new AdPayload.WebViewSettings(i10, (Boolean) obj2, (Boolean) obj, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull AdPayload.WebViewSettings value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        AdPayload.WebViewSettings.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
