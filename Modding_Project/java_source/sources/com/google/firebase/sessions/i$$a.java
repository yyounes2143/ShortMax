package com.google.firebase.sessions;

import java.util.Map;
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
import vt.r2;
/* compiled from: SessionData.kt */
@ms.c
@Metadata
/* loaded from: classes5.dex */
public /* synthetic */ class i$$a implements m0<i> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final i$$a f21621a;
    @NotNull
    private static final SerialDescriptor descriptor;

    static {
        i$$a i__a = new i$$a();
        f21621a = i__a;
        h2 h2Var = new h2("com.google.firebase.sessions.SessionData", i__a, 3);
        h2Var.o("sessionDetails", false);
        h2Var.o("backgroundTime", true);
        h2Var.o("processDataMap", true);
        descriptor = h2Var;
    }

    private i$$a() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public final i deserialize(@NotNull Decoder decoder) {
        KSerializer[] kSerializerArr;
        int i10;
        j jVar;
        k kVar;
        Map map;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
        kSerializerArr = i.f21617d;
        j jVar2 = null;
        if (beginStructure.decodeSequentially()) {
            map = (Map) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, kSerializerArr[2], null);
            jVar = (j) beginStructure.decodeSerializableElement(serialDescriptor, 0, j$$a.f21626a, null);
            i10 = 7;
            kVar = (k) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, k$$a.f21630a, null);
        } else {
            boolean z10 = true;
            int i11 = 0;
            k kVar2 = null;
            Map map2 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                if (decodeElementIndex != -1) {
                    if (decodeElementIndex != 0) {
                        if (decodeElementIndex != 1) {
                            if (decodeElementIndex == 2) {
                                map2 = (Map) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, kSerializerArr[2], map2);
                                i11 |= 4;
                            } else {
                                throw new UnknownFieldException(decodeElementIndex);
                            }
                        } else {
                            kVar2 = (k) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, k$$a.f21630a, kVar2);
                            i11 |= 2;
                        }
                    } else {
                        jVar2 = (j) beginStructure.decodeSerializableElement(serialDescriptor, 0, j$$a.f21626a, jVar2);
                        i11 |= 1;
                    }
                } else {
                    z10 = false;
                }
            }
            i10 = i11;
            jVar = jVar2;
            kVar = kVar2;
            map = map2;
        }
        beginStructure.endStructure(serialDescriptor);
        return new i(i10, jVar, kVar, map, (r2) null);
    }

    @Override // st.l
    /* renamed from: b */
    public final void serialize(@NotNull Encoder encoder, @NotNull i value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
        i.g(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // vt.m0
    @NotNull
    public final KSerializer<?>[] childSerializers() {
        KSerializer[] kSerializerArr;
        kSerializerArr = i.f21617d;
        return new KSerializer[]{j$$a.f21626a, tt.a.t(k$$a.f21630a), tt.a.t(kSerializerArr[2])};
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
