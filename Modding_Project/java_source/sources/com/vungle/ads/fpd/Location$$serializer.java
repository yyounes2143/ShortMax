package com.vungle.ads.fpd;

import com.appsflyer.AdRevenueScheme;
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
import vt.v0;
import vt.w2;
/* compiled from: Location.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class Location$$serializer implements m0<Location> {
    @NotNull
    public static final Location$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        Location$$serializer location$$serializer = new Location$$serializer();
        INSTANCE = location$$serializer;
        h2 h2Var = new h2("com.vungle.ads.fpd.Location", location$$serializer, 3);
        h2Var.o(AdRevenueScheme.COUNTRY, true);
        h2Var.o("region_state", true);
        h2Var.o("dma", true);
        descriptor = h2Var;
    }

    private Location$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        w2 w2Var = w2.f69539a;
        return new KSerializer[]{a.t(w2Var), a.t(w2Var), a.t(v0.f69529a)};
    }

    @Override // st.c
    @NotNull
    public Location deserialize(@NotNull Decoder decoder) {
        int i10;
        Object obj;
        Object obj2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        Object obj3 = null;
        if (beginStructure.decodeSequentially()) {
            w2 w2Var = w2.f69539a;
            Object decodeNullableSerializableElement = beginStructure.decodeNullableSerializableElement(descriptor2, 0, w2Var, null);
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 1, w2Var, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, v0.f69529a, null);
            obj3 = decodeNullableSerializableElement;
            i10 = 7;
        } else {
            boolean z10 = true;
            int i11 = 0;
            Object obj4 = null;
            Object obj5 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z10 = false;
                } else if (decodeElementIndex == 0) {
                    obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, w2.f69539a, obj3);
                    i11 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, w2.f69539a, obj4);
                    i11 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, v0.f69529a, obj5);
                    i11 |= 4;
                }
            }
            i10 = i11;
            obj = obj4;
            obj2 = obj5;
        }
        beginStructure.endStructure(descriptor2);
        return new Location(i10, (String) obj3, (String) obj, (Integer) obj2, null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull Location value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        Location.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
