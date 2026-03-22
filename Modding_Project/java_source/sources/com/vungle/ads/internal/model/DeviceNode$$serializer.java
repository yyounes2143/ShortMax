package com.vungle.ads.internal.model;

import com.ss.ttvideoengine.superresolution.SRStrategy;
import com.vungle.ads.internal.model.DeviceNode;
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
import vt.w2;
/* compiled from: DeviceNode.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class DeviceNode$$serializer implements m0<DeviceNode> {
    @NotNull
    public static final DeviceNode$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        DeviceNode$$serializer deviceNode$$serializer = new DeviceNode$$serializer();
        INSTANCE = deviceNode$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.DeviceNode", deviceNode$$serializer, 11);
        h2Var.o("make", false);
        h2Var.o("model", false);
        h2Var.o("osv", false);
        h2Var.o("carrier", true);
        h2Var.o("os", false);
        h2Var.o(SRStrategy.MEDIAINFO_KEY_WIDTH, false);
        h2Var.o("h", false);
        h2Var.o("ua", true);
        h2Var.o("ifa", true);
        h2Var.o("lmt", true);
        h2Var.o("ext", true);
        descriptor = h2Var;
    }

    private DeviceNode$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        w2 w2Var = w2.f69539a;
        KSerializer<?> t10 = a.t(w2Var);
        v0 v0Var = v0.f69529a;
        return new KSerializer[]{w2Var, w2Var, w2Var, t10, w2Var, v0Var, v0Var, a.t(w2Var), a.t(w2Var), a.t(v0Var), a.t(DeviceNode$VungleExt$$serializer.INSTANCE)};
    }

    @Override // st.c
    @NotNull
    public DeviceNode deserialize(@NotNull Decoder decoder) {
        int i10;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        int i11;
        int i12;
        String str;
        String str2;
        String str3;
        String str4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        int i13 = 10;
        int i14 = 9;
        if (beginStructure.decodeSequentially()) {
            String decodeStringElement = beginStructure.decodeStringElement(descriptor2, 0);
            String decodeStringElement2 = beginStructure.decodeStringElement(descriptor2, 1);
            String decodeStringElement3 = beginStructure.decodeStringElement(descriptor2, 2);
            w2 w2Var = w2.f69539a;
            obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, w2Var, null);
            String decodeStringElement4 = beginStructure.decodeStringElement(descriptor2, 4);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 5);
            int decodeIntElement2 = beginStructure.decodeIntElement(descriptor2, 6);
            obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, w2Var, null);
            obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, w2Var, null);
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 9, v0.f69529a, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, DeviceNode$VungleExt$$serializer.INSTANCE, null);
            str = decodeStringElement;
            i10 = decodeIntElement2;
            i11 = decodeIntElement;
            str4 = decodeStringElement4;
            str3 = decodeStringElement3;
            str2 = decodeStringElement2;
            i12 = 2047;
        } else {
            boolean z10 = true;
            int i15 = 0;
            int i16 = 0;
            Object obj6 = null;
            Object obj7 = null;
            Object obj8 = null;
            Object obj9 = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            String str8 = null;
            Object obj10 = null;
            int i17 = 0;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z10 = false;
                        i13 = 10;
                        break;
                    case 0:
                        str5 = beginStructure.decodeStringElement(descriptor2, 0);
                        i16 |= 1;
                        i13 = 10;
                        i14 = 9;
                        break;
                    case 1:
                        str6 = beginStructure.decodeStringElement(descriptor2, 1);
                        i16 |= 2;
                        i13 = 10;
                        i14 = 9;
                        break;
                    case 2:
                        str7 = beginStructure.decodeStringElement(descriptor2, 2);
                        i16 |= 4;
                        i13 = 10;
                        i14 = 9;
                        break;
                    case 3:
                        obj10 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, w2.f69539a, obj10);
                        i16 |= 8;
                        i13 = 10;
                        i14 = 9;
                        break;
                    case 4:
                        str8 = beginStructure.decodeStringElement(descriptor2, 4);
                        i16 |= 16;
                        i13 = 10;
                        break;
                    case 5:
                        i17 = beginStructure.decodeIntElement(descriptor2, 5);
                        i16 |= 32;
                        break;
                    case 6:
                        i15 = beginStructure.decodeIntElement(descriptor2, 6);
                        i16 |= 64;
                        break;
                    case 7:
                        obj9 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, w2.f69539a, obj9);
                        i16 |= 128;
                        break;
                    case 8:
                        obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, w2.f69539a, obj8);
                        i16 |= 256;
                        break;
                    case 9:
                        obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, i14, v0.f69529a, obj6);
                        i16 |= 512;
                        break;
                    case 10:
                        obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, i13, DeviceNode$VungleExt$$serializer.INSTANCE, obj7);
                        i16 |= 1024;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            i10 = i15;
            obj = obj6;
            obj2 = obj7;
            obj3 = obj8;
            obj4 = obj9;
            obj5 = obj10;
            i11 = i17;
            i12 = i16;
            str = str5;
            str2 = str6;
            str3 = str7;
            str4 = str8;
        }
        beginStructure.endStructure(descriptor2);
        return new DeviceNode(i12, str, str2, str3, (String) obj5, str4, i11, i10, (String) obj4, (String) obj3, (Integer) obj, (DeviceNode.VungleExt) obj2, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull DeviceNode value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        DeviceNode.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
