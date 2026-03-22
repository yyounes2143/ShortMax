package com.moloco.sdk.internal.ortb.model;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.ortb.model.m;
import com.moloco.sdk.internal.ortb.model.n;
import com.moloco.sdk.internal.ortb.model.p;
import com.moloco.sdk.internal.ortb.model.r;
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
import vt.w2;
@StabilityInferred(parameters = 1)
@st.k
/* loaded from: classes6.dex */
public final class d {
    @NotNull
    public static final b Companion = new b(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final p f32353a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f32354b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final n f32355c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final r f32356d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final m f32357e;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<d> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32358a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32359b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32360c;

        static {
            a aVar = new a();
            f32358a = aVar;
            f32360c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.BidExt", aVar, 5);
            h2Var.o("player", true);
            h2Var.o("mtid", true);
            h2Var.o("moloco_sdk_configs", true);
            h2Var.o("moloco_sdk_events", true);
            h2Var.o("moloco_sdk_click_metadata", true);
            f32359b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final d deserialize(@NotNull Decoder decoder) {
            int i10;
            p pVar;
            String str;
            n nVar;
            r rVar;
            m mVar;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32359b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            p pVar2 = null;
            if (beginStructure.decodeSequentially()) {
                pVar = (p) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, p.a.f32444a, null);
                rVar = (r) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, r.a.f32464a, null);
                mVar = (m) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, m.a.f32417a, null);
                nVar = (n) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, n.a.f32421a, null);
                str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, w2.f69539a, null);
                i10 = 31;
            } else {
                boolean z10 = true;
                int i11 = 0;
                String str2 = null;
                n nVar2 = null;
                r rVar2 = null;
                m mVar2 = null;
                while (z10) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    if (decodeElementIndex != -1) {
                        if (decodeElementIndex != 0) {
                            if (decodeElementIndex != 1) {
                                if (decodeElementIndex != 2) {
                                    if (decodeElementIndex != 3) {
                                        if (decodeElementIndex == 4) {
                                            mVar2 = (m) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, m.a.f32417a, mVar2);
                                            i11 |= 16;
                                        } else {
                                            throw new UnknownFieldException(decodeElementIndex);
                                        }
                                    } else {
                                        rVar2 = (r) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, r.a.f32464a, rVar2);
                                        i11 |= 8;
                                    }
                                } else {
                                    nVar2 = (n) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, n.a.f32421a, nVar2);
                                    i11 |= 4;
                                }
                            } else {
                                str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, w2.f69539a, str2);
                                i11 |= 2;
                            }
                        } else {
                            pVar2 = (p) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, p.a.f32444a, pVar2);
                            i11 |= 1;
                        }
                    } else {
                        z10 = false;
                    }
                }
                i10 = i11;
                pVar = pVar2;
                str = str2;
                nVar = nVar2;
                rVar = rVar2;
                mVar = mVar2;
            }
            beginStructure.endStructure(serialDescriptor);
            return new d(i10, pVar, str, nVar, rVar, mVar, (r2) null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull d value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32359b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            d.b(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            return new KSerializer[]{tt.a.t(p.a.f32444a), tt.a.t(w2.f69539a), tt.a.t(n.a.f32421a), tt.a.t(r.a.f32464a), tt.a.t(m.a.f32417a)};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32359b;
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
        public final KSerializer<d> serializer() {
            return a.f32358a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public d() {
        this((p) null, (String) null, (n) null, (r) null, (m) null, 31, (DefaultConstructorMarker) null);
    }

    public static final /* synthetic */ void b(d dVar, kotlinx.serialization.encoding.d dVar2, SerialDescriptor serialDescriptor) {
        if (dVar2.shouldEncodeElementDefault(serialDescriptor, 0) || dVar.f32353a != null) {
            dVar2.encodeNullableSerializableElement(serialDescriptor, 0, p.a.f32444a, dVar.f32353a);
        }
        if (dVar2.shouldEncodeElementDefault(serialDescriptor, 1) || dVar.f32354b != null) {
            dVar2.encodeNullableSerializableElement(serialDescriptor, 1, w2.f69539a, dVar.f32354b);
        }
        if (dVar2.shouldEncodeElementDefault(serialDescriptor, 2) || dVar.f32355c != null) {
            dVar2.encodeNullableSerializableElement(serialDescriptor, 2, n.a.f32421a, dVar.f32355c);
        }
        if (dVar2.shouldEncodeElementDefault(serialDescriptor, 3) || dVar.f32356d != null) {
            dVar2.encodeNullableSerializableElement(serialDescriptor, 3, r.a.f32464a, dVar.f32356d);
        }
        if (dVar2.shouldEncodeElementDefault(serialDescriptor, 4) || dVar.f32357e != null) {
            dVar2.encodeNullableSerializableElement(serialDescriptor, 4, m.a.f32417a, dVar.f32357e);
        }
    }

    @Nullable
    public final n a() {
        return this.f32355c;
    }

    @Nullable
    public final m c() {
        return this.f32357e;
    }

    @Nullable
    public final String d() {
        return this.f32354b;
    }

    @Nullable
    public final p e() {
        return this.f32353a;
    }

    @Nullable
    public final r f() {
        return this.f32356d;
    }

    public /* synthetic */ d(int i10, p pVar, String str, n nVar, r rVar, m mVar, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this.f32353a = null;
        } else {
            this.f32353a = pVar;
        }
        if ((i10 & 2) == 0) {
            this.f32354b = null;
        } else {
            this.f32354b = str;
        }
        if ((i10 & 4) == 0) {
            this.f32355c = null;
        } else {
            this.f32355c = nVar;
        }
        if ((i10 & 8) == 0) {
            this.f32356d = null;
        } else {
            this.f32356d = rVar;
        }
        if ((i10 & 16) == 0) {
            this.f32357e = null;
        } else {
            this.f32357e = mVar;
        }
    }

    public d(@Nullable p pVar, @Nullable String str, @Nullable n nVar, @Nullable r rVar, @Nullable m mVar) {
        this.f32353a = pVar;
        this.f32354b = str;
        this.f32355c = nVar;
        this.f32356d = rVar;
        this.f32357e = mVar;
    }

    public /* synthetic */ d(p pVar, String str, n nVar, r rVar, m mVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : pVar, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : nVar, (i10 & 8) != 0 ? null : rVar, (i10 & 16) != 0 ? null : mVar);
    }
}
