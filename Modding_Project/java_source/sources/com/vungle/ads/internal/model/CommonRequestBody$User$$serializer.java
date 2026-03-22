package com.vungle.ads.internal.model;

import com.inmobi.sdk.InMobiSdk;
import com.vungle.ads.fpd.FirstPartyData;
import com.vungle.ads.fpd.FirstPartyData$$serializer;
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
import tt.a;
import vt.h2;
import vt.m0;
import vt.r2;
/* compiled from: CommonRequestBody.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class CommonRequestBody$User$$serializer implements m0<CommonRequestBody.User> {
    @NotNull
    public static final CommonRequestBody$User$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        CommonRequestBody$User$$serializer commonRequestBody$User$$serializer = new CommonRequestBody$User$$serializer();
        INSTANCE = commonRequestBody$User$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.CommonRequestBody.User", commonRequestBody$User$$serializer, 5);
        h2Var.o(InMobiSdk.IM_GDPR_CONSENT_GDPR_APPLIES, true);
        h2Var.o("ccpa", true);
        h2Var.o("coppa", true);
        h2Var.o("fpd", true);
        h2Var.o("iab", true);
        descriptor = h2Var;
    }

    private CommonRequestBody$User$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{a.t(CommonRequestBody$GDPR$$serializer.INSTANCE), a.t(CommonRequestBody$CCPA$$serializer.INSTANCE), a.t(CommonRequestBody$COPPA$$serializer.INSTANCE), a.t(FirstPartyData$$serializer.INSTANCE), a.t(CommonRequestBody$IAB$$serializer.INSTANCE)};
    }

    @Override // st.c
    @NotNull
    public CommonRequestBody.User deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        int i10;
        Object obj5;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        Object obj6 = null;
        if (beginStructure.decodeSequentially()) {
            obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, CommonRequestBody$GDPR$$serializer.INSTANCE, null);
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 1, CommonRequestBody$CCPA$$serializer.INSTANCE, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, CommonRequestBody$COPPA$$serializer.INSTANCE, null);
            obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, FirstPartyData$$serializer.INSTANCE, null);
            obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, CommonRequestBody$IAB$$serializer.INSTANCE, null);
            i10 = 31;
        } else {
            boolean z10 = true;
            int i11 = 0;
            Object obj7 = null;
            Object obj8 = null;
            Object obj9 = null;
            Object obj10 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z10 = false;
                } else if (decodeElementIndex == 0) {
                    obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, CommonRequestBody$GDPR$$serializer.INSTANCE, obj6);
                    i11 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, CommonRequestBody$CCPA$$serializer.INSTANCE, obj7);
                    i11 |= 2;
                } else if (decodeElementIndex == 2) {
                    obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, CommonRequestBody$COPPA$$serializer.INSTANCE, obj8);
                    i11 |= 4;
                } else if (decodeElementIndex == 3) {
                    obj9 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, FirstPartyData$$serializer.INSTANCE, obj9);
                    i11 |= 8;
                } else if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj10 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, CommonRequestBody$IAB$$serializer.INSTANCE, obj10);
                    i11 |= 16;
                }
            }
            obj = obj7;
            obj2 = obj8;
            obj3 = obj9;
            obj4 = obj10;
            Object obj11 = obj6;
            i10 = i11;
            obj5 = obj11;
        }
        beginStructure.endStructure(descriptor2);
        return new CommonRequestBody.User(i10, (CommonRequestBody.GDPR) obj5, (CommonRequestBody.CCPA) obj, (CommonRequestBody.COPPA) obj2, (FirstPartyData) obj3, (CommonRequestBody.IAB) obj4, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull CommonRequestBody.User value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        CommonRequestBody.User.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
