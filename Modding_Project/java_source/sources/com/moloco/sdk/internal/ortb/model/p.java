package com.moloco.sdk.internal.ortb.model;

import androidx.compose.runtime.internal.StabilityInferred;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.moloco.sdk.internal.ortb.model.a;
import com.moloco.sdk.internal.ortb.model.g;
import com.moloco.sdk.internal.ortb.model.i;
import com.moloco.sdk.internal.ortb.model.j;
import com.moloco.sdk.internal.ortb.model.o;
import com.moloco.sdk.internal.ortb.model.q;
import com.moloco.sdk.internal.ortb.model.t;
import com.moloco.sdk.internal.ortb.model.u;
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
import vt.m0;
import vt.r2;
@StabilityInferred(parameters = 1)
@st.k
/* loaded from: classes6.dex */
public final class p {
    @NotNull
    public static final b Companion = new b(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final t f32434a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final t f32435b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final q f32436c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final o f32437d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final g f32438e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f32439f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final com.moloco.sdk.internal.ortb.model.a f32440g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final u f32441h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final j f32442i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final i f32443j;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<p> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32444a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32445b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32446c;

        static {
            a aVar = new a();
            f32444a = aVar;
            f32446c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.Player", aVar, 10);
            h2Var.o("skip", true);
            h2Var.o("close", false);
            h2Var.o("progress_bar", true);
            h2Var.o("mute", false);
            h2Var.o(InMobiNetworkValues.CTA, true);
            h2Var.o("is_all_area_clickable", false);
            h2Var.o("auto_store", true);
            h2Var.o("vast_privacy_icon", true);
            h2Var.o("dec", true);
            h2Var.o("countdown_timer", true);
            f32445b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final p deserialize(@NotNull Decoder decoder) {
            boolean z10;
            i iVar;
            j jVar;
            com.moloco.sdk.internal.ortb.model.a aVar;
            u uVar;
            g gVar;
            o oVar;
            q qVar;
            int i10;
            t tVar;
            t tVar2;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32445b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            int i11 = 9;
            if (beginStructure.decodeSequentially()) {
                t.a aVar2 = t.a.f32480a;
                boolean decodeBooleanElement = beginStructure.decodeBooleanElement(serialDescriptor, 5);
                tVar2 = (t) beginStructure.decodeSerializableElement(serialDescriptor, 1, aVar2, null);
                iVar = (i) beginStructure.decodeNullableSerializableElement(serialDescriptor, 9, i.a.f32387a, null);
                uVar = (u) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, u.a.f32486a, null);
                aVar = (com.moloco.sdk.internal.ortb.model.a) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, a.C0474a.f32338a, null);
                z10 = decodeBooleanElement;
                oVar = (o) beginStructure.decodeSerializableElement(serialDescriptor, 3, o.a.f32431a, null);
                jVar = (j) beginStructure.decodeNullableSerializableElement(serialDescriptor, 8, j.a.f32398a, null);
                gVar = (g) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, g.a.f32374a, null);
                qVar = (q) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, q.a.f32451a, null);
                i10 = 1023;
                tVar = (t) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, aVar2, null);
            } else {
                boolean z11 = true;
                boolean z12 = false;
                i iVar2 = null;
                j jVar2 = null;
                com.moloco.sdk.internal.ortb.model.a aVar3 = null;
                u uVar2 = null;
                g gVar2 = null;
                o oVar2 = null;
                t tVar3 = null;
                t tVar4 = null;
                q qVar2 = null;
                int i12 = 0;
                while (z11) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    switch (decodeElementIndex) {
                        case -1:
                            z11 = false;
                            break;
                        case 0:
                            tVar3 = (t) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, t.a.f32480a, tVar3);
                            i12 |= 1;
                            i11 = 9;
                            break;
                        case 1:
                            tVar4 = (t) beginStructure.decodeSerializableElement(serialDescriptor, 1, t.a.f32480a, tVar4);
                            i12 |= 2;
                            i11 = 9;
                            break;
                        case 2:
                            qVar2 = (q) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, q.a.f32451a, qVar2);
                            i12 |= 4;
                            i11 = 9;
                            break;
                        case 3:
                            oVar2 = (o) beginStructure.decodeSerializableElement(serialDescriptor, 3, o.a.f32431a, oVar2);
                            i12 |= 8;
                            i11 = 9;
                            break;
                        case 4:
                            gVar2 = (g) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, g.a.f32374a, gVar2);
                            i12 |= 16;
                            i11 = 9;
                            break;
                        case 5:
                            z12 = beginStructure.decodeBooleanElement(serialDescriptor, 5);
                            i12 |= 32;
                            i11 = 9;
                            break;
                        case 6:
                            aVar3 = (com.moloco.sdk.internal.ortb.model.a) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, a.C0474a.f32338a, aVar3);
                            i12 |= 64;
                            i11 = 9;
                            break;
                        case 7:
                            uVar2 = (u) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, u.a.f32486a, uVar2);
                            i12 |= 128;
                            i11 = 9;
                            continue;
                        case 8:
                            jVar2 = (j) beginStructure.decodeNullableSerializableElement(serialDescriptor, 8, j.a.f32398a, jVar2);
                            i12 |= 256;
                            break;
                        case 9:
                            iVar2 = (i) beginStructure.decodeNullableSerializableElement(serialDescriptor, i11, i.a.f32387a, iVar2);
                            i12 |= 512;
                            break;
                        default:
                            throw new UnknownFieldException(decodeElementIndex);
                    }
                }
                z10 = z12;
                iVar = iVar2;
                jVar = jVar2;
                aVar = aVar3;
                uVar = uVar2;
                gVar = gVar2;
                oVar = oVar2;
                qVar = qVar2;
                i10 = i12;
                tVar = tVar3;
                tVar2 = tVar4;
            }
            beginStructure.endStructure(serialDescriptor);
            return new p(i10, tVar, tVar2, qVar, oVar, gVar, z10, aVar, uVar, jVar, iVar, (r2) null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull p value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32445b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            p.b(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            t.a aVar = t.a.f32480a;
            return new KSerializer[]{tt.a.t(aVar), aVar, tt.a.t(q.a.f32451a), o.a.f32431a, tt.a.t(g.a.f32374a), vt.i.f69441a, tt.a.t(a.C0474a.f32338a), tt.a.t(u.a.f32486a), tt.a.t(j.a.f32398a), tt.a.t(i.a.f32387a)};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32445b;
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
        public final KSerializer<p> serializer() {
            return a.f32444a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ p(int i10, t tVar, t tVar2, q qVar, o oVar, g gVar, boolean z10, com.moloco.sdk.internal.ortb.model.a aVar, u uVar, j jVar, i iVar, r2 r2Var) {
        if (42 != (i10 & 42)) {
            c2.a(i10, 42, a.f32444a.getDescriptor());
        }
        if ((i10 & 1) == 0) {
            this.f32434a = null;
        } else {
            this.f32434a = tVar;
        }
        this.f32435b = tVar2;
        if ((i10 & 4) == 0) {
            this.f32436c = null;
        } else {
            this.f32436c = qVar;
        }
        this.f32437d = oVar;
        if ((i10 & 16) == 0) {
            this.f32438e = null;
        } else {
            this.f32438e = gVar;
        }
        this.f32439f = z10;
        if ((i10 & 64) == 0) {
            this.f32440g = null;
        } else {
            this.f32440g = aVar;
        }
        if ((i10 & 128) == 0) {
            this.f32441h = null;
        } else {
            this.f32441h = uVar;
        }
        if ((i10 & 256) == 0) {
            this.f32442i = null;
        } else {
            this.f32442i = jVar;
        }
        if ((i10 & 512) == 0) {
            this.f32443j = null;
        } else {
            this.f32443j = iVar;
        }
    }

    public static final /* synthetic */ void b(p pVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 0) || pVar.f32434a != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 0, t.a.f32480a, pVar.f32434a);
        }
        dVar.encodeSerializableElement(serialDescriptor, 1, t.a.f32480a, pVar.f32435b);
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 2) || pVar.f32436c != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 2, q.a.f32451a, pVar.f32436c);
        }
        dVar.encodeSerializableElement(serialDescriptor, 3, o.a.f32431a, pVar.f32437d);
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 4) || pVar.f32438e != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 4, g.a.f32374a, pVar.f32438e);
        }
        dVar.encodeBooleanElement(serialDescriptor, 5, pVar.f32439f);
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 6) || pVar.f32440g != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 6, a.C0474a.f32338a, pVar.f32440g);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 7) || pVar.f32441h != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 7, u.a.f32486a, pVar.f32441h);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 8) || pVar.f32442i != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 8, j.a.f32398a, pVar.f32442i);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 9) || pVar.f32443j != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 9, i.a.f32387a, pVar.f32443j);
        }
    }

    @Nullable
    public final com.moloco.sdk.internal.ortb.model.a a() {
        return this.f32440g;
    }

    @NotNull
    public final t c() {
        return this.f32435b;
    }

    @Nullable
    public final i d() {
        return this.f32443j;
    }

    @Nullable
    public final g e() {
        return this.f32438e;
    }

    @Nullable
    public final j f() {
        return this.f32442i;
    }

    @NotNull
    public final o g() {
        return this.f32437d;
    }

    @Nullable
    public final q h() {
        return this.f32436c;
    }

    @Nullable
    public final t i() {
        return this.f32434a;
    }

    @Nullable
    public final u j() {
        return this.f32441h;
    }

    public final boolean k() {
        return this.f32439f;
    }

    public p(@Nullable t tVar, @NotNull t close, @Nullable q qVar, @NotNull o mute, @Nullable g gVar, boolean z10, @Nullable com.moloco.sdk.internal.ortb.model.a aVar, @Nullable u uVar, @Nullable j jVar, @Nullable i iVar) {
        Intrinsics.checkNotNullParameter(close, "close");
        Intrinsics.checkNotNullParameter(mute, "mute");
        this.f32434a = tVar;
        this.f32435b = close;
        this.f32436c = qVar;
        this.f32437d = mute;
        this.f32438e = gVar;
        this.f32439f = z10;
        this.f32440g = aVar;
        this.f32441h = uVar;
        this.f32442i = jVar;
        this.f32443j = iVar;
    }

    public /* synthetic */ p(t tVar, t tVar2, q qVar, o oVar, g gVar, boolean z10, com.moloco.sdk.internal.ortb.model.a aVar, u uVar, j jVar, i iVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : tVar, tVar2, (i10 & 4) != 0 ? null : qVar, oVar, (i10 & 16) != 0 ? null : gVar, z10, (i10 & 64) != 0 ? null : aVar, (i10 & 128) != 0 ? null : uVar, (i10 & 256) != 0 ? null : jVar, (i10 & 512) != 0 ? null : iVar);
    }
}
