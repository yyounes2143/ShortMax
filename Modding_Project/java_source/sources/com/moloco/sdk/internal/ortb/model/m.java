package com.moloco.sdk.internal.ortb.model;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.ortb.model.b;
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
import vt.m0;
import vt.r2;
@StabilityInferred(parameters = 1)
@st.k
/* loaded from: classes6.dex */
public final class m {
    @NotNull
    public static final b Companion = new b(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.internal.ortb.model.b f32416a;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<m> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32417a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32418b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32419c;

        static {
            a aVar = new a();
            f32417a = aVar;
            f32419c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.MolocoSDKClickMetaData", aVar, 1);
            h2Var.o("banner", true);
            f32418b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final m deserialize(@NotNull Decoder decoder) {
            com.moloco.sdk.internal.ortb.model.b bVar;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32418b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            int i10 = 1;
            if (beginStructure.decodeSequentially()) {
                bVar = (com.moloco.sdk.internal.ortb.model.b) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, b.a.f32343a, null);
            } else {
                boolean z10 = true;
                int i11 = 0;
                bVar = null;
                while (z10) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    if (decodeElementIndex != -1) {
                        if (decodeElementIndex == 0) {
                            bVar = (com.moloco.sdk.internal.ortb.model.b) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, b.a.f32343a, bVar);
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
            return new m(i10, bVar, (r2) null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull m value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32418b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            m.b(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            return new KSerializer[]{tt.a.t(b.a.f32343a)};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32418b;
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
        public final KSerializer<m> serializer() {
            return a.f32417a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public m() {
        this((com.moloco.sdk.internal.ortb.model.b) null, 1, (DefaultConstructorMarker) null);
    }

    public static final /* synthetic */ void b(m mVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 0) || mVar.f32416a != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 0, b.a.f32343a, mVar.f32416a);
        }
    }

    @Nullable
    public final com.moloco.sdk.internal.ortb.model.b a() {
        return this.f32416a;
    }

    public /* synthetic */ m(int i10, com.moloco.sdk.internal.ortb.model.b bVar, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this.f32416a = null;
        } else {
            this.f32416a = bVar;
        }
    }

    public m(@Nullable com.moloco.sdk.internal.ortb.model.b bVar) {
        this.f32416a = bVar;
    }

    public /* synthetic */ m(com.moloco.sdk.internal.ortb.model.b bVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : bVar);
    }
}
