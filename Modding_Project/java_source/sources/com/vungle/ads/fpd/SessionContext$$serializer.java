package com.vungle.ads.fpd;

import com.ss.ttvideoengine.TTVideoEngineInterface;
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
import vt.l0;
import vt.m0;
import vt.v0;
import vt.w2;
/* compiled from: SessionContext.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class SessionContext$$serializer implements m0<SessionContext> {
    @NotNull
    public static final SessionContext$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        SessionContext$$serializer sessionContext$$serializer = new SessionContext$$serializer();
        INSTANCE = sessionContext$$serializer;
        h2 h2Var = new h2("com.vungle.ads.fpd.SessionContext", sessionContext$$serializer, 12);
        h2Var.o("level_percentile", true);
        h2Var.o("page", true);
        h2Var.o("time_spent", true);
        h2Var.o("signup_date", true);
        h2Var.o("user_score_percentile", true);
        h2Var.o(TTVideoEngineInterface.PLAY_API_KEY_USERID, true);
        h2Var.o("friends", true);
        h2Var.o("user_level_percentile", true);
        h2Var.o("health_percentile", true);
        h2Var.o("session_start_time", true);
        h2Var.o("session_duration", true);
        h2Var.o("in_game_purchases_usd", true);
        descriptor = h2Var;
    }

    private SessionContext$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        l0 l0Var = l0.f69469a;
        KSerializer<?> t10 = a.t(l0Var);
        w2 w2Var = w2.f69539a;
        KSerializer<?> t11 = a.t(w2Var);
        v0 v0Var = v0.f69529a;
        return new KSerializer[]{t10, t11, a.t(v0Var), a.t(v0Var), a.t(l0Var), a.t(w2Var), a.t(new f(w2Var)), a.t(l0Var), a.t(l0Var), a.t(v0Var), a.t(v0Var), a.t(l0Var)};
    }

    @Override // st.c
    @NotNull
    public SessionContext deserialize(@NotNull Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        int i10;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj9;
        Object obj10;
        Object obj11;
        Object obj12;
        Object obj13;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        Object obj14 = null;
        if (beginStructure.decodeSequentially()) {
            l0 l0Var = l0.f69469a;
            obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, l0Var, null);
            w2 w2Var = w2.f69539a;
            Object decodeNullableSerializableElement = beginStructure.decodeNullableSerializableElement(descriptor2, 1, w2Var, null);
            v0 v0Var = v0.f69529a;
            obj11 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, v0Var, null);
            obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, v0Var, null);
            Object decodeNullableSerializableElement2 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, l0Var, null);
            obj10 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, w2Var, null);
            obj5 = beginStructure.decodeNullableSerializableElement(descriptor2, 6, new f(w2Var), null);
            obj12 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, l0Var, null);
            obj9 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, l0Var, null);
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 9, v0Var, null);
            obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, v0Var, null);
            obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 11, l0Var, null);
            obj3 = decodeNullableSerializableElement;
            obj2 = decodeNullableSerializableElement2;
            i10 = 4095;
        } else {
            boolean z10 = true;
            int i11 = 0;
            Object obj15 = null;
            Object obj16 = null;
            Object obj17 = null;
            obj = null;
            Object obj18 = null;
            Object obj19 = null;
            Object obj20 = null;
            Object obj21 = null;
            Object obj22 = null;
            obj2 = null;
            Object obj23 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z10 = false;
                        obj14 = obj14;
                        obj15 = obj15;
                        continue;
                    case 0:
                        i11 |= 1;
                        obj14 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, l0.f69469a, obj14);
                        obj15 = obj15;
                        break;
                    case 1:
                        obj13 = obj14;
                        obj15 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, w2.f69539a, obj15);
                        i11 |= 2;
                        obj14 = obj13;
                        break;
                    case 2:
                        obj13 = obj14;
                        obj16 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, v0.f69529a, obj16);
                        i11 |= 4;
                        obj14 = obj13;
                        break;
                    case 3:
                        obj13 = obj14;
                        obj23 = beginStructure.decodeNullableSerializableElement(descriptor2, 3, v0.f69529a, obj23);
                        i11 |= 8;
                        obj14 = obj13;
                        break;
                    case 4:
                        obj13 = obj14;
                        obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 4, l0.f69469a, obj2);
                        i11 |= 16;
                        obj14 = obj13;
                        break;
                    case 5:
                        obj13 = obj14;
                        obj22 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, w2.f69539a, obj22);
                        i11 |= 32;
                        obj14 = obj13;
                        break;
                    case 6:
                        obj13 = obj14;
                        obj19 = beginStructure.decodeNullableSerializableElement(descriptor2, 6, new f(w2.f69539a), obj19);
                        i11 |= 64;
                        obj14 = obj13;
                        break;
                    case 7:
                        obj13 = obj14;
                        obj21 = beginStructure.decodeNullableSerializableElement(descriptor2, 7, l0.f69469a, obj21);
                        i11 |= 128;
                        obj14 = obj13;
                        break;
                    case 8:
                        obj13 = obj14;
                        obj18 = beginStructure.decodeNullableSerializableElement(descriptor2, 8, l0.f69469a, obj18);
                        i11 |= 256;
                        obj14 = obj13;
                        break;
                    case 9:
                        obj13 = obj14;
                        obj = beginStructure.decodeNullableSerializableElement(descriptor2, 9, v0.f69529a, obj);
                        i11 |= 512;
                        obj14 = obj13;
                        break;
                    case 10:
                        obj13 = obj14;
                        obj17 = beginStructure.decodeNullableSerializableElement(descriptor2, 10, v0.f69529a, obj17);
                        i11 |= 1024;
                        obj14 = obj13;
                        break;
                    case 11:
                        obj20 = beginStructure.decodeNullableSerializableElement(descriptor2, 11, l0.f69469a, obj20);
                        i11 |= 2048;
                        obj14 = obj14;
                        continue;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            obj3 = obj15;
            obj4 = obj20;
            Object obj24 = obj21;
            i10 = i11;
            obj5 = obj19;
            obj6 = obj23;
            obj7 = obj14;
            obj8 = obj17;
            obj9 = obj18;
            obj10 = obj22;
            obj11 = obj16;
            obj12 = obj24;
        }
        beginStructure.endStructure(descriptor2);
        return new SessionContext(i10, (Float) obj7, (String) obj3, (Integer) obj11, (Integer) obj6, (Float) obj2, (String) obj10, (List) obj5, (Float) obj12, (Float) obj9, (Integer) obj, (Integer) obj8, (Float) obj4, null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull SessionContext value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        SessionContext.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
