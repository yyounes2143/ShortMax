package com.google.firebase.sessions;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import vt.g1;
import vt.h2;
import vt.m0;
import vt.v0;
import vt.w2;
/* compiled from: SessionDetails.kt */
@ms.c
@Metadata
/* loaded from: classes5.dex */
public /* synthetic */ class j$$a implements m0<j> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final j$$a f21626a;
    @NotNull
    private static final SerialDescriptor descriptor;

    static {
        j$$a j__a = new j$$a();
        f21626a = j__a;
        h2 h2Var = new h2("com.google.firebase.sessions.SessionDetails", j__a, 4);
        h2Var.o("sessionId", false);
        h2Var.o("firstSessionId", false);
        h2Var.o("sessionIndex", false);
        h2Var.o("sessionStartTimestampUs", false);
        descriptor = h2Var;
    }

    private j$$a() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public final j deserialize(@NotNull Decoder decoder) {
        String str;
        int i10;
        int i11;
        String str2;
        long j10;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
        if (beginStructure.decodeSequentially()) {
            String decodeStringElement = beginStructure.decodeStringElement(serialDescriptor, 0);
            String decodeStringElement2 = beginStructure.decodeStringElement(serialDescriptor, 1);
            str = decodeStringElement;
            i10 = 15;
            i11 = beginStructure.decodeIntElement(serialDescriptor, 2);
            str2 = decodeStringElement2;
            j10 = beginStructure.decodeLongElement(serialDescriptor, 3);
        } else {
            String str3 = null;
            String str4 = null;
            boolean z10 = true;
            long j11 = 0;
            int i12 = 0;
            int i13 = 0;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                if (decodeElementIndex != -1) {
                    if (decodeElementIndex != 0) {
                        if (decodeElementIndex != 1) {
                            if (decodeElementIndex != 2) {
                                if (decodeElementIndex == 3) {
                                    j11 = beginStructure.decodeLongElement(serialDescriptor, 3);
                                    i12 |= 8;
                                } else {
                                    throw new UnknownFieldException(decodeElementIndex);
                                }
                            } else {
                                i13 = beginStructure.decodeIntElement(serialDescriptor, 2);
                                i12 |= 4;
                            }
                        } else {
                            str4 = beginStructure.decodeStringElement(serialDescriptor, 1);
                            i12 |= 2;
                        }
                    } else {
                        str3 = beginStructure.decodeStringElement(serialDescriptor, 0);
                        i12 |= 1;
                    }
                } else {
                    z10 = false;
                }
            }
            str = str3;
            i10 = i12;
            i11 = i13;
            str2 = str4;
            j10 = j11;
        }
        beginStructure.endStructure(serialDescriptor);
        return new j(i10, str, str2, i11, j10, null);
    }

    @Override // st.l
    /* renamed from: b */
    public final void serialize(@NotNull Encoder encoder, @NotNull j value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
        j.e(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // vt.m0
    @NotNull
    public final KSerializer<?>[] childSerializers() {
        w2 w2Var = w2.f69539a;
        return new KSerializer[]{w2Var, w2Var, v0.f69529a, g1.f69417a};
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
