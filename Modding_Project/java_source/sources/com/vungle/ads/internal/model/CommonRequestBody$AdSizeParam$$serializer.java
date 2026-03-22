package com.vungle.ads.internal.model;

import com.ss.ttvideoengine.superresolution.SRStrategy;
import com.vungle.ads.internal.model.CommonRequestBody;
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
import vt.h2;
import vt.m0;
import vt.v0;
/* compiled from: CommonRequestBody.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class CommonRequestBody$AdSizeParam$$serializer implements m0<CommonRequestBody.AdSizeParam> {
    @NotNull
    public static final CommonRequestBody$AdSizeParam$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        CommonRequestBody$AdSizeParam$$serializer commonRequestBody$AdSizeParam$$serializer = new CommonRequestBody$AdSizeParam$$serializer();
        INSTANCE = commonRequestBody$AdSizeParam$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.CommonRequestBody.AdSizeParam", commonRequestBody$AdSizeParam$$serializer, 2);
        h2Var.o(SRStrategy.MEDIAINFO_KEY_WIDTH, false);
        h2Var.o("h", false);
        descriptor = h2Var;
    }

    private CommonRequestBody$AdSizeParam$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        v0 v0Var = v0.f69529a;
        return new KSerializer[]{v0Var, v0Var};
    }

    @Override // st.c
    @NotNull
    public CommonRequestBody.AdSizeParam deserialize(@NotNull Decoder decoder) {
        int i10;
        int i11;
        int i12;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            i10 = beginStructure.decodeIntElement(descriptor2, 0);
            i11 = beginStructure.decodeIntElement(descriptor2, 1);
            i12 = 3;
        } else {
            boolean z10 = true;
            i10 = 0;
            int i13 = 0;
            int i14 = 0;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z10 = false;
                } else if (decodeElementIndex == 0) {
                    i10 = beginStructure.decodeIntElement(descriptor2, 0);
                    i14 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    i13 = beginStructure.decodeIntElement(descriptor2, 1);
                    i14 |= 2;
                }
            }
            i11 = i13;
            i12 = i14;
        }
        beginStructure.endStructure(descriptor2);
        return new CommonRequestBody.AdSizeParam(i12, i10, i11, null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull CommonRequestBody.AdSizeParam value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        CommonRequestBody.AdSizeParam.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
