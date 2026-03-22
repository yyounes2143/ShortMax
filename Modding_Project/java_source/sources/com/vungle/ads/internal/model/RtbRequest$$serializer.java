package com.vungle.ads.internal.model;

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
/* compiled from: RtbToken.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class RtbRequest$$serializer implements m0<RtbRequest> {
    @NotNull
    public static final RtbRequest$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        RtbRequest$$serializer rtbRequest$$serializer = new RtbRequest$$serializer();
        INSTANCE = rtbRequest$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.RtbRequest", rtbRequest$$serializer, 1);
        h2Var.o("sdk_user_agent", true);
        descriptor = h2Var;
    }

    private RtbRequest$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{a.t(w2.f69539a)};
    }

    @Override // st.c
    @NotNull
    public RtbRequest deserialize(@NotNull Decoder decoder) {
        Object obj;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        int i10 = 1;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 0, w2.f69539a, null);
        } else {
            boolean z10 = true;
            int i11 = 0;
            obj = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z10 = false;
                } else if (decodeElementIndex != 0) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj = beginStructure.decodeNullableSerializableElement(descriptor2, 0, w2.f69539a, obj);
                    i11 = 1;
                }
            }
            i10 = i11;
        }
        beginStructure.endStructure(descriptor2);
        return new RtbRequest(i10, (String) obj, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull RtbRequest value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        RtbRequest.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
