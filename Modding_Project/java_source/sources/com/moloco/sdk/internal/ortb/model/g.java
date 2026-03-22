package com.moloco.sdk.internal.ortb.model;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
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
import vt.w2;
@StabilityInferred(parameters = 1)
@st.k
/* loaded from: classes6.dex */
public final class g {
    @NotNull
    public static final b Companion = new b(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f32367a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f32368b;

    /* renamed from: c  reason: collision with root package name */
    public final int f32369c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final l f32370d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final v f32371e;

    /* renamed from: f  reason: collision with root package name */
    public final long f32372f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final Color f32373g;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<g> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32374a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32375b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32376c;

        static {
            a aVar = new a();
            f32374a = aVar;
            f32376c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.CTA", aVar, 7);
            h2Var.o(MimeTypes.BASE_TYPE_TEXT, false);
            h2Var.o(CampaignEx.JSON_KEY_IMAGE_URL, true);
            h2Var.o("padding", false);
            h2Var.o("horizontal_alignment", false);
            h2Var.o("vertical_alignment", false);
            h2Var.o("foreground_color", false);
            h2Var.o("background_color", true);
            f32375b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final g deserialize(@NotNull Decoder decoder) {
            int i10;
            Color color;
            String str;
            String str2;
            ms.n nVar;
            l lVar;
            v vVar;
            Color color2;
            boolean z10;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32375b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            int i11 = 6;
            String str3 = null;
            if (beginStructure.decodeSequentially()) {
                String decodeStringElement = beginStructure.decodeStringElement(serialDescriptor, 0);
                h hVar = h.f32377a;
                str = decodeStringElement;
                color = (Color) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, hVar, null);
                color2 = (Color) beginStructure.decodeSerializableElement(serialDescriptor, 5, hVar, null);
                lVar = (l) beginStructure.decodeSerializableElement(serialDescriptor, 3, l.a.f32413a, null);
                vVar = (v) beginStructure.decodeSerializableElement(serialDescriptor, 4, v.a.f32495a, null);
                nVar = (ms.n) beginStructure.decodeSerializableElement(serialDescriptor, 2, j3.f69459a, null);
                str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, w2.f69539a, null);
                i10 = 127;
            } else {
                boolean z11 = true;
                int i12 = 0;
                Color color3 = null;
                String str4 = null;
                ms.n nVar2 = null;
                l lVar2 = null;
                v vVar2 = null;
                Color color4 = null;
                while (z11) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    switch (decodeElementIndex) {
                        case -1:
                            z11 = false;
                        case 0:
                            z10 = true;
                            str3 = beginStructure.decodeStringElement(serialDescriptor, 0);
                            i12 |= 1;
                            i11 = 6;
                        case 1:
                            z10 = true;
                            str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, w2.f69539a, str4);
                            i12 |= 2;
                            i11 = 6;
                        case 2:
                            nVar2 = (ms.n) beginStructure.decodeSerializableElement(serialDescriptor, 2, j3.f69459a, nVar2);
                            i12 |= 4;
                        case 3:
                            lVar2 = (l) beginStructure.decodeSerializableElement(serialDescriptor, 3, l.a.f32413a, lVar2);
                            i12 |= 8;
                        case 4:
                            vVar2 = (v) beginStructure.decodeSerializableElement(serialDescriptor, 4, v.a.f32495a, vVar2);
                            i12 |= 16;
                        case 5:
                            color4 = (Color) beginStructure.decodeSerializableElement(serialDescriptor, 5, h.f32377a, color4);
                            i12 |= 32;
                        case 6:
                            color3 = (Color) beginStructure.decodeNullableSerializableElement(serialDescriptor, i11, h.f32377a, color3);
                            i12 |= 64;
                        default:
                            throw new UnknownFieldException(decodeElementIndex);
                    }
                }
                i10 = i12;
                color = color3;
                str = str3;
                str2 = str4;
                nVar = nVar2;
                lVar = lVar2;
                vVar = vVar2;
                color2 = color4;
            }
            beginStructure.endStructure(serialDescriptor);
            return new g(i10, str, str2, nVar, lVar, vVar, color2, color, null, null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull g value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32375b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            g.b(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            w2 w2Var = w2.f69539a;
            KSerializer<?> t10 = tt.a.t(w2Var);
            h hVar = h.f32377a;
            return new KSerializer[]{w2Var, t10, j3.f69459a, l.a.f32413a, v.a.f32495a, hVar, tt.a.t(hVar)};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32375b;
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
        public final KSerializer<g> serializer() {
            return a.f32374a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ g(int i10, String str, String str2, ms.n nVar, l lVar, v vVar, Color color, Color color2, r2 r2Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, str, str2, nVar, lVar, vVar, color, color2, r2Var);
    }

    public static final /* synthetic */ void b(g gVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        dVar.encodeStringElement(serialDescriptor, 0, gVar.f32367a);
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 1) || gVar.f32368b != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 1, w2.f69539a, gVar.f32368b);
        }
        dVar.encodeSerializableElement(serialDescriptor, 2, j3.f69459a, ms.n.a(gVar.f32369c));
        dVar.encodeSerializableElement(serialDescriptor, 3, l.a.f32413a, gVar.f32370d);
        dVar.encodeSerializableElement(serialDescriptor, 4, v.a.f32495a, gVar.f32371e);
        h hVar = h.f32377a;
        dVar.encodeSerializableElement(serialDescriptor, 5, hVar, Color.m1832boximpl(gVar.f32372f));
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 6) || gVar.f32373g != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 6, hVar, gVar.f32373g);
        }
    }

    @Nullable
    public final Color a() {
        return this.f32373g;
    }

    public final long c() {
        return this.f32372f;
    }

    @NotNull
    public final l d() {
        return this.f32370d;
    }

    @Nullable
    public final String e() {
        return this.f32368b;
    }

    public final int f() {
        return this.f32369c;
    }

    @NotNull
    public final String g() {
        return this.f32367a;
    }

    @NotNull
    public final v h() {
        return this.f32371e;
    }

    public /* synthetic */ g(int i10, String str, String str2, ms.n nVar, l lVar, v vVar, Color color, Color color2, r2 r2Var) {
        if (61 != (i10 & 61)) {
            c2.a(i10, 61, a.f32374a.getDescriptor());
        }
        this.f32367a = str;
        if ((i10 & 2) == 0) {
            this.f32368b = null;
        } else {
            this.f32368b = str2;
        }
        this.f32369c = nVar.g();
        this.f32370d = lVar;
        this.f32371e = vVar;
        this.f32372f = color.m1852unboximpl();
        if ((i10 & 64) == 0) {
            this.f32373g = null;
        } else {
            this.f32373g = color2;
        }
    }
}
