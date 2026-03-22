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
/* compiled from: TimeProvider.kt */
@ms.c
@Metadata
/* loaded from: classes5.dex */
public /* synthetic */ class k$$a implements m0<k> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final k$$a f21630a;
    @NotNull
    private static final SerialDescriptor descriptor;

    static {
        k$$a k__a = new k$$a();
        f21630a = k__a;
        h2 h2Var = new h2("com.google.firebase.sessions.Time", k__a, 3);
        h2Var.o("ms", false);
        h2Var.o("us", true);
        h2Var.o("seconds", true);
        descriptor = h2Var;
    }

    private k$$a() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public final k deserialize(@NotNull Decoder decoder) {
        int i10;
        long j10;
        long j11;
        long j12;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
        if (beginStructure.decodeSequentially()) {
            long decodeLongElement = beginStructure.decodeLongElement(serialDescriptor, 0);
            long decodeLongElement2 = beginStructure.decodeLongElement(serialDescriptor, 1);
            j10 = beginStructure.decodeLongElement(serialDescriptor, 2);
            i10 = 7;
            j11 = decodeLongElement;
            j12 = decodeLongElement2;
        } else {
            long j13 = 0;
            boolean z10 = true;
            int i11 = 0;
            long j14 = 0;
            long j15 = 0;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                if (decodeElementIndex != -1) {
                    if (decodeElementIndex != 0) {
                        if (decodeElementIndex != 1) {
                            if (decodeElementIndex == 2) {
                                j13 = beginStructure.decodeLongElement(serialDescriptor, 2);
                                i11 |= 4;
                            } else {
                                throw new UnknownFieldException(decodeElementIndex);
                            }
                        } else {
                            j15 = beginStructure.decodeLongElement(serialDescriptor, 1);
                            i11 |= 2;
                        }
                    } else {
                        j14 = beginStructure.decodeLongElement(serialDescriptor, 0);
                        i11 |= 1;
                    }
                } else {
                    z10 = false;
                }
            }
            i10 = i11;
            j10 = j13;
            j11 = j14;
            j12 = j15;
        }
        beginStructure.endStructure(serialDescriptor);
        return new k(i10, j11, j12, j10, null);
    }

    @Override // st.l
    /* renamed from: b */
    public final void serialize(@NotNull Encoder encoder, @NotNull k value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
        k.d(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // vt.m0
    @NotNull
    public final KSerializer<?>[] childSerializers() {
        g1 g1Var = g1.f69417a;
        return new KSerializer[]{g1Var, g1Var, g1Var};
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
