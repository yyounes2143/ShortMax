package com.vungle.ads.internal.model;

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
import vt.g1;
import vt.h2;
import vt.m0;
import vt.w2;
/* compiled from: CommonRequestBody.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class CommonRequestBody$GDPR$$serializer implements m0<CommonRequestBody.GDPR> {
    @NotNull
    public static final CommonRequestBody$GDPR$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        CommonRequestBody$GDPR$$serializer commonRequestBody$GDPR$$serializer = new CommonRequestBody$GDPR$$serializer();
        INSTANCE = commonRequestBody$GDPR$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.CommonRequestBody.GDPR", commonRequestBody$GDPR$$serializer, 4);
        h2Var.o("consent_status", false);
        h2Var.o("consent_source", false);
        h2Var.o("consent_timestamp", false);
        h2Var.o("consent_message_version", false);
        descriptor = h2Var;
    }

    private CommonRequestBody$GDPR$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        w2 w2Var = w2.f69539a;
        return new KSerializer[]{w2Var, w2Var, g1.f69417a, w2Var};
    }

    @Override // st.c
    @NotNull
    public CommonRequestBody.GDPR deserialize(@NotNull Decoder decoder) {
        String str;
        String str2;
        int i10;
        String str3;
        long j10;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            String decodeStringElement = beginStructure.decodeStringElement(descriptor2, 0);
            String decodeStringElement2 = beginStructure.decodeStringElement(descriptor2, 1);
            long decodeLongElement = beginStructure.decodeLongElement(descriptor2, 2);
            str = decodeStringElement;
            str2 = beginStructure.decodeStringElement(descriptor2, 3);
            i10 = 15;
            str3 = decodeStringElement2;
            j10 = decodeLongElement;
        } else {
            String str4 = null;
            String str5 = null;
            boolean z10 = true;
            long j11 = 0;
            String str6 = null;
            int i11 = 0;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z10 = false;
                } else if (decodeElementIndex == 0) {
                    str4 = beginStructure.decodeStringElement(descriptor2, 0);
                    i11 |= 1;
                } else if (decodeElementIndex == 1) {
                    str5 = beginStructure.decodeStringElement(descriptor2, 1);
                    i11 |= 2;
                } else if (decodeElementIndex == 2) {
                    j11 = beginStructure.decodeLongElement(descriptor2, 2);
                    i11 |= 4;
                } else if (decodeElementIndex != 3) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    str6 = beginStructure.decodeStringElement(descriptor2, 3);
                    i11 |= 8;
                }
            }
            str = str4;
            str2 = str6;
            i10 = i11;
            str3 = str5;
            j10 = j11;
        }
        beginStructure.endStructure(descriptor2);
        return new CommonRequestBody.GDPR(i10, str, str3, j10, str2, null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull CommonRequestBody.GDPR value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        CommonRequestBody.GDPR.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
