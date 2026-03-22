package com.google.firebase.sessions.settings;

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
import vt.c0;
import vt.g1;
import vt.h2;
import vt.i;
import vt.m0;
import vt.v0;
/* compiled from: SessionConfigs.kt */
@c
@Metadata
/* loaded from: classes5.dex */
public /* synthetic */ class a$$a implements m0<a> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a$$a f21686a;
    @NotNull
    private static final SerialDescriptor descriptor;

    static {
        a$$a a__a = new a$$a();
        f21686a = a__a;
        h2 h2Var = new h2("com.google.firebase.sessions.settings.SessionConfigs", a__a, 5);
        h2Var.o("sessionsEnabled", false);
        h2Var.o("sessionSamplingRate", false);
        h2Var.o("sessionTimeoutSeconds", false);
        h2Var.o("cacheDurationSeconds", false);
        h2Var.o("cacheUpdatedTimeSeconds", false);
        descriptor = h2Var;
    }

    private a$$a() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public final a deserialize(@NotNull Decoder decoder) {
        int i10;
        Boolean bool;
        Double d10;
        Integer num;
        Integer num2;
        Long l10;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
        Boolean bool2 = null;
        if (beginStructure.decodeSequentially()) {
            v0 v0Var = v0.f69529a;
            bool = (Boolean) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, i.f69441a, null);
            num2 = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, v0Var, null);
            l10 = (Long) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, g1.f69417a, null);
            num = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, v0Var, null);
            d10 = (Double) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, c0.f69382a, null);
            i10 = 31;
        } else {
            boolean z10 = true;
            int i11 = 0;
            Double d11 = null;
            Integer num3 = null;
            Integer num4 = null;
            Long l11 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                if (decodeElementIndex != -1) {
                    if (decodeElementIndex != 0) {
                        if (decodeElementIndex != 1) {
                            if (decodeElementIndex != 2) {
                                if (decodeElementIndex != 3) {
                                    if (decodeElementIndex == 4) {
                                        l11 = (Long) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, g1.f69417a, l11);
                                        i11 |= 16;
                                    } else {
                                        throw new UnknownFieldException(decodeElementIndex);
                                    }
                                } else {
                                    num4 = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, v0.f69529a, num4);
                                    i11 |= 8;
                                }
                            } else {
                                num3 = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, v0.f69529a, num3);
                                i11 |= 4;
                            }
                        } else {
                            d11 = (Double) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, c0.f69382a, d11);
                            i11 |= 2;
                        }
                    } else {
                        bool2 = (Boolean) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, i.f69441a, bool2);
                        i11 |= 1;
                    }
                } else {
                    z10 = false;
                }
            }
            i10 = i11;
            bool = bool2;
            d10 = d11;
            num = num3;
            num2 = num4;
            l10 = l11;
        }
        beginStructure.endStructure(serialDescriptor);
        return new a(i10, bool, d10, num, num2, l10, null);
    }

    @Override // st.l
    /* renamed from: b */
    public final void serialize(@NotNull Encoder encoder, @NotNull a value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        d beginStructure = encoder.beginStructure(serialDescriptor);
        a.f(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // vt.m0
    @NotNull
    public final KSerializer<?>[] childSerializers() {
        KSerializer<?> t10 = tt.a.t(i.f69441a);
        KSerializer<?> t11 = tt.a.t(c0.f69382a);
        v0 v0Var = v0.f69529a;
        return new KSerializer[]{t10, t11, tt.a.t(v0Var), tt.a.t(v0Var), tt.a.t(g1.f69417a)};
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
