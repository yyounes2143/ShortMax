package com.moloco.sdk.internal.ortb.model;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import vt.h2;
import vt.j3;
import vt.m0;
import vt.r2;
@StabilityInferred(parameters = 1)
@st.k
/* loaded from: classes6.dex */
public final class k {
    @NotNull
    public static final b Companion = new b(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final ms.n f32401a;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<k> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32402a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32403b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32404c;

        static {
            a aVar = new a();
            f32402a = aVar;
            f32404c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.DECSkipClose", aVar, 1);
            h2Var.o("delay_seconds", true);
            f32403b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final k deserialize(@NotNull Decoder decoder) {
            ms.n nVar;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32403b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            int i10 = 1;
            if (beginStructure.decodeSequentially()) {
                nVar = (ms.n) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, j3.f69459a, null);
            } else {
                boolean z10 = true;
                int i11 = 0;
                nVar = null;
                while (z10) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    if (decodeElementIndex != -1) {
                        if (decodeElementIndex == 0) {
                            nVar = (ms.n) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, j3.f69459a, nVar);
                            i11 = 1;
                        } else {
                            throw new UnknownFieldException(decodeElementIndex);
                        }
                    } else {
                        z10 = false;
                    }
                }
                i10 = i11;
            }
            beginStructure.endStructure(serialDescriptor);
            return new k(i10, nVar, null, null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull k value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32403b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            k.b(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            return new KSerializer[]{tt.a.t(j3.f69459a)};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32403b;
        }

        @Override // vt.m0
        @NotNull
        public KSerializer<?>[] typeParametersSerializers() {
            return m0.a.a(this);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b {
        public b() {
        }

        @NotNull
        public final KSerializer<k> serializer() {
            return a.f32402a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ k(int i10, ms.n nVar, r2 r2Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, nVar, r2Var);
    }

    public static final /* synthetic */ void b(k kVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 0) || kVar.f32401a != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 0, j3.f69459a, kVar.f32401a);
        }
    }

    @Nullable
    public final ms.n a() {
        return this.f32401a;
    }

    public /* synthetic */ k(int i10, ms.n nVar, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this.f32401a = null;
        } else {
            this.f32401a = nVar;
        }
    }
}
