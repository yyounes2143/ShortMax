package com.moloco.sdk.internal.ortb.model;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.ortb.model.l;
import com.moloco.sdk.internal.ortb.model.v;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import vt.c2;
import vt.h2;
import vt.j3;
import vt.m0;
import vt.r2;
@StabilityInferred(parameters = 1)
@st.k
/* loaded from: classes6.dex */
public final class u {
    @NotNull
    public static final b Companion = new b(null);

    /* renamed from: a  reason: collision with root package name */
    public final int f32483a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final l f32484b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final v f32485c;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<u> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32486a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32487b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32488c;

        static {
            a aVar = new a();
            f32486a = aVar;
            f32488c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.VastPrivacyIcon", aVar, 3);
            h2Var.o("padding", false);
            h2Var.o("horizontal_alignment", false);
            h2Var.o("vertical_alignment", false);
            f32487b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final u deserialize(@NotNull Decoder decoder) {
            int i10;
            ms.n nVar;
            l lVar;
            v vVar;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32487b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            ms.n nVar2 = null;
            if (beginStructure.decodeSequentially()) {
                nVar = (ms.n) beginStructure.decodeSerializableElement(serialDescriptor, 0, j3.f69459a, null);
                vVar = (v) beginStructure.decodeSerializableElement(serialDescriptor, 2, v.a.f32495a, null);
                lVar = (l) beginStructure.decodeSerializableElement(serialDescriptor, 1, l.a.f32413a, null);
                i10 = 7;
            } else {
                boolean z10 = true;
                int i11 = 0;
                l lVar2 = null;
                v vVar2 = null;
                while (z10) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    if (decodeElementIndex != -1) {
                        if (decodeElementIndex != 0) {
                            if (decodeElementIndex != 1) {
                                if (decodeElementIndex == 2) {
                                    vVar2 = (v) beginStructure.decodeSerializableElement(serialDescriptor, 2, v.a.f32495a, vVar2);
                                    i11 |= 4;
                                } else {
                                    throw new UnknownFieldException(decodeElementIndex);
                                }
                            } else {
                                lVar2 = (l) beginStructure.decodeSerializableElement(serialDescriptor, 1, l.a.f32413a, lVar2);
                                i11 |= 2;
                            }
                        } else {
                            nVar2 = (ms.n) beginStructure.decodeSerializableElement(serialDescriptor, 0, j3.f69459a, nVar2);
                            i11 |= 1;
                        }
                    } else {
                        z10 = false;
                    }
                }
                i10 = i11;
                nVar = nVar2;
                lVar = lVar2;
                vVar = vVar2;
            }
            beginStructure.endStructure(serialDescriptor);
            return new u(i10, nVar, lVar, vVar, null, null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull u value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32487b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            u.b(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            return new KSerializer[]{j3.f69459a, l.a.f32413a, v.a.f32495a};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32487b;
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
        public final KSerializer<u> serializer() {
            return a.f32486a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ u(int i10, ms.n nVar, l lVar, v vVar, r2 r2Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, nVar, lVar, vVar, r2Var);
    }

    public static final /* synthetic */ void b(u uVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        dVar.encodeSerializableElement(serialDescriptor, 0, j3.f69459a, ms.n.a(uVar.f32483a));
        dVar.encodeSerializableElement(serialDescriptor, 1, l.a.f32413a, uVar.f32484b);
        dVar.encodeSerializableElement(serialDescriptor, 2, v.a.f32495a, uVar.f32485c);
    }

    @NotNull
    public final l a() {
        return this.f32484b;
    }

    public final int c() {
        return this.f32483a;
    }

    @NotNull
    public final v d() {
        return this.f32485c;
    }

    public /* synthetic */ u(int i10, ms.n nVar, l lVar, v vVar, r2 r2Var) {
        if (7 != (i10 & 7)) {
            c2.a(i10, 7, a.f32486a.getDescriptor());
        }
        this.f32483a = nVar.g();
        this.f32484b = lVar;
        this.f32485c = vVar;
    }
}
