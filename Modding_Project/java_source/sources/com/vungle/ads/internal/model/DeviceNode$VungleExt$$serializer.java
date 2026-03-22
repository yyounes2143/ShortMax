package com.vungle.ads.internal.model;

import com.ss.ttm.player.MediaFormat;
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
import vt.g1;
import vt.h2;
import vt.i;
import vt.l0;
import vt.m0;
import vt.r2;
import vt.v0;
import vt.w2;
/* compiled from: DeviceNode.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class DeviceNode$VungleExt$$serializer implements m0<DeviceNode.VungleExt> {
    @NotNull
    public static final DeviceNode$VungleExt$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        DeviceNode$VungleExt$$serializer deviceNode$VungleExt$$serializer = new DeviceNode$VungleExt$$serializer();
        INSTANCE = deviceNode$VungleExt$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.DeviceNode.VungleExt", deviceNode$VungleExt$$serializer, 22);
        h2Var.o("is_google_play_services_available", true);
        h2Var.o("app_set_id", true);
        h2Var.o("app_set_id_scope", true);
        h2Var.o("battery_level", true);
        h2Var.o("battery_state", true);
        h2Var.o("battery_saver_enabled", true);
        h2Var.o("connection_type", true);
        h2Var.o("connection_type_detail", true);
        h2Var.o("locale", true);
        h2Var.o(MediaFormat.KEY_LANGUAGE, true);
        h2Var.o("time_zone", true);
        h2Var.o("volume_level", true);
        h2Var.o("sound_enabled", true);
        h2Var.o("is_tv", true);
        h2Var.o("sd_card_available", true);
        h2Var.o("is_sideload_enabled", true);
        h2Var.o("gaid", true);
        h2Var.o("amazon_advertising_id", true);
        h2Var.o("sit", true);
        h2Var.o("oit", true);
        h2Var.o("ort", true);
        h2Var.o("obt", true);
        descriptor = h2Var;
    }

    private DeviceNode$VungleExt$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        w2 w2Var = w2.f69539a;
        KSerializer<?> t10 = a.t(w2Var);
        v0 v0Var = v0.f69529a;
        KSerializer<?> t11 = a.t(v0Var);
        KSerializer<?> t12 = a.t(w2Var);
        KSerializer<?> t13 = a.t(w2Var);
        KSerializer<?> t14 = a.t(w2Var);
        KSerializer<?> t15 = a.t(w2Var);
        KSerializer<?> t16 = a.t(w2Var);
        KSerializer<?> t17 = a.t(w2Var);
        KSerializer<?> t18 = a.t(w2Var);
        KSerializer<?> t19 = a.t(w2Var);
        g1 g1Var = g1.f69417a;
        KSerializer<?> t20 = a.t(g1Var);
        KSerializer<?> t21 = a.t(g1Var);
        KSerializer<?> t22 = a.t(g1Var);
        KSerializer<?> t23 = a.t(g1Var);
        i iVar = i.f69441a;
        l0 l0Var = l0.f69469a;
        return new KSerializer[]{iVar, t10, t11, l0Var, t12, v0Var, t13, t14, t15, t16, t17, l0Var, v0Var, iVar, v0Var, iVar, t18, t19, t20, t21, t22, t23};
    }

    @Override // st.c
    @NotNull
    public DeviceNode.VungleExt deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        String str;
        int i10;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        boolean z10;
        float f10;
        Object obj9;
        Object obj10;
        int i11;
        boolean z11;
        boolean z12;
        int i12;
        int i13;
        float f11;
        Object obj11;
        Object obj12;
        Object obj13;
        Object obj14;
        int i14;
        Object obj15;
        String str2;
        Object obj16;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        int i15 = 0;
        if (beginStructure.decodeSequentially()) {
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 0);
            w2 w2Var = w2.f69539a;
            Object decodeNullableSerializableElement = beginStructure.decodeNullableSerializableElement(descriptor2, 1, w2Var, null);
            obj9 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, v0.f69529a, null);
            float decodeFloatElement = beginStructure.decodeFloatElement(descriptor2, 3);
            obj13 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, w2Var, null);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 5);
            obj10 = beginStructure.decodeNullableSerializableElement(descriptor2, 6, w2Var, null);
            obj11 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, w2Var, null);
            obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, w2Var, null);
            obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 9, w2Var, null);
            obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, w2Var, null);
            float decodeFloatElement2 = beginStructure.decodeFloatElement(descriptor2, 11);
            int decodeIntElement2 = beginStructure.decodeIntElement(descriptor2, 12);
            boolean decodeBooleanElement2 = beginStructure.decodeBooleanElement(descriptor2, 13);
            int decodeIntElement3 = beginStructure.decodeIntElement(descriptor2, 14);
            boolean decodeBooleanElement3 = beginStructure.decodeBooleanElement(descriptor2, 15);
            str = decodeNullableSerializableElement;
            Object decodeNullableSerializableElement2 = beginStructure.decodeNullableSerializableElement(descriptor2, 16, w2Var, null);
            Object decodeNullableSerializableElement3 = beginStructure.decodeNullableSerializableElement(descriptor2, 17, w2Var, null);
            g1 g1Var = g1.f69417a;
            obj5 = decodeNullableSerializableElement3;
            obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 18, g1Var, null);
            Object decodeNullableSerializableElement4 = beginStructure.decodeNullableSerializableElement(descriptor2, 19, g1Var, null);
            obj12 = beginStructure.decodeNullableSerializableElement(descriptor2, 20, g1Var, null);
            f10 = decodeFloatElement;
            i10 = 4194303;
            i11 = decodeIntElement2;
            i13 = decodeIntElement;
            f11 = decodeFloatElement2;
            z10 = decodeBooleanElement3;
            i12 = decodeIntElement3;
            z12 = decodeBooleanElement2;
            z11 = decodeBooleanElement;
            obj = decodeNullableSerializableElement4;
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 21, g1Var, null);
            obj3 = decodeNullableSerializableElement2;
        } else {
            obj = null;
            boolean z13 = true;
            Object obj17 = null;
            Object obj18 = null;
            Object obj19 = null;
            Object obj20 = null;
            Object obj21 = null;
            obj2 = null;
            Object obj22 = null;
            Object obj23 = null;
            Object obj24 = null;
            Object obj25 = null;
            Object obj26 = null;
            String str3 = null;
            boolean z14 = false;
            int i16 = 0;
            boolean z15 = false;
            boolean z16 = false;
            int i17 = 0;
            int i18 = 0;
            float f12 = 0.0f;
            float f13 = 0.0f;
            Object obj27 = null;
            while (z13) {
                Object obj28 = obj17;
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        obj15 = obj21;
                        str2 = str3;
                        z13 = false;
                        obj17 = obj28;
                        str3 = str2;
                        obj21 = obj15;
                        break;
                    case 0:
                        obj15 = obj21;
                        str2 = str3;
                        z15 = beginStructure.decodeBooleanElement(descriptor2, 0);
                        i15 |= 1;
                        obj17 = obj28;
                        obj18 = obj18;
                        str3 = str2;
                        obj21 = obj15;
                        break;
                    case 1:
                        i15 |= 2;
                        obj21 = obj21;
                        obj18 = obj18;
                        str3 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, w2.f69539a, str3);
                        obj17 = obj28;
                        break;
                    case 2:
                        obj17 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, v0.f69529a, obj28);
                        i15 |= 4;
                        obj21 = obj21;
                        obj18 = obj18;
                        break;
                    case 3:
                        obj16 = obj18;
                        f12 = beginStructure.decodeFloatElement(descriptor2, 3);
                        i15 |= 8;
                        obj21 = obj21;
                        obj18 = obj16;
                        obj17 = obj28;
                        break;
                    case 4:
                        obj16 = obj18;
                        i15 |= 16;
                        obj21 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, w2.f69539a, obj21);
                        obj18 = obj16;
                        obj17 = obj28;
                        break;
                    case 5:
                        obj14 = obj21;
                        i18 = beginStructure.decodeIntElement(descriptor2, 5);
                        i15 |= 32;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    case 6:
                        obj14 = obj21;
                        obj18 = beginStructure.decodeNullableSerializableElement(descriptor2, 6, w2.f69539a, obj18);
                        i15 |= 64;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    case 7:
                        obj14 = obj21;
                        obj19 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, w2.f69539a, obj19);
                        i15 |= 128;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    case 8:
                        obj14 = obj21;
                        obj26 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, w2.f69539a, obj26);
                        i15 |= 256;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    case 9:
                        obj14 = obj21;
                        obj25 = beginStructure.decodeNullableSerializableElement(descriptor2, 9, w2.f69539a, obj25);
                        i15 |= 512;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    case 10:
                        obj14 = obj21;
                        obj24 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, w2.f69539a, obj24);
                        i15 |= 1024;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    case 11:
                        obj14 = obj21;
                        f13 = beginStructure.decodeFloatElement(descriptor2, 11);
                        i15 |= 2048;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    case 12:
                        obj14 = obj21;
                        i16 = beginStructure.decodeIntElement(descriptor2, 12);
                        i15 |= 4096;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    case 13:
                        obj14 = obj21;
                        z16 = beginStructure.decodeBooleanElement(descriptor2, 13);
                        i15 |= 8192;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    case 14:
                        obj14 = obj21;
                        i17 = beginStructure.decodeIntElement(descriptor2, 14);
                        i15 |= 16384;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    case 15:
                        obj14 = obj21;
                        z14 = beginStructure.decodeBooleanElement(descriptor2, 15);
                        i15 |= 32768;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    case 16:
                        obj14 = obj21;
                        obj20 = beginStructure.decodeNullableSerializableElement(descriptor2, 16, w2.f69539a, obj20);
                        i14 = 65536;
                        i15 |= i14;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    case 17:
                        obj14 = obj21;
                        obj23 = beginStructure.decodeNullableSerializableElement(descriptor2, 17, w2.f69539a, obj23);
                        i14 = 131072;
                        i15 |= i14;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    case 18:
                        obj14 = obj21;
                        obj22 = beginStructure.decodeNullableSerializableElement(descriptor2, 18, g1.f69417a, obj22);
                        i14 = 262144;
                        i15 |= i14;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    case 19:
                        obj14 = obj21;
                        obj = beginStructure.decodeNullableSerializableElement(descriptor2, 19, g1.f69417a, obj);
                        i14 = 524288;
                        i15 |= i14;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    case 20:
                        obj14 = obj21;
                        obj27 = beginStructure.decodeNullableSerializableElement(descriptor2, 20, g1.f69417a, obj27);
                        i14 = 1048576;
                        i15 |= i14;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    case 21:
                        obj14 = obj21;
                        obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 21, g1.f69417a, obj2);
                        i14 = 2097152;
                        i15 |= i14;
                        obj17 = obj28;
                        obj21 = obj14;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            Object obj29 = obj21;
            String str4 = str3;
            Object obj30 = obj17;
            obj3 = obj20;
            str = str4;
            i10 = i15;
            obj4 = obj22;
            obj5 = obj23;
            obj6 = obj24;
            obj7 = obj25;
            obj8 = obj26;
            z10 = z14;
            f10 = f12;
            obj9 = obj30;
            obj10 = obj18;
            i11 = i16;
            z11 = z15;
            z12 = z16;
            i12 = i17;
            i13 = i18;
            f11 = f13;
            obj11 = obj19;
            obj12 = obj27;
            obj13 = obj29;
        }
        beginStructure.endStructure(descriptor2);
        return new DeviceNode.VungleExt(i10, z11, str, (Integer) obj9, f10, (String) obj13, i13, (String) obj10, (String) obj11, (String) obj8, (String) obj7, (String) obj6, f11, i11, z12, i12, z10, (String) obj3, (String) obj5, (Long) obj4, (Long) obj, (Long) obj12, (Long) obj2, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull DeviceNode.VungleExt value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        DeviceNode.VungleExt.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
