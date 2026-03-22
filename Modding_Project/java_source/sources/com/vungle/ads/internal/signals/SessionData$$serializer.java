package com.vungle.ads.internal.signals;

import com.bykv.vk.openvk.preload.falconx.statistic.StatisticData;
import com.vungle.ads.internal.model.UnclosedAd$$serializer;
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
import vt.f;
import vt.g1;
import vt.h2;
import vt.m0;
import vt.v0;
import vt.w2;
/* compiled from: SessionData.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class SessionData$$serializer implements m0<SessionData> {
    @NotNull
    public static final SessionData$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        SessionData$$serializer sessionData$$serializer = new SessionData$$serializer();
        INSTANCE = sessionData$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.signals.SessionData", sessionData$$serializer, 7);
        h2Var.o("103", false);
        h2Var.o(StatisticData.ERROR_CODE_IO_ERROR, true);
        h2Var.o(StatisticData.ERROR_CODE_NOT_FOUND, true);
        h2Var.o("106", true);
        h2Var.o("102", true);
        h2Var.o("104", true);
        h2Var.o("105", true);
        descriptor = h2Var;
    }

    private SessionData$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        f fVar = new f(SignaledAd$$serializer.INSTANCE);
        f fVar2 = new f(UnclosedAd$$serializer.INSTANCE);
        v0 v0Var = v0.f69529a;
        g1 g1Var = g1.f69417a;
        return new KSerializer[]{v0Var, w2.f69539a, g1Var, fVar, g1Var, v0Var, fVar2};
    }

    @Override // st.c
    @NotNull
    public SessionData deserialize(@NotNull Decoder decoder) {
        int i10;
        Object obj;
        int i11;
        long j10;
        int i12;
        String str;
        Object obj2;
        long j11;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        int i13 = 2;
        if (beginStructure.decodeSequentially()) {
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 0);
            String decodeStringElement = beginStructure.decodeStringElement(descriptor2, 1);
            long decodeLongElement = beginStructure.decodeLongElement(descriptor2, 2);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 3, new f(SignaledAd$$serializer.INSTANCE), null);
            long decodeLongElement2 = beginStructure.decodeLongElement(descriptor2, 4);
            int decodeIntElement2 = beginStructure.decodeIntElement(descriptor2, 5);
            obj = beginStructure.decodeSerializableElement(descriptor2, 6, new f(UnclosedAd$$serializer.INSTANCE), null);
            i10 = decodeIntElement;
            i11 = decodeIntElement2;
            j10 = decodeLongElement2;
            str = decodeStringElement;
            i12 = 127;
            j11 = decodeLongElement;
        } else {
            long j12 = 0;
            boolean z10 = true;
            int i14 = 0;
            int i15 = 0;
            String str2 = null;
            Object obj3 = null;
            long j13 = 0;
            Object obj4 = null;
            int i16 = 0;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z10 = false;
                        break;
                    case 0:
                        i15 |= 1;
                        i14 = beginStructure.decodeIntElement(descriptor2, 0);
                        continue;
                    case 1:
                        str2 = beginStructure.decodeStringElement(descriptor2, 1);
                        i15 |= 2;
                        continue;
                    case 2:
                        j13 = beginStructure.decodeLongElement(descriptor2, i13);
                        i15 |= 4;
                        break;
                    case 3:
                        obj3 = beginStructure.decodeSerializableElement(descriptor2, 3, new f(SignaledAd$$serializer.INSTANCE), obj3);
                        i15 |= 8;
                        i13 = 2;
                        break;
                    case 4:
                        j12 = beginStructure.decodeLongElement(descriptor2, 4);
                        i15 |= 16;
                        i13 = 2;
                        break;
                    case 5:
                        i16 = beginStructure.decodeIntElement(descriptor2, 5);
                        i15 |= 32;
                        i13 = 2;
                        break;
                    case 6:
                        obj4 = beginStructure.decodeSerializableElement(descriptor2, 6, new f(UnclosedAd$$serializer.INSTANCE), obj4);
                        i15 |= 64;
                        i13 = 2;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            i10 = i14;
            obj = obj4;
            i11 = i16;
            j10 = j12;
            i12 = i15;
            str = str2;
            obj2 = obj3;
            j11 = j13;
        }
        beginStructure.endStructure(descriptor2);
        return new SessionData(i12, i10, str, j11, (List) obj2, j10, i11, (List) obj, null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull SessionData value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        SessionData.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
