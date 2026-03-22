package com.vungle.ads.internal.network;

import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.util.Map;
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
import vt.a1;
import vt.h2;
import vt.m0;
import vt.r2;
import vt.v0;
import vt.w2;
/* compiled from: TpatSender.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class FailedTpat$$serializer implements m0<FailedTpat> {
    @NotNull
    public static final FailedTpat$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        FailedTpat$$serializer failedTpat$$serializer = new FailedTpat$$serializer();
        INSTANCE = failedTpat$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.network.FailedTpat", failedTpat$$serializer, 6);
        h2Var.o("method", true);
        h2Var.o(IVideoEventLogger.GEAR_STRATEGY_KEY_HEADERS, true);
        h2Var.o("body", true);
        h2Var.o("retryAttempt", true);
        h2Var.o("retryCount", false);
        h2Var.o("tpatKey", true);
        descriptor = h2Var;
    }

    private FailedTpat$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        w2 w2Var = w2.f69539a;
        KSerializer<?> t10 = tt.a.t(new a1(w2Var, w2Var));
        KSerializer<?> t11 = tt.a.t(w2Var);
        KSerializer<?> t12 = tt.a.t(w2Var);
        v0 v0Var = v0.f69529a;
        return new KSerializer[]{HttpMethod$$serializer.INSTANCE, t10, t11, v0Var, v0Var, t12};
    }

    @Override // st.c
    @NotNull
    public FailedTpat deserialize(@NotNull Decoder decoder) {
        int i10;
        Object obj;
        Object obj2;
        Object obj3;
        int i11;
        int i12;
        Object obj4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        int i13 = 5;
        if (beginStructure.decodeSequentially()) {
            obj4 = beginStructure.decodeSerializableElement(descriptor2, 0, HttpMethod$$serializer.INSTANCE, null);
            w2 w2Var = w2.f69539a;
            obj = beginStructure.decodeNullableSerializableElement(descriptor2, 1, new a1(w2Var, w2Var), null);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, w2Var, null);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 3);
            int decodeIntElement2 = beginStructure.decodeIntElement(descriptor2, 4);
            obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 5, w2Var, null);
            i12 = decodeIntElement;
            i11 = decodeIntElement2;
            i10 = 63;
        } else {
            boolean z10 = true;
            int i14 = 0;
            int i15 = 0;
            Object obj5 = null;
            Object obj6 = null;
            Object obj7 = null;
            Object obj8 = null;
            int i16 = 0;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z10 = false;
                        continue;
                    case 0:
                        obj5 = beginStructure.decodeSerializableElement(descriptor2, 0, HttpMethod$$serializer.INSTANCE, obj5);
                        i15 |= 1;
                        i13 = 5;
                        continue;
                    case 1:
                        w2 w2Var2 = w2.f69539a;
                        obj6 = beginStructure.decodeNullableSerializableElement(descriptor2, 1, new a1(w2Var2, w2Var2), obj6);
                        i15 |= 2;
                        i13 = 5;
                        break;
                    case 2:
                        obj7 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, w2.f69539a, obj7);
                        i15 |= 4;
                        break;
                    case 3:
                        i14 = beginStructure.decodeIntElement(descriptor2, 3);
                        i15 |= 8;
                        break;
                    case 4:
                        i16 = beginStructure.decodeIntElement(descriptor2, 4);
                        i15 |= 16;
                        break;
                    case 5:
                        obj8 = beginStructure.decodeNullableSerializableElement(descriptor2, i13, w2.f69539a, obj8);
                        i15 |= 32;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            i10 = i15;
            obj = obj6;
            obj2 = obj7;
            obj3 = obj8;
            i11 = i16;
            i12 = i14;
            obj4 = obj5;
        }
        beginStructure.endStructure(descriptor2);
        return new FailedTpat(i10, (HttpMethod) obj4, (Map) obj, (String) obj2, i12, i11, (String) obj3, (r2) null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull FailedTpat value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        FailedTpat.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
