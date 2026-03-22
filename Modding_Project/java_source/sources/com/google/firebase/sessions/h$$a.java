package com.google.firebase.sessions;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import vt.h2;
import vt.m0;
import vt.v0;
import vt.w2;
/* compiled from: SessionData.kt */
@ms.c
@Metadata
/* loaded from: classes5.dex */
public /* synthetic */ class h$$a implements m0<h> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final h$$a f21616a;
    @NotNull
    private static final SerialDescriptor descriptor;

    static {
        h$$a h__a = new h$$a();
        f21616a = h__a;
        h2 h2Var = new h2("com.google.firebase.sessions.ProcessData", h__a, 2);
        h2Var.o("pid", false);
        h2Var.o("uuid", false);
        descriptor = h2Var;
    }

    private h$$a() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public final h deserialize(@NotNull Decoder decoder) {
        int i10;
        String str;
        int i11;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
        if (beginStructure.decodeSequentially()) {
            i10 = beginStructure.decodeIntElement(serialDescriptor, 0);
            str = beginStructure.decodeStringElement(serialDescriptor, 1);
            i11 = 3;
        } else {
            boolean z10 = true;
            i10 = 0;
            int i12 = 0;
            String str2 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                if (decodeElementIndex != -1) {
                    if (decodeElementIndex != 0) {
                        if (decodeElementIndex == 1) {
                            str2 = beginStructure.decodeStringElement(serialDescriptor, 1);
                            i12 |= 2;
                        } else {
                            throw new UnknownFieldException(decodeElementIndex);
                        }
                    } else {
                        i10 = beginStructure.decodeIntElement(serialDescriptor, 0);
                        i12 |= 1;
                    }
                } else {
                    z10 = false;
                }
            }
            str = str2;
            i11 = i12;
        }
        beginStructure.endStructure(serialDescriptor);
        return new h(i11, i10, str, null);
    }

    @Override // st.l
    /* renamed from: b */
    public final void serialize(@NotNull Encoder encoder, @NotNull h value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
        h.c(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // vt.m0
    @NotNull
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{v0.f69529a, w2.f69539a};
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
