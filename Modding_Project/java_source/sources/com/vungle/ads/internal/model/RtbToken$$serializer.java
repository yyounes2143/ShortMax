package com.vungle.ads.internal.model;

import com.vungle.ads.internal.model.CommonRequestBody;
import com.vungle.ads.internal.ui.AdActivity;
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
/* compiled from: RtbToken.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class RtbToken$$serializer implements m0<RtbToken> {
    @NotNull
    public static final RtbToken$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        RtbToken$$serializer rtbToken$$serializer = new RtbToken$$serializer();
        INSTANCE = rtbToken$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.RtbToken", rtbToken$$serializer, 5);
        h2Var.o("device", false);
        h2Var.o("user", true);
        h2Var.o("ext", true);
        h2Var.o(AdActivity.REQUEST_KEY_EXTRA, true);
        h2Var.o("ordinal_view", false);
        descriptor = h2Var;
    }

    private RtbToken$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{DeviceNode$$serializer.INSTANCE, a.t(CommonRequestBody$User$$serializer.INSTANCE), a.t(CommonRequestBody$RequestExt$$serializer.INSTANCE), a.t(RtbRequest$$serializer.INSTANCE), v0.f69529a};
    }

    @Override // st.c
    @NotNull
    public RtbToken deserialize(@NotNull Decoder decoder) {
        Object obj;
        int i10;
        Object obj2;
        Object obj3;
        int i11;
        Object obj4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 0, DeviceNode$$serializer.INSTANCE, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, CommonRequestBody$User$$serializer.INSTANCE, null);
            Object decodeNullableSerializableElement = beginStructure.decodeNullableSerializableElement(descriptor2, 2, CommonRequestBody$RequestExt$$serializer.INSTANCE, null);
            obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, RtbRequest$$serializer.INSTANCE, null);
            i11 = beginStructure.decodeIntElement(descriptor2, 4);
            obj = decodeNullableSerializableElement;
            i10 = 31;
        } else {
            boolean z10 = true;
            int i12 = 0;
            Object obj5 = null;
            Object obj6 = null;
            obj = null;
            Object obj7 = null;
            int i13 = 0;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z10 = false;
                } else if (decodeElementIndex == 0) {
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 0, DeviceNode$$serializer.INSTANCE, obj5);
                    i13 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, CommonRequestBody$User$$serializer.INSTANCE, obj6);
                    i13 |= 2;
                } else if (decodeElementIndex == 2) {
                    obj = beginStructure.decodeNullableSerializableElement(descriptor2, 2, CommonRequestBody$RequestExt$$serializer.INSTANCE, obj);
                    i13 |= 4;
                } else if (decodeElementIndex == 3) {
                    obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, RtbRequest$$serializer.INSTANCE, obj7);
                    i13 |= 8;
                } else if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    i12 = beginStructure.decodeIntElement(descriptor2, 4);
                    i13 |= 16;
                }
            }
            i10 = i13;
            obj2 = obj6;
            obj3 = obj7;
            i11 = i12;
            obj4 = obj5;
        }
        beginStructure.endStructure(descriptor2);
        return new RtbToken(i10, (DeviceNode) obj4, (CommonRequestBody.User) obj2, (CommonRequestBody.RequestExt) obj, (RtbRequest) obj3, i11, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull RtbToken value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        RtbToken.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
