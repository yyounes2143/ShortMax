package com.vungle.ads.fpd;

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
import vt.h2;
import vt.i;
import vt.l0;
import vt.m0;
import vt.w2;
/* compiled from: Revenue.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class Revenue$$serializer implements m0<Revenue> {
    @NotNull
    public static final Revenue$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        Revenue$$serializer revenue$$serializer = new Revenue$$serializer();
        INSTANCE = revenue$$serializer;
        h2 h2Var = new h2("com.vungle.ads.fpd.Revenue", revenue$$serializer, 17);
        h2Var.o("total_earnings_usd", true);
        h2Var.o("earnings_by_placement_usd", true);
        h2Var.o("top_n_adomain", true);
        h2Var.o("is_user_a_purchaser", true);
        h2Var.o("is_user_a_subscriber", true);
        h2Var.o("last_7_days_total_spend_usd", true);
        h2Var.o("last_7_days_median_spend_usd", true);
        h2Var.o("last_7_days_mean_spend_usd", true);
        h2Var.o("last_30_days_total_spend_usd", true);
        h2Var.o("last_30_days_median_spend_usd", true);
        h2Var.o("last_30_days_mean_spend_usd", true);
        h2Var.o("last_7_days_user_pltv_usd", true);
        h2Var.o("last_7_days_user_ltv_usd", true);
        h2Var.o("last_30_days_user_pltv_usd", true);
        h2Var.o("last_30_days_user_ltv_usd", true);
        h2Var.o("last_7_days_placement_fill_rate", true);
        h2Var.o("last_30_days_placement_fill_rate", true);
        descriptor = h2Var;
    }

    private Revenue$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        l0 l0Var = l0.f69469a;
        KSerializer<?> t10 = a.t(l0Var);
        KSerializer<?> t11 = a.t(l0Var);
        KSerializer<?> t12 = a.t(new f(w2.f69539a));
        i iVar = i.f69441a;
        return new KSerializer[]{t10, t11, t12, a.t(iVar), a.t(iVar), a.t(l0Var), a.t(l0Var), a.t(l0Var), a.t(l0Var), a.t(l0Var), a.t(l0Var), a.t(l0Var), a.t(l0Var), a.t(l0Var), a.t(l0Var), a.t(l0Var), a.t(l0Var)};
    }

    @Override // st.c
    @NotNull
    public Revenue deserialize(@NotNull Decoder decoder) {
        Float f10;
        Float f11;
        Object obj;
        int i10;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj9;
        Object obj10;
        Object obj11;
        Object obj12;
        Object obj13;
        Object obj14;
        Object obj15;
        Object obj16;
        Object obj17;
        Object obj18;
        Float f12;
        Object obj19;
        Float f13;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            l0 l0Var = l0.f69469a;
            Object decodeNullableSerializableElement = beginStructure.decodeNullableSerializableElement(descriptor2, 0, l0Var, null);
            Object decodeNullableSerializableElement2 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, l0Var, null);
            Object decodeNullableSerializableElement3 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, new f(w2.f69539a), null);
            i iVar = i.f69441a;
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 3, iVar, null);
            obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, iVar, null);
            obj12 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, l0Var, null);
            obj14 = beginStructure.decodeNullableSerializableElement(descriptor2, 6, l0Var, null);
            obj11 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, l0Var, null);
            obj13 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, l0Var, null);
            obj10 = beginStructure.decodeNullableSerializableElement(descriptor2, 9, l0Var, null);
            obj15 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, l0Var, null);
            obj9 = beginStructure.decodeNullableSerializableElement(descriptor2, 11, l0Var, null);
            obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, 12, l0Var, null);
            obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 13, l0Var, null);
            obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 14, l0Var, null);
            Object decodeNullableSerializableElement4 = beginStructure.decodeNullableSerializableElement(descriptor2, 15, l0Var, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 16, l0Var, null);
            f10 = decodeNullableSerializableElement2;
            i10 = 131071;
            f11 = decodeNullableSerializableElement;
            obj3 = decodeNullableSerializableElement4;
            obj8 = decodeNullableSerializableElement3;
        } else {
            boolean z10 = true;
            Object obj20 = null;
            Object obj21 = null;
            Object obj22 = null;
            Float f14 = null;
            Object obj23 = null;
            Object obj24 = null;
            Object obj25 = null;
            Object obj26 = null;
            Object obj27 = null;
            Object obj28 = null;
            Object obj29 = null;
            Object obj30 = null;
            Object obj31 = null;
            Object obj32 = null;
            Object obj33 = null;
            Float f15 = null;
            int i11 = 0;
            Object obj34 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        obj16 = obj34;
                        obj17 = obj22;
                        obj18 = f15;
                        f12 = f14;
                        z10 = false;
                        obj22 = obj17;
                        f14 = f12;
                        f15 = obj18;
                        obj34 = obj16;
                        break;
                    case 0:
                        obj16 = obj34;
                        obj17 = obj22;
                        Float f16 = f15;
                        f12 = f14;
                        obj18 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, l0.f69469a, f16);
                        i11 |= 1;
                        obj22 = obj17;
                        f14 = f12;
                        f15 = obj18;
                        obj34 = obj16;
                        break;
                    case 1:
                        i11 |= 2;
                        f14 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, l0.f69469a, f14);
                        obj22 = obj22;
                        obj34 = obj34;
                        break;
                    case 2:
                        obj19 = obj22;
                        f13 = f14;
                        obj34 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, new f(w2.f69539a), obj34);
                        i11 |= 4;
                        obj22 = obj19;
                        f14 = f13;
                        break;
                    case 3:
                        obj19 = obj22;
                        f13 = f14;
                        obj21 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, i.f69441a, obj21);
                        i11 |= 8;
                        obj22 = obj19;
                        f14 = f13;
                        break;
                    case 4:
                        obj19 = obj22;
                        f13 = f14;
                        obj20 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, i.f69441a, obj20);
                        i11 |= 16;
                        obj22 = obj19;
                        f14 = f13;
                        break;
                    case 5:
                        obj19 = obj22;
                        f13 = f14;
                        obj27 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, l0.f69469a, obj27);
                        i11 |= 32;
                        obj22 = obj19;
                        f14 = f13;
                        break;
                    case 6:
                        obj19 = obj22;
                        f13 = f14;
                        obj28 = beginStructure.decodeNullableSerializableElement(descriptor2, 6, l0.f69469a, obj28);
                        i11 |= 64;
                        obj22 = obj19;
                        f14 = f13;
                        break;
                    case 7:
                        obj19 = obj22;
                        f13 = f14;
                        obj26 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, l0.f69469a, obj26);
                        i11 |= 128;
                        obj22 = obj19;
                        f14 = f13;
                        break;
                    case 8:
                        obj19 = obj22;
                        f13 = f14;
                        obj25 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, l0.f69469a, obj25);
                        i11 |= 256;
                        obj22 = obj19;
                        f14 = f13;
                        break;
                    case 9:
                        obj19 = obj22;
                        f13 = f14;
                        obj24 = beginStructure.decodeNullableSerializableElement(descriptor2, 9, l0.f69469a, obj24);
                        i11 |= 512;
                        obj22 = obj19;
                        f14 = f13;
                        break;
                    case 10:
                        obj19 = obj22;
                        f13 = f14;
                        obj29 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, l0.f69469a, obj29);
                        i11 |= 1024;
                        obj22 = obj19;
                        f14 = f13;
                        break;
                    case 11:
                        obj19 = obj22;
                        f13 = f14;
                        obj23 = beginStructure.decodeNullableSerializableElement(descriptor2, 11, l0.f69469a, obj23);
                        i11 |= 2048;
                        obj22 = obj19;
                        f14 = f13;
                        break;
                    case 12:
                        f13 = f14;
                        obj30 = beginStructure.decodeNullableSerializableElement(descriptor2, 12, l0.f69469a, obj30);
                        i11 |= 4096;
                        obj22 = obj22;
                        obj31 = obj31;
                        f14 = f13;
                        break;
                    case 13:
                        f13 = f14;
                        obj31 = beginStructure.decodeNullableSerializableElement(descriptor2, 13, l0.f69469a, obj31);
                        i11 |= 8192;
                        obj22 = obj22;
                        obj32 = obj32;
                        f14 = f13;
                        break;
                    case 14:
                        f13 = f14;
                        obj32 = beginStructure.decodeNullableSerializableElement(descriptor2, 14, l0.f69469a, obj32);
                        i11 |= 16384;
                        obj22 = obj22;
                        obj33 = obj33;
                        f14 = f13;
                        break;
                    case 15:
                        f13 = f14;
                        obj19 = obj22;
                        obj33 = beginStructure.decodeNullableSerializableElement(descriptor2, 15, l0.f69469a, obj33);
                        i11 |= 32768;
                        obj22 = obj19;
                        f14 = f13;
                        break;
                    case 16:
                        obj22 = beginStructure.decodeNullableSerializableElement(descriptor2, 16, l0.f69469a, obj22);
                        i11 |= 65536;
                        f14 = f14;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            Object obj35 = obj34;
            Float f17 = f15;
            f10 = f14;
            f11 = f17;
            obj = obj21;
            i10 = i11;
            obj2 = obj22;
            obj3 = obj33;
            obj4 = obj32;
            obj5 = obj31;
            obj6 = obj30;
            obj7 = obj20;
            obj8 = obj35;
            Object obj36 = obj29;
            obj9 = obj23;
            obj10 = obj24;
            obj11 = obj26;
            obj12 = obj27;
            obj13 = obj25;
            obj14 = obj28;
            obj15 = obj36;
        }
        beginStructure.endStructure(descriptor2);
        return new Revenue(i10, f11, f10, (List) obj8, (Boolean) obj, (Boolean) obj7, (Float) obj12, (Float) obj14, (Float) obj11, (Float) obj13, (Float) obj10, (Float) obj15, (Float) obj9, (Float) obj6, (Float) obj5, (Float) obj4, (Float) obj3, (Float) obj2, null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull Revenue value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        Revenue.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
