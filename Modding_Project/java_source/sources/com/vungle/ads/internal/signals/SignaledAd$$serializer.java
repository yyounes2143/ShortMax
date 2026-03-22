package com.vungle.ads.internal.signals;

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
import vt.m0;
import vt.v0;
import vt.w2;
/* compiled from: SignaledAd.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class SignaledAd$$serializer implements m0<SignaledAd> {
    @NotNull
    public static final SignaledAd$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        SignaledAd$$serializer signaledAd$$serializer = new SignaledAd$$serializer();
        INSTANCE = signaledAd$$serializer;
        h2 h2Var = new h2("com.vungle.ads.internal.signals.SignaledAd", signaledAd$$serializer, 5);
        h2Var.o("500", true);
        h2Var.o("109", false);
        h2Var.o("107", true);
        h2Var.o("110", true);
        h2Var.o("108", true);
        descriptor = h2Var;
    }

    private SignaledAd$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        w2 w2Var = w2.f69539a;
        KSerializer<?> t10 = a.t(w2Var);
        KSerializer<?> t11 = a.t(w2Var);
        g1 g1Var = g1.f69417a;
        return new KSerializer[]{t10, g1Var, t11, g1Var, v0.f69529a};
    }

    @Override // st.c
    @NotNull
    public SignaledAd deserialize(@NotNull Decoder decoder) {
        long j10;
        int i10;
        Object obj;
        long j11;
        int i11;
        Object obj2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(descriptor2);
        int i12 = 3;
        if (beginStructure.decodeSequentially()) {
            w2 w2Var = w2.f69539a;
            Object decodeNullableSerializableElement = beginStructure.decodeNullableSerializableElement(descriptor2, 0, w2Var, null);
            long decodeLongElement = beginStructure.decodeLongElement(descriptor2, 1);
            obj2 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, w2Var, null);
            long decodeLongElement2 = beginStructure.decodeLongElement(descriptor2, 3);
            i10 = 31;
            i11 = beginStructure.decodeIntElement(descriptor2, 4);
            obj = decodeNullableSerializableElement;
            j11 = decodeLongElement;
            j10 = decodeLongElement2;
        } else {
            j10 = 0;
            boolean z10 = true;
            int i13 = 0;
            Object obj3 = null;
            Object obj4 = null;
            long j12 = 0;
            int i14 = 0;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z10 = false;
                } else if (decodeElementIndex == 0) {
                    obj3 = beginStructure.decodeNullableSerializableElement(descriptor2, 0, w2.f69539a, obj3);
                    i14 |= 1;
                } else if (decodeElementIndex == 1) {
                    j12 = beginStructure.decodeLongElement(descriptor2, 1);
                    i14 |= 2;
                } else if (decodeElementIndex == 2) {
                    obj4 = beginStructure.decodeNullableSerializableElement(descriptor2, 2, w2.f69539a, obj4);
                    i14 |= 4;
                } else if (decodeElementIndex == i12) {
                    j10 = beginStructure.decodeLongElement(descriptor2, i12);
                    i14 |= 8;
                } else if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    i13 = beginStructure.decodeIntElement(descriptor2, 4);
                    i14 |= 16;
                }
                i12 = 3;
            }
            i10 = i14;
            obj = obj3;
            j11 = j12;
            i11 = i13;
            obj2 = obj4;
        }
        beginStructure.endStructure(descriptor2);
        return new SignaledAd(i10, (String) obj, j11, (String) obj2, j10, i11, null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull SignaledAd value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        d beginStructure = encoder.beginStructure(descriptor2);
        SignaledAd.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
