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
import vt.m0;
import vt.r2;
@StabilityInferred(parameters = 1)
@st.k
/* loaded from: classes6.dex */
public final class n {
    @NotNull
    public static final b Companion = new b(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final Boolean f32420a;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<n> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32421a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32422b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32423c;

        static {
            a aVar = new a();
            f32421a = aVar;
            f32423c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.MolocoSDKConfigs", aVar, 1);
            h2Var.o("server_rendering_enabled", true);
            f32422b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final n deserialize(@NotNull Decoder decoder) {
            Boolean bool;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32422b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            int i10 = 1;
            if (beginStructure.decodeSequentially()) {
                bool = (Boolean) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, vt.i.f69441a, null);
            } else {
                boolean z10 = true;
                int i11 = 0;
                bool = null;
                while (z10) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    if (decodeElementIndex != -1) {
                        if (decodeElementIndex == 0) {
                            bool = (Boolean) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, vt.i.f69441a, bool);
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
            return new n(i10, bool, (r2) null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull n value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32422b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            n.b(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            return new KSerializer[]{tt.a.t(vt.i.f69441a)};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32422b;
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
        public final KSerializer<n> serializer() {
            return a.f32421a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public n() {
        this((Boolean) null, 1, (DefaultConstructorMarker) null);
    }

    public static final /* synthetic */ void b(n nVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 0) || nVar.f32420a != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 0, vt.i.f69441a, nVar.f32420a);
        }
    }

    @Nullable
    public final Boolean a() {
        return this.f32420a;
    }

    public /* synthetic */ n(int i10, Boolean bool, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this.f32420a = null;
        } else {
            this.f32420a = bool;
        }
    }

    public n(@Nullable Boolean bool) {
        this.f32420a = bool;
    }

    public /* synthetic */ n(Boolean bool, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : bool);
    }
}
