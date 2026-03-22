package com.vungle.ads.internal.model;

import com.bykv.vk.openvk.preload.falconx.statistic.StatisticData;
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
import vt.r2;
import vt.w2;
/* compiled from: UnclosedAd.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class UnclosedAd$$serializer implements m0<UnclosedAd> {
    @NotNull
    public static final UnclosedAd$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        UnclosedAd$$serializer unclosedAd$$serializer = new UnclosedAd$$serializer();
        INSTANCE = unclosedAd$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.UnclosedAd", unclosedAd$$serializer, 2);
        h2Var.o("107", false);
        h2Var.o(StatisticData.ERROR_CODE_IO_ERROR, true);
        descriptor = h2Var;
    }

    private UnclosedAd$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        w2 w2Var = w2.f69539a;
        return new KSerializer[]{w2Var, w2Var};
    }

    @Override // st.c
    @NotNull
    public UnclosedAd deserialize(@NotNull Decoder decoder) {
        String str;
        String str2;
        int i10;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            str = beginStructure.decodeStringElement(descriptor2, 0);
            str2 = beginStructure.decodeStringElement(descriptor2, 1);
            i10 = 3;
        } else {
            boolean z10 = true;
            int i11 = 0;
            str = null;
            String str3 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z10 = false;
                } else if (decodeElementIndex == 0) {
                    str = beginStructure.decodeStringElement(descriptor2, 0);
                    i11 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    str3 = beginStructure.decodeStringElement(descriptor2, 1);
                    i11 |= 2;
                }
            }
            str2 = str3;
            i10 = i11;
        }
        beginStructure.endStructure(descriptor2);
        return new UnclosedAd(i10, str, str2, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull UnclosedAd value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        UnclosedAd.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
