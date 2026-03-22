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
public final class t {
    @NotNull
    public static final b Companion = new b(null);

    /* renamed from: a  reason: collision with root package name */
    public final int f32473a;

    /* renamed from: b  reason: collision with root package name */
    public final int f32474b;

    /* renamed from: c  reason: collision with root package name */
    public final int f32475c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final l f32476d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final v f32477e;

    /* renamed from: f  reason: collision with root package name */
    public final long f32478f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final Color f32479g;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<t> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32480a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32481b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32482c;

        static {
            a aVar = new a();
            f32480a = aVar;
            f32482c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.SkipClose", aVar, 7);
            h2Var.o("delay_seconds", false);
            h2Var.o("padding", false);
            h2Var.o("control_size", false);
            h2Var.o("horizontal_alignment", false);
            h2Var.o("vertical_alignment", false);
            h2Var.o("foreground_color", false);
            h2Var.o("background_color", true);
            f32481b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final t deserialize(@NotNull Decoder decoder) {
            int i10;
            Color color;
            ms.n nVar;
            ms.n nVar2;
            ms.n nVar3;
            l lVar;
            v vVar;
            Color color2;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32481b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            int i11 = 6;
            ms.n nVar4 = null;
            if (beginStructure.decodeSequentially()) {
                j3 j3Var = j3.f69459a;
                h hVar = h.f32377a;
                nVar3 = (ms.n) beginStructure.decodeSerializableElement(serialDescriptor, 2, j3Var, null);
                color = (Color) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, hVar, null);
                color2 = (Color) beginStructure.decodeSerializableElement(serialDescriptor, 5, hVar, null);
                lVar = (l) beginStructure.decodeSerializableElement(serialDescriptor, 3, l.a.f32413a, null);
                vVar = (v) beginStructure.decodeSerializableElement(serialDescriptor, 4, v.a.f32495a, null);
                i10 = 127;
                nVar2 = (ms.n) beginStructure.decodeSerializableElement(serialDescriptor, 1, j3Var, null);
                nVar = (ms.n) beginStructure.decodeSerializableElement(serialDescriptor, 0, j3Var, null);
            } else {
                boolean z10 = true;
                int i12 = 0;
                Color color3 = null;
                ms.n nVar5 = null;
                ms.n nVar6 = null;
                l lVar2 = null;
                v vVar2 = null;
                Color color4 = null;
                while (z10) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    switch (decodeElementIndex) {
                        case -1:
                            z10 = false;
                            i11 = 6;
                            break;
                        case 0:
                            nVar4 = (ms.n) beginStructure.decodeSerializableElement(serialDescriptor, 0, j3.f69459a, nVar4);
                            i12 |= 1;
                            i11 = 6;
                            break;
                        case 1:
                            nVar5 = (ms.n) beginStructure.decodeSerializableElement(serialDescriptor, 1, j3.f69459a, nVar5);
                            i12 |= 2;
                            i11 = 6;
                            continue;
                        case 2:
                            nVar6 = (ms.n) beginStructure.decodeSerializableElement(serialDescriptor, 2, j3.f69459a, nVar6);
                            i12 |= 4;
                            break;
                        case 3:
                            lVar2 = (l) beginStructure.decodeSerializableElement(serialDescriptor, 3, l.a.f32413a, lVar2);
                            i12 |= 8;
                            break;
                        case 4:
                            vVar2 = (v) beginStructure.decodeSerializableElement(serialDescriptor, 4, v.a.f32495a, vVar2);
                            i12 |= 16;
                            break;
                        case 5:
                            color4 = (Color) beginStructure.decodeSerializableElement(serialDescriptor, 5, h.f32377a, color4);
                            i12 |= 32;
                            break;
                        case 6:
                            color3 = (Color) beginStructure.decodeNullableSerializableElement(serialDescriptor, i11, h.f32377a, color3);
                            i12 |= 64;
                            break;
                        default:
                            throw new UnknownFieldException(decodeElementIndex);
                    }
                }
                i10 = i12;
                color = color3;
                nVar = nVar4;
                nVar2 = nVar5;
                nVar3 = nVar6;
                lVar = lVar2;
                vVar = vVar2;
                color2 = color4;
            }
            beginStructure.endStructure(serialDescriptor);
            return new t(i10, nVar, nVar2, nVar3, lVar, vVar, color2, color, null, null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull t value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32481b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            t.b(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            h hVar = h.f32377a;
            KSerializer<?> t10 = tt.a.t(hVar);
            j3 j3Var = j3.f69459a;
            return new KSerializer[]{j3Var, j3Var, j3Var, l.a.f32413a, v.a.f32495a, hVar, t10};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32481b;
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
        public final KSerializer<t> serializer() {
            return a.f32480a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ t(int i10, int i11, int i12, l lVar, v vVar, long j10, Color color, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, i12, lVar, vVar, j10, color);
    }

    public static final /* synthetic */ void b(t tVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        j3 j3Var = j3.f69459a;
        dVar.encodeSerializableElement(serialDescriptor, 0, j3Var, ms.n.a(tVar.f32473a));
        dVar.encodeSerializableElement(serialDescriptor, 1, j3Var, ms.n.a(tVar.f32474b));
        dVar.encodeSerializableElement(serialDescriptor, 2, j3Var, ms.n.a(tVar.f32475c));
        dVar.encodeSerializableElement(serialDescriptor, 3, l.a.f32413a, tVar.f32476d);
        dVar.encodeSerializableElement(serialDescriptor, 4, v.a.f32495a, tVar.f32477e);
        h hVar = h.f32377a;
        dVar.encodeSerializableElement(serialDescriptor, 5, hVar, Color.m1832boximpl(tVar.f32478f));
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 6) || tVar.f32479g != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 6, hVar, tVar.f32479g);
        }
    }

    @Nullable
    public final Color a() {
        return this.f32479g;
    }

    public final int c() {
        return this.f32475c;
    }

    public final int d() {
        return this.f32473a;
    }

    public final long e() {
        return this.f32478f;
    }

    @NotNull
    public final l f() {
        return this.f32476d;
    }

    public final int g() {
        return this.f32474b;
    }

    @NotNull
    public final v h() {
        return this.f32477e;
    }

    public /* synthetic */ t(int i10, ms.n nVar, ms.n nVar2, ms.n nVar3, l lVar, v vVar, Color color, Color color2, r2 r2Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, nVar, nVar2, nVar3, lVar, vVar, color, color2, r2Var);
    }

    public /* synthetic */ t(int i10, ms.n nVar, ms.n nVar2, ms.n nVar3, l lVar, v vVar, Color color, Color color2, r2 r2Var) {
        if (63 != (i10 & 63)) {
            c2.a(i10, 63, a.f32480a.getDescriptor());
        }
        this.f32473a = nVar.g();
        this.f32474b = nVar2.g();
        this.f32475c = nVar3.g();
        this.f32476d = lVar;
        this.f32477e = vVar;
        this.f32478f = color.m1852unboximpl();
        if ((i10 & 64) == 0) {
            this.f32479g = null;
        } else {
            this.f32479g = color2;
        }
    }

    public t(int i10, int i11, int i12, l horizontalAlignment, v verticalAlignment, long j10, Color color) {
        Intrinsics.checkNotNullParameter(horizontalAlignment, "horizontalAlignment");
        Intrinsics.checkNotNullParameter(verticalAlignment, "verticalAlignment");
        this.f32473a = i10;
        this.f32474b = i11;
        this.f32475c = i12;
        this.f32476d = horizontalAlignment;
        this.f32477e = verticalAlignment;
        this.f32478f = j10;
        this.f32479g = color;
    }

    public /* synthetic */ t(int i10, int i11, int i12, l lVar, v vVar, long j10, Color color, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, i12, lVar, vVar, j10, (i13 & 64) != 0 ? null : color, null);
    }
}
