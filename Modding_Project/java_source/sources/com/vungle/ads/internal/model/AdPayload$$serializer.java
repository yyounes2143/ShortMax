package com.vungle.ads.internal.model;

import com.mbridge.msdk.foundation.entity.b;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.encoding.d;
import ms.c;
import org.jetbrains.annotations.NotNull;
import tt.a;
import vt.a1;
import vt.f;
import vt.h2;
import vt.i;
import vt.m0;
import vt.w2;
/* compiled from: AdPayload.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class AdPayload$$serializer implements m0<AdPayload> {
    @NotNull
    public static final AdPayload$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        AdPayload$$serializer adPayload$$serializer = new AdPayload$$serializer();
        INSTANCE = adPayload$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.AdPayload", adPayload$$serializer, 5);
        h2Var.o(b.JSON_KEY_ADS, true);
        h2Var.o("config", true);
        h2Var.o("mraidFiles", true);
        h2Var.o("incentivizedTextSettings", true);
        h2Var.o("assetsFullyDownloaded", true);
        descriptor = h2Var;
    }

    private AdPayload$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        KSerializer<?> t10 = a.t(new f(AdPayload$PlacementAdUnit$$serializer.INSTANCE));
        KSerializer<?> t11 = a.t(ConfigPayload$$serializer.INSTANCE);
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConcurrentHashMap.class);
        w2 w2Var = w2.f69539a;
        return new KSerializer[]{t10, t11, new st.b(orCreateKotlinClass, null, new KSerializer[]{w2Var, w2Var}), new a1(w2Var, w2Var), i.f69441a};
    }

    @Override // st.c
    @NotNull
    public AdPayload deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        boolean z10;
        int i10;
        Object obj4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        int i11 = 3;
        int i12 = 1;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 0, new f(AdPayload$PlacementAdUnit$$serializer.INSTANCE), null);
            obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, ConfigPayload$$serializer.INSTANCE, null);
            KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConcurrentHashMap.class);
            w2 w2Var = w2.f69539a;
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 2, new st.b(orCreateKotlinClass, null, new KSerializer[]{w2Var, w2Var}), null);
            obj3 = beginStructure.decodeSerializableElement(descriptor2, 3, new a1(w2Var, w2Var), null);
            i10 = 31;
            z10 = beginStructure.decodeBooleanElement(descriptor2, 4);
        } else {
            boolean z11 = true;
            boolean z12 = false;
            int i13 = 0;
            obj = null;
            Object obj5 = null;
            Object obj6 = null;
            Object obj7 = null;
            while (z11) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z11 = false;
                } else if (decodeElementIndex == 0) {
                    int i14 = i12;
                    obj = beginStructure.decodeNullableSerializableElement(descriptor2, 0, new f(AdPayload$PlacementAdUnit$$serializer.INSTANCE), obj);
                    i13 |= i14;
                    i11 = 3;
                    i12 = i14;
                } else if (decodeElementIndex == i12) {
                    obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, ConfigPayload$$serializer.INSTANCE, obj7);
                    i13 |= 2;
                    i12 = 1;
                    i11 = 3;
                } else if (decodeElementIndex == 2) {
                    KClass orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(ConcurrentHashMap.class);
                    KSerializer[] kSerializerArr = new KSerializer[2];
                    w2 w2Var2 = w2.f69539a;
                    kSerializerArr[0] = w2Var2;
                    kSerializerArr[i12] = w2Var2;
                    obj5 = beginStructure.decodeSerializableElement(descriptor2, 2, new st.b(orCreateKotlinClass2, null, kSerializerArr), obj5);
                    i13 |= 4;
                    i11 = 3;
                    i12 = 1;
                } else if (decodeElementIndex == i11) {
                    w2 w2Var3 = w2.f69539a;
                    obj6 = beginStructure.decodeSerializableElement(descriptor2, i11, new a1(w2Var3, w2Var3), obj6);
                    i13 |= 8;
                } else if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    z12 = beginStructure.decodeBooleanElement(descriptor2, 4);
                    i13 |= 16;
                }
            }
            obj2 = obj5;
            obj3 = obj6;
            z10 = z12;
            i10 = i13;
            obj4 = obj7;
        }
        beginStructure.endStructure(descriptor2);
        return new AdPayload(i10, (List) obj, (ConfigPayload) obj4, (ConcurrentHashMap) obj2, (Map) obj3, z10, null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull AdPayload value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        AdPayload.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
