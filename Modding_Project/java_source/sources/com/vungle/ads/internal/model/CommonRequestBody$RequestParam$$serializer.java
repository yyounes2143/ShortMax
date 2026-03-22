package com.vungle.ads.internal.model;

import com.vungle.ads.internal.model.CommonRequestBody;
import java.util.List;
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
import vt.f;
import vt.g1;
import vt.h2;
import vt.m0;
import vt.r2;
import vt.w2;
/* compiled from: CommonRequestBody.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class CommonRequestBody$RequestParam$$serializer implements m0<CommonRequestBody.RequestParam> {
    @NotNull
    public static final CommonRequestBody$RequestParam$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        CommonRequestBody$RequestParam$$serializer commonRequestBody$RequestParam$$serializer = new CommonRequestBody$RequestParam$$serializer();
        INSTANCE = commonRequestBody$RequestParam$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.CommonRequestBody.RequestParam", commonRequestBody$RequestParam$$serializer, 6);
        h2Var.o("placements", true);
        h2Var.o("ad_size", true);
        h2Var.o("ad_start_time", true);
        h2Var.o("app_id", true);
        h2Var.o("placement_reference_id", true);
        h2Var.o("user", true);
        descriptor = h2Var;
    }

    private CommonRequestBody$RequestParam$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        w2 w2Var = w2.f69539a;
        return new KSerializer[]{a.t(new f(w2Var)), a.t(CommonRequestBody$AdSizeParam$$serializer.INSTANCE), a.t(g1.f69417a), a.t(w2Var), a.t(w2Var), a.t(w2Var)};
    }

    @Override // st.c
    @NotNull
    public CommonRequestBody.RequestParam deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        int i10;
        Object obj6;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        int i11 = 5;
        Object obj7 = null;
        if (beginStructure.decodeSequentially()) {
            w2 w2Var = w2.f69539a;
            obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, new f(w2Var), null);
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 1, CommonRequestBody$AdSizeParam$$serializer.INSTANCE, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, g1.f69417a, null);
            obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, w2Var, null);
            obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, w2Var, null);
            obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, w2Var, null);
            i10 = 63;
        } else {
            boolean z10 = true;
            int i12 = 0;
            Object obj8 = null;
            Object obj9 = null;
            Object obj10 = null;
            Object obj11 = null;
            Object obj12 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z10 = false;
                        i11 = 5;
                    case 0:
                        obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, new f(w2.f69539a), obj7);
                        i12 |= 1;
                        i11 = 5;
                    case 1:
                        obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, CommonRequestBody$AdSizeParam$$serializer.INSTANCE, obj8);
                        i12 |= 2;
                    case 2:
                        obj9 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, g1.f69417a, obj9);
                        i12 |= 4;
                    case 3:
                        obj10 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, w2.f69539a, obj10);
                        i12 |= 8;
                    case 4:
                        obj11 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, w2.f69539a, obj11);
                        i12 |= 16;
                    case 5:
                        obj12 = beginStructure.decodeNullableSerializableElement(descriptor2, i11, w2.f69539a, obj12);
                        i12 |= 32;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            obj = obj8;
            obj2 = obj9;
            obj3 = obj10;
            obj4 = obj11;
            obj5 = obj12;
            Object obj13 = obj7;
            i10 = i12;
            obj6 = obj13;
        }
        beginStructure.endStructure(descriptor2);
        return new CommonRequestBody.RequestParam(i10, (List) obj6, (CommonRequestBody.AdSizeParam) obj, (Long) obj2, (String) obj3, (String) obj4, (String) obj5, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull CommonRequestBody.RequestParam value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        CommonRequestBody.RequestParam.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
