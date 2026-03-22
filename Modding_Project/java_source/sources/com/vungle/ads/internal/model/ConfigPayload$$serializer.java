package com.vungle.ads.internal.model;

import com.vungle.ads.internal.model.ConfigPayload;
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
import vt.i;
import vt.m0;
import vt.r2;
import vt.v0;
import vt.w2;
/* compiled from: ConfigPayload.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class ConfigPayload$$serializer implements m0<ConfigPayload> {
    @NotNull
    public static final ConfigPayload$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        ConfigPayload$$serializer configPayload$$serializer = new ConfigPayload$$serializer();
        INSTANCE = configPayload$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.model.ConfigPayload", configPayload$$serializer, 19);
        h2Var.o("reuse_assets", true);
        h2Var.o("config", true);
        h2Var.o("endpoints", true);
        h2Var.o("log_metrics", true);
        h2Var.o("placements", true);
        h2Var.o("user", true);
        h2Var.o(Cookie.CONFIG_EXTENSION, true);
        h2Var.o(Cookie.COPPA_DISABLE_AD_ID, true);
        h2Var.o("ri_enabled", true);
        h2Var.o("session_timeout", true);
        h2Var.o("wait_for_connectivity_for_tpat", true);
        h2Var.o("sdk_session_timeout", true);
        h2Var.o("signals_disabled", true);
        h2Var.o("fpd_enabled", true);
        h2Var.o("rta_debugging", true);
        h2Var.o("config_last_validated_ts", true);
        h2Var.o("auto_redirect", true);
        h2Var.o("retry_prioritized_tpat", true);
        h2Var.o("enable_ot", true);
        descriptor = h2Var;
    }

    private ConfigPayload$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        KSerializer<?> t10 = a.t(ConfigPayload$CleverCache$$serializer.INSTANCE);
        KSerializer<?> t11 = a.t(ConfigPayload$ConfigSettings$$serializer.INSTANCE);
        KSerializer<?> t12 = a.t(ConfigPayload$Endpoints$$serializer.INSTANCE);
        KSerializer<?> t13 = a.t(ConfigPayload$LogMetricsSettings$$serializer.INSTANCE);
        KSerializer<?> t14 = a.t(new f(Placement$$serializer.INSTANCE));
        KSerializer<?> t15 = a.t(ConfigPayload$UserPrivacy$$serializer.INSTANCE);
        KSerializer<?> t16 = a.t(w2.f69539a);
        i iVar = i.f69441a;
        KSerializer<?> t17 = a.t(iVar);
        KSerializer<?> t18 = a.t(iVar);
        v0 v0Var = v0.f69529a;
        return new KSerializer[]{t10, t11, t12, t13, t14, t15, t16, t17, t18, a.t(v0Var), a.t(iVar), a.t(v0Var), a.t(iVar), a.t(iVar), a.t(iVar), a.t(g1.f69417a), a.t(ConfigPayload$AutoRedirect$$serializer.INSTANCE), a.t(iVar), a.t(iVar)};
    }

    @Override // st.c
    @NotNull
    public ConfigPayload deserialize(@NotNull Decoder decoder) {
        Object obj;
        Boolean bool;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj9;
        Object obj10;
        int i10;
        Object obj11;
        Object obj12;
        Object obj13;
        Object obj14;
        Object obj15;
        Object obj16;
        Object obj17;
        Object obj18;
        Object obj19;
        Object obj20;
        Boolean bool2;
        Object obj21;
        Boolean bool3;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        if (beginStructure.decodeSequentially()) {
            Object decodeNullableSerializableElement = beginStructure.decodeNullableSerializableElement(descriptor2, 0, ConfigPayload$CleverCache$$serializer.INSTANCE, null);
            obj10 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, ConfigPayload$ConfigSettings$$serializer.INSTANCE, null);
            obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, ConfigPayload$Endpoints$$serializer.INSTANCE, null);
            Object decodeNullableSerializableElement2 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, ConfigPayload$LogMetricsSettings$$serializer.INSTANCE, null);
            Object decodeNullableSerializableElement3 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, new f(Placement$$serializer.INSTANCE), null);
            obj14 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, ConfigPayload$UserPrivacy$$serializer.INSTANCE, null);
            obj18 = beginStructure.decodeNullableSerializableElement(descriptor2, 6, w2.f69539a, null);
            i iVar = i.f69441a;
            obj17 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, iVar, null);
            obj16 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, iVar, null);
            v0 v0Var = v0.f69529a;
            obj15 = beginStructure.decodeNullableSerializableElement(descriptor2, 9, v0Var, null);
            obj13 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, iVar, null);
            Object decodeNullableSerializableElement4 = beginStructure.decodeNullableSerializableElement(descriptor2, 11, v0Var, null);
            Object decodeNullableSerializableElement5 = beginStructure.decodeNullableSerializableElement(descriptor2, 12, iVar, null);
            obj12 = decodeNullableSerializableElement4;
            obj9 = beginStructure.decodeNullableSerializableElement(descriptor2, 13, iVar, null);
            obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, 14, iVar, null);
            obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 15, g1.f69417a, null);
            Object decodeNullableSerializableElement6 = beginStructure.decodeNullableSerializableElement(descriptor2, 16, ConfigPayload$AutoRedirect$$serializer.INSTANCE, null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 17, iVar, null);
            obj6 = decodeNullableSerializableElement6;
            obj3 = decodeNullableSerializableElement;
            i10 = 524287;
            obj11 = decodeNullableSerializableElement5;
            obj = decodeNullableSerializableElement3;
            bool = beginStructure.decodeNullableSerializableElement(descriptor2, 18, iVar, null);
            obj4 = decodeNullableSerializableElement2;
        } else {
            boolean z10 = true;
            Object obj22 = null;
            Object obj23 = null;
            Object obj24 = null;
            Object obj25 = null;
            Boolean bool4 = null;
            Object obj26 = null;
            Object obj27 = null;
            Object obj28 = null;
            Object obj29 = null;
            Object obj30 = null;
            obj = null;
            Object obj31 = null;
            Object obj32 = null;
            Object obj33 = null;
            Object obj34 = null;
            Object obj35 = null;
            Object obj36 = null;
            Object obj37 = null;
            int i11 = 0;
            Object obj38 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        obj19 = obj38;
                        obj20 = obj22;
                        bool2 = bool4;
                        z10 = false;
                        bool4 = bool2;
                        obj38 = obj19;
                        obj22 = obj20;
                        break;
                    case 0:
                        obj20 = obj22;
                        bool2 = bool4;
                        obj19 = obj38;
                        obj37 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, ConfigPayload$CleverCache$$serializer.INSTANCE, obj37);
                        i11 |= 1;
                        bool4 = bool2;
                        obj38 = obj19;
                        obj22 = obj20;
                        break;
                    case 1:
                        obj20 = obj22;
                        i11 |= 2;
                        obj38 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, ConfigPayload$ConfigSettings$$serializer.INSTANCE, obj38);
                        bool4 = bool4;
                        obj22 = obj20;
                        break;
                    case 2:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj25 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, ConfigPayload$Endpoints$$serializer.INSTANCE, obj25);
                        i11 |= 4;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 3:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj24 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, ConfigPayload$LogMetricsSettings$$serializer.INSTANCE, obj24);
                        i11 |= 8;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 4:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj = beginStructure.decodeNullableSerializableElement(descriptor2, 4, new f(Placement$$serializer.INSTANCE), obj);
                        i11 |= 16;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 5:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj22 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, ConfigPayload$UserPrivacy$$serializer.INSTANCE, obj22);
                        i11 |= 32;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 6:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj30 = beginStructure.decodeNullableSerializableElement(descriptor2, 6, w2.f69539a, obj30);
                        i11 |= 64;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 7:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj29 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, i.f69441a, obj29);
                        i11 |= 128;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 8:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj28 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, i.f69441a, obj28);
                        i11 |= 256;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 9:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj23 = beginStructure.decodeNullableSerializableElement(descriptor2, 9, v0.f69529a, obj23);
                        i11 |= 512;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 10:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj27 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, i.f69441a, obj27);
                        i11 |= 1024;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 11:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj26 = beginStructure.decodeNullableSerializableElement(descriptor2, 11, v0.f69529a, obj26);
                        i11 |= 2048;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 12:
                        obj21 = obj38;
                        obj31 = beginStructure.decodeNullableSerializableElement(descriptor2, 12, i.f69441a, obj31);
                        i11 |= 4096;
                        bool4 = bool4;
                        obj32 = obj32;
                        obj38 = obj21;
                        break;
                    case 13:
                        obj21 = obj38;
                        obj32 = beginStructure.decodeNullableSerializableElement(descriptor2, 13, i.f69441a, obj32);
                        i11 |= 8192;
                        bool4 = bool4;
                        obj33 = obj33;
                        obj38 = obj21;
                        break;
                    case 14:
                        obj21 = obj38;
                        obj33 = beginStructure.decodeNullableSerializableElement(descriptor2, 14, i.f69441a, obj33);
                        i11 |= 16384;
                        bool4 = bool4;
                        obj34 = obj34;
                        obj38 = obj21;
                        break;
                    case 15:
                        obj21 = obj38;
                        obj34 = beginStructure.decodeNullableSerializableElement(descriptor2, 15, g1.f69417a, obj34);
                        i11 |= 32768;
                        bool4 = bool4;
                        obj35 = obj35;
                        obj38 = obj21;
                        break;
                    case 16:
                        obj21 = obj38;
                        obj35 = beginStructure.decodeNullableSerializableElement(descriptor2, 16, ConfigPayload$AutoRedirect$$serializer.INSTANCE, obj35);
                        i11 |= 65536;
                        bool4 = bool4;
                        obj36 = obj36;
                        obj38 = obj21;
                        break;
                    case 17:
                        obj21 = obj38;
                        bool3 = bool4;
                        obj36 = beginStructure.decodeNullableSerializableElement(descriptor2, 17, i.f69441a, obj36);
                        i11 |= 131072;
                        bool4 = bool3;
                        obj38 = obj21;
                        break;
                    case 18:
                        bool4 = beginStructure.decodeNullableSerializableElement(descriptor2, 18, i.f69441a, bool4);
                        i11 |= 262144;
                        obj38 = obj38;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            Object obj39 = obj38;
            Object obj40 = obj22;
            bool = bool4;
            obj2 = obj36;
            obj3 = obj37;
            obj4 = obj24;
            obj5 = obj25;
            obj6 = obj35;
            obj7 = obj34;
            obj8 = obj33;
            obj9 = obj32;
            obj10 = obj39;
            i10 = i11;
            obj11 = obj31;
            obj12 = obj26;
            obj13 = obj27;
            obj14 = obj40;
            obj15 = obj23;
            obj16 = obj28;
            obj17 = obj29;
            obj18 = obj30;
        }
        beginStructure.endStructure(descriptor2);
        return new ConfigPayload(i10, (ConfigPayload.CleverCache) obj3, (ConfigPayload.ConfigSettings) obj10, (ConfigPayload.Endpoints) obj5, (ConfigPayload.LogMetricsSettings) obj4, (List) obj, (ConfigPayload.UserPrivacy) obj14, (String) obj18, (Boolean) obj17, (Boolean) obj16, (Integer) obj15, (Boolean) obj13, (Integer) obj12, (Boolean) obj11, (Boolean) obj9, (Boolean) obj8, (Long) obj7, (ConfigPayload.AutoRedirect) obj6, (Boolean) obj2, bool, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull ConfigPayload value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        ConfigPayload.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
