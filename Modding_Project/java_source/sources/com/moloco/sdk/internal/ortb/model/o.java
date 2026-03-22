package com.moloco.sdk.internal.ortb.model;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
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
import org.jetbrains.annotations.Nullable;
import vt.c2;
import vt.h2;
import vt.j3;
import vt.m0;
import vt.r2;
@StabilityInferred(parameters = 1)
@st.k
/* loaded from: classes6.dex */
public final class o {
    @NotNull
    public static final b Companion = new b(null);

    /* renamed from: a  reason: collision with root package name */
    public final boolean f32424a;

    /* renamed from: b  reason: collision with root package name */
    public final int f32425b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final l f32426c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final v f32427d;

    /* renamed from: e  reason: collision with root package name */
    public final long f32428e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final ms.n f32429f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final Color f32430g;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<o> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32431a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32432b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32433c;

        static {
            a aVar = new a();
            f32431a = aVar;
            f32433c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.Mute", aVar, 7);
            h2Var.o("mute", false);
            h2Var.o("padding", false);
            h2Var.o("horizontal_alignment", false);
            h2Var.o("vertical_alignment", false);
            h2Var.o("foreground_color", false);
            h2Var.o("control_size", true);
            h2Var.o("background_color", true);
            f32432b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final o deserialize(@NotNull Decoder decoder) {
            boolean z10;
            Color color;
            int i10;
            ms.n nVar;
            l lVar;
            v vVar;
            Color color2;
            ms.n nVar2;
            boolean z11;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32432b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            int i11 = 6;
            if (beginStructure.decodeSequentially()) {
                boolean decodeBooleanElement = beginStructure.decodeBooleanElement(serialDescriptor, 0);
                j3 j3Var = j3.f69459a;
                h hVar = h.f32377a;
                z10 = decodeBooleanElement;
                color = (Color) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, hVar, null);
                nVar2 = (ms.n) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, j3Var, null);
                vVar = (v) beginStructure.decodeSerializableElement(serialDescriptor, 3, v.a.f32495a, null);
                color2 = (Color) beginStructure.decodeSerializableElement(serialDescriptor, 4, hVar, null);
                lVar = (l) beginStructure.decodeSerializableElement(serialDescriptor, 2, l.a.f32413a, null);
                nVar = (ms.n) beginStructure.decodeSerializableElement(serialDescriptor, 1, j3Var, null);
                i10 = 127;
            } else {
                boolean z12 = true;
                boolean z13 = false;
                ms.n nVar3 = null;
                l lVar2 = null;
                v vVar2 = null;
                Color color3 = null;
                ms.n nVar4 = null;
                Color color4 = null;
                int i12 = 0;
                while (z12) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    switch (decodeElementIndex) {
                        case -1:
                            z12 = false;
                        case 0:
                            z11 = true;
                            z13 = beginStructure.decodeBooleanElement(serialDescriptor, 0);
                            i12 |= 1;
                            i11 = 6;
                        case 1:
                            z11 = true;
                            nVar3 = (ms.n) beginStructure.decodeSerializableElement(serialDescriptor, 1, j3.f69459a, nVar3);
                            i12 |= 2;
                            i11 = 6;
                        case 2:
                            lVar2 = (l) beginStructure.decodeSerializableElement(serialDescriptor, 2, l.a.f32413a, lVar2);
                            i12 |= 4;
                        case 3:
                            vVar2 = (v) beginStructure.decodeSerializableElement(serialDescriptor, 3, v.a.f32495a, vVar2);
                            i12 |= 8;
                        case 4:
                            color3 = (Color) beginStructure.decodeSerializableElement(serialDescriptor, 4, h.f32377a, color3);
                            i12 |= 16;
                        case 5:
                            nVar4 = (ms.n) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, j3.f69459a, nVar4);
                            i12 |= 32;
                        case 6:
                            color4 = (Color) beginStructure.decodeNullableSerializableElement(serialDescriptor, i11, h.f32377a, color4);
                            i12 |= 64;
                        default:
                            throw new UnknownFieldException(decodeElementIndex);
                    }
                }
                z10 = z13;
                color = color4;
                i10 = i12;
                nVar = nVar3;
                lVar = lVar2;
                vVar = vVar2;
                color2 = color3;
                nVar2 = nVar4;
            }
            beginStructure.endStructure(serialDescriptor);
            return new o(i10, z10, nVar, lVar, vVar, color2, nVar2, color, null, null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull o value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32432b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            o.b(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            j3 j3Var = j3.f69459a;
            h hVar = h.f32377a;
            return new KSerializer[]{vt.i.f69441a, j3Var, l.a.f32413a, v.a.f32495a, hVar, tt.a.t(j3Var), tt.a.t(hVar)};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32432b;
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
        public final KSerializer<o> serializer() {
            return a.f32431a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ o(int i10, boolean z10, ms.n nVar, l lVar, v vVar, Color color, ms.n nVar2, Color color2, r2 r2Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, z10, nVar, lVar, vVar, color, nVar2, color2, r2Var);
    }

    public static final /* synthetic */ void b(o oVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        dVar.encodeBooleanElement(serialDescriptor, 0, oVar.f32424a);
        j3 j3Var = j3.f69459a;
        dVar.encodeSerializableElement(serialDescriptor, 1, j3Var, ms.n.a(oVar.f32425b));
        dVar.encodeSerializableElement(serialDescriptor, 2, l.a.f32413a, oVar.f32426c);
        dVar.encodeSerializableElement(serialDescriptor, 3, v.a.f32495a, oVar.f32427d);
        h hVar = h.f32377a;
        dVar.encodeSerializableElement(serialDescriptor, 4, hVar, Color.m1832boximpl(oVar.f32428e));
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 5) || oVar.f32429f != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 5, j3Var, oVar.f32429f);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 6) || oVar.f32430g != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 6, hVar, oVar.f32430g);
        }
    }

    @Nullable
    public final Color a() {
        return this.f32430g;
    }

    @Nullable
    public final ms.n c() {
        return this.f32429f;
    }

    public final long d() {
        return this.f32428e;
    }

    @NotNull
    public final l e() {
        return this.f32426c;
    }

    public final boolean f() {
        return this.f32424a;
    }

    public final int g() {
        return this.f32425b;
    }

    @NotNull
    public final v h() {
        return this.f32427d;
    }

    public /* synthetic */ o(boolean z10, int i10, l lVar, v vVar, long j10, ms.n nVar, Color color, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, i10, lVar, vVar, j10, nVar, color);
    }

    public /* synthetic */ o(int i10, boolean z10, ms.n nVar, l lVar, v vVar, Color color, ms.n nVar2, Color color2, r2 r2Var) {
        if (31 != (i10 & 31)) {
            c2.a(i10, 31, a.f32431a.getDescriptor());
        }
        this.f32424a = z10;
        this.f32425b = nVar.g();
        this.f32426c = lVar;
        this.f32427d = vVar;
        this.f32428e = color.m1852unboximpl();
        if ((i10 & 32) == 0) {
            this.f32429f = null;
        } else {
            this.f32429f = nVar2;
        }
        if ((i10 & 64) == 0) {
            this.f32430g = null;
        } else {
            this.f32430g = color2;
        }
    }

    public o(boolean z10, int i10, l horizontalAlignment, v verticalAlignment, long j10, ms.n nVar, Color color) {
        Intrinsics.checkNotNullParameter(horizontalAlignment, "horizontalAlignment");
        Intrinsics.checkNotNullParameter(verticalAlignment, "verticalAlignment");
        this.f32424a = z10;
        this.f32425b = i10;
        this.f32426c = horizontalAlignment;
        this.f32427d = verticalAlignment;
        this.f32428e = j10;
        this.f32429f = nVar;
        this.f32430g = color;
    }

    public /* synthetic */ o(boolean z10, int i10, l lVar, v vVar, long j10, ms.n nVar, Color color, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, i10, lVar, vVar, j10, (i11 & 32) != 0 ? null : nVar, (i11 & 64) != 0 ? null : color, null);
    }
}
