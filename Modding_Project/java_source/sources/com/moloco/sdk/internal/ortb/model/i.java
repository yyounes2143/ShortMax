package com.moloco.sdk.internal.ortb.model;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
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
import vt.h2;
import vt.j3;
import vt.m0;
import vt.r2;
import vt.v0;
import vt.w2;
@StabilityInferred(parameters = 1)
@st.k
/* loaded from: classes6.dex */
public final class i {
    @NotNull
    public static final b Companion = new b(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f32379a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f32380b;

    /* renamed from: c  reason: collision with root package name */
    public final int f32381c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final Integer f32382d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final l f32383e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final v f32384f;

    /* renamed from: g  reason: collision with root package name */
    public final long f32385g;

    /* renamed from: h  reason: collision with root package name */
    public final long f32386h;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<i> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32387a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32388b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32389c;

        static {
            a aVar = new a();
            f32387a = aVar;
            f32389c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.CountDownTimer", aVar, 8);
            h2Var.o("custom_timer_desc", true);
            h2Var.o("is_default_timer", true);
            h2Var.o("control_size", true);
            h2Var.o("padding", true);
            h2Var.o("horizontal_alignment", true);
            h2Var.o("vertical_alignment", true);
            h2Var.o("foreground_color", true);
            h2Var.o("background_color", true);
            f32388b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final i deserialize(@NotNull Decoder decoder) {
            boolean z10;
            Color color;
            Color color2;
            v vVar;
            int i10;
            String str;
            ms.n nVar;
            Integer num;
            l lVar;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32388b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            int i11 = 7;
            int i12 = 6;
            if (beginStructure.decodeSequentially()) {
                boolean decodeBooleanElement = beginStructure.decodeBooleanElement(serialDescriptor, 1);
                h hVar = h.f32377a;
                str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, w2.f69539a, null);
                color = (Color) beginStructure.decodeSerializableElement(serialDescriptor, 7, hVar, null);
                color2 = (Color) beginStructure.decodeSerializableElement(serialDescriptor, 6, hVar, null);
                vVar = (v) beginStructure.decodeSerializableElement(serialDescriptor, 5, v.a.f32495a, null);
                num = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, v0.f69529a, null);
                lVar = (l) beginStructure.decodeSerializableElement(serialDescriptor, 4, l.a.f32413a, null);
                nVar = (ms.n) beginStructure.decodeSerializableElement(serialDescriptor, 2, j3.f69459a, null);
                z10 = decodeBooleanElement;
                i10 = 255;
            } else {
                boolean z11 = true;
                boolean z12 = false;
                Color color3 = null;
                Color color4 = null;
                String str2 = null;
                ms.n nVar2 = null;
                Integer num2 = null;
                l lVar2 = null;
                v vVar2 = null;
                int i13 = 0;
                while (z11) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    switch (decodeElementIndex) {
                        case -1:
                            z11 = false;
                            i12 = 6;
                            break;
                        case 0:
                            str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, w2.f69539a, str2);
                            i13 |= 1;
                            i11 = 7;
                            i12 = 6;
                            break;
                        case 1:
                            z12 = beginStructure.decodeBooleanElement(serialDescriptor, 1);
                            i13 |= 2;
                            i11 = 7;
                            break;
                        case 2:
                            nVar2 = (ms.n) beginStructure.decodeSerializableElement(serialDescriptor, 2, j3.f69459a, nVar2);
                            i13 |= 4;
                            i11 = 7;
                            break;
                        case 3:
                            num2 = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, v0.f69529a, num2);
                            i13 |= 8;
                            i11 = 7;
                            continue;
                        case 4:
                            lVar2 = (l) beginStructure.decodeSerializableElement(serialDescriptor, 4, l.a.f32413a, lVar2);
                            i13 |= 16;
                            break;
                        case 5:
                            vVar2 = (v) beginStructure.decodeSerializableElement(serialDescriptor, 5, v.a.f32495a, vVar2);
                            i13 |= 32;
                            break;
                        case 6:
                            color4 = (Color) beginStructure.decodeSerializableElement(serialDescriptor, i12, h.f32377a, color4);
                            i13 |= 64;
                            break;
                        case 7:
                            color3 = (Color) beginStructure.decodeSerializableElement(serialDescriptor, i11, h.f32377a, color3);
                            i13 |= 128;
                            break;
                        default:
                            throw new UnknownFieldException(decodeElementIndex);
                    }
                }
                z10 = z12;
                color = color3;
                color2 = color4;
                vVar = vVar2;
                i10 = i13;
                str = str2;
                nVar = nVar2;
                num = num2;
                lVar = lVar2;
            }
            beginStructure.endStructure(serialDescriptor);
            return new i(i10, str, z10, nVar, num, lVar, vVar, color2, color, null, null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull i value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32388b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            i.b(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            KSerializer<?> t10 = tt.a.t(w2.f69539a);
            KSerializer<?> t11 = tt.a.t(v0.f69529a);
            h hVar = h.f32377a;
            return new KSerializer[]{t10, vt.i.f69441a, j3.f69459a, t11, l.a.f32413a, v.a.f32495a, hVar, hVar};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32388b;
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
        public final KSerializer<i> serializer() {
            return a.f32387a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ i(int i10, String str, boolean z10, ms.n nVar, Integer num, l lVar, v vVar, Color color, Color color2, r2 r2Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, str, z10, nVar, num, lVar, vVar, color, color2, r2Var);
    }

    public static final /* synthetic */ void b(i iVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 0) || iVar.f32379a != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 0, w2.f69539a, iVar.f32379a);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 1) || !iVar.f32380b) {
            dVar.encodeBooleanElement(serialDescriptor, 1, iVar.f32380b);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 2) || iVar.f32381c != 30) {
            dVar.encodeSerializableElement(serialDescriptor, 2, j3.f69459a, ms.n.a(iVar.f32381c));
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 3) || iVar.f32382d != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 3, v0.f69529a, iVar.f32382d);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 4) || iVar.f32383e != l.f32410f) {
            dVar.encodeSerializableElement(serialDescriptor, 4, l.a.f32413a, iVar.f32383e);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 5) || iVar.f32384f != v.f32490b) {
            dVar.encodeSerializableElement(serialDescriptor, 5, v.a.f32495a, iVar.f32384f);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 6) || !Color.m1843equalsimpl0(iVar.f32385g, ColorKt.Color(android.graphics.Color.parseColor("#FF4285f4")))) {
            dVar.encodeSerializableElement(serialDescriptor, 6, h.f32377a, Color.m1832boximpl(iVar.f32385g));
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 7) || !Color.m1843equalsimpl0(iVar.f32386h, ColorKt.Color(android.graphics.Color.parseColor("#FFFFFFFF")))) {
            dVar.encodeSerializableElement(serialDescriptor, 7, h.f32377a, Color.m1832boximpl(iVar.f32386h));
        }
    }

    public final long a() {
        return this.f32386h;
    }

    public final int c() {
        return this.f32381c;
    }

    @Nullable
    public final String d() {
        return this.f32379a;
    }

    public final long e() {
        return this.f32385g;
    }

    @NotNull
    public final l f() {
        return this.f32383e;
    }

    @NotNull
    public final v g() {
        return this.f32384f;
    }

    public final boolean h() {
        return this.f32380b;
    }

    public /* synthetic */ i(int i10, String str, boolean z10, ms.n nVar, Integer num, l lVar, v vVar, Color color, Color color2, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this.f32379a = null;
        } else {
            this.f32379a = str;
        }
        if ((i10 & 2) == 0) {
            this.f32380b = true;
        } else {
            this.f32380b = z10;
        }
        this.f32381c = (i10 & 4) == 0 ? 30 : nVar.g();
        if ((i10 & 8) == 0) {
            this.f32382d = null;
        } else {
            this.f32382d = num;
        }
        if ((i10 & 16) == 0) {
            this.f32383e = l.f32410f;
        } else {
            this.f32383e = lVar;
        }
        if ((i10 & 32) == 0) {
            this.f32384f = v.f32490b;
        } else {
            this.f32384f = vVar;
        }
        this.f32385g = (i10 & 64) == 0 ? ColorKt.Color(android.graphics.Color.parseColor("#FF4285f4")) : color.m1852unboximpl();
        this.f32386h = (i10 & 128) == 0 ? ColorKt.Color(android.graphics.Color.parseColor("#FFFFFFFF")) : color2.m1852unboximpl();
    }
}
