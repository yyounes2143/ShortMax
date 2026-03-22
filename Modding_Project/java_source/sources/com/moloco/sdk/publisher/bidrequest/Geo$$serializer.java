package com.moloco.sdk.publisher.bidrequest;

import androidx.compose.runtime.internal.StabilityInferred;
import com.appsflyer.AdRevenueScheme;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
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
import vt.l0;
import vt.m0;
import vt.w2;
@StabilityInferred(parameters = 0)
@c
@Metadata
/* loaded from: classes6.dex */
public /* synthetic */ class Geo$$serializer implements m0<Geo> {
    public static final int $stable;
    @NotNull
    public static final Geo$$serializer INSTANCE;
    @NotNull
    private static final SerialDescriptor descriptor;

    static {
        Geo$$serializer geo$$serializer = new Geo$$serializer();
        INSTANCE = geo$$serializer;
        $stable = 8;
        h2 h2Var = new h2("com.moloco.sdk.publisher.bidrequest.Geo", geo$$serializer, 6);
        h2Var.o("city", false);
        h2Var.o(AdRevenueScheme.COUNTRY, false);
        h2Var.o(TtmlNode.TAG_REGION, false);
        h2Var.o("zipCode", false);
        h2Var.o("latitude", false);
        h2Var.o("longitude", false);
        descriptor = h2Var;
    }

    private Geo$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public final KSerializer<?>[] childSerializers() {
        w2 w2Var = w2.f69539a;
        KSerializer<?> t10 = a.t(w2Var);
        KSerializer<?> t11 = a.t(w2Var);
        KSerializer<?> t12 = a.t(w2Var);
        KSerializer<?> t13 = a.t(w2Var);
        l0 l0Var = l0.f69469a;
        return new KSerializer[]{t10, t11, t12, t13, a.t(l0Var), a.t(l0Var)};
    }

    @Override // st.c
    @NotNull
    public final Geo deserialize(@NotNull Decoder decoder) {
        int i10;
        String str;
        String str2;
        String str3;
        String str4;
        Float f10;
        Float f11;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
        int i11 = 5;
        String str5 = null;
        if (beginStructure.decodeSequentially()) {
            w2 w2Var = w2.f69539a;
            l0 l0Var = l0.f69469a;
            str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, w2Var, null);
            f11 = (Float) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, l0Var, null);
            i10 = 63;
            f10 = (Float) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, l0Var, null);
            str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, w2Var, null);
            str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, w2Var, null);
            str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, w2Var, null);
        } else {
            boolean z10 = true;
            int i12 = 0;
            String str6 = null;
            String str7 = null;
            String str8 = null;
            Float f12 = null;
            Float f13 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                switch (decodeElementIndex) {
                    case -1:
                        z10 = false;
                        i11 = 5;
                    case 0:
                        str5 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, w2.f69539a, str5);
                        i12 |= 1;
                        i11 = 5;
                    case 1:
                        str6 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, w2.f69539a, str6);
                        i12 |= 2;
                    case 2:
                        str7 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, w2.f69539a, str7);
                        i12 |= 4;
                    case 3:
                        str8 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, w2.f69539a, str8);
                        i12 |= 8;
                    case 4:
                        f12 = (Float) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, l0.f69469a, f12);
                        i12 |= 16;
                    case 5:
                        f13 = (Float) beginStructure.decodeNullableSerializableElement(serialDescriptor, i11, l0.f69469a, f13);
                        i12 |= 32;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            i10 = i12;
            str = str5;
            str2 = str6;
            str3 = str7;
            str4 = str8;
            f10 = f12;
            f11 = f13;
        }
        beginStructure.endStructure(serialDescriptor);
        return new Geo(i10, str, str2, str3, str4, f10, f11, null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public final void serialize(@NotNull Encoder encoder, @NotNull Geo value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        d beginStructure = encoder.beginStructure(serialDescriptor);
        Geo.write$Self$moloco_sdk_release(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
