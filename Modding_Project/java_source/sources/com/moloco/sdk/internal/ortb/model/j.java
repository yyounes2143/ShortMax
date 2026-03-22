package com.moloco.sdk.internal.ortb.model;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.ortb.model.k;
import com.ss.ttvideoengine.TTVideoEngineInterface;
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
public final class j {
    @NotNull
    public static final b Companion = new b(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f32390a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f32391b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f32392c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f32393d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final String f32394e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final String f32395f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final String f32396g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final k f32397h;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<j> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32398a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32399b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32400c;

        static {
            a aVar = new a();
            f32398a = aVar;
            f32400c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.DEC", aVar, 8);
            h2Var.o("app_icon_url", true);
            h2Var.o(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, true);
            h2Var.o("imp_link", true);
            h2Var.o("click_through", true);
            h2Var.o("click_tracking", true);
            h2Var.o("cta_text", true);
            h2Var.o("skip_event", true);
            h2Var.o("close", true);
            f32399b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final j deserialize(@NotNull Decoder decoder) {
            int i10;
            k kVar;
            String str;
            String str2;
            String str3;
            String str4;
            String str5;
            String str6;
            String str7;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32399b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            int i11 = 7;
            String str8 = null;
            if (beginStructure.decodeSequentially()) {
                w2 w2Var = w2.f69539a;
                str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, w2Var, null);
                kVar = (k) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, k.a.f32402a, null);
                i10 = 255;
                str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, w2Var, null);
                str6 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, w2Var, null);
                str7 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, w2Var, null);
                str5 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, w2Var, null);
                str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, w2Var, null);
                str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, w2Var, null);
            } else {
                boolean z10 = true;
                int i12 = 0;
                k kVar2 = null;
                String str9 = null;
                String str10 = null;
                String str11 = null;
                String str12 = null;
                String str13 = null;
                String str14 = null;
                while (z10) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    switch (decodeElementIndex) {
                        case -1:
                            z10 = false;
                            i11 = 7;
                            break;
                        case 0:
                            str8 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, w2.f69539a, str8);
                            i12 |= 1;
                            i11 = 7;
                            break;
                        case 1:
                            str11 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, w2.f69539a, str11);
                            i12 |= 2;
                            i11 = 7;
                            break;
                        case 2:
                            str12 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, w2.f69539a, str12);
                            i12 |= 4;
                            i11 = 7;
                            break;
                        case 3:
                            str13 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, w2.f69539a, str13);
                            i12 |= 8;
                            i11 = 7;
                            continue;
                        case 4:
                            str14 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, w2.f69539a, str14);
                            i12 |= 16;
                            break;
                        case 5:
                            str10 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, w2.f69539a, str10);
                            i12 |= 32;
                            break;
                        case 6:
                            str9 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, w2.f69539a, str9);
                            i12 |= 64;
                            break;
                        case 7:
                            kVar2 = (k) beginStructure.decodeNullableSerializableElement(serialDescriptor, i11, k.a.f32402a, kVar2);
                            i12 |= 128;
                            break;
                        default:
                            throw new UnknownFieldException(decodeElementIndex);
                    }
                }
                i10 = i12;
                kVar = kVar2;
                str = str9;
                str2 = str10;
                str3 = str8;
                str4 = str11;
                str5 = str12;
                str6 = str13;
                str7 = str14;
            }
            beginStructure.endStructure(serialDescriptor);
            return new j(i10, str3, str4, str5, str6, str7, str2, str, kVar, (r2) null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull j value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32399b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            j.b(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            w2 w2Var = w2.f69539a;
            return new KSerializer[]{tt.a.t(w2Var), tt.a.t(w2Var), tt.a.t(w2Var), tt.a.t(w2Var), tt.a.t(w2Var), tt.a.t(w2Var), tt.a.t(w2Var), tt.a.t(k.a.f32402a)};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32399b;
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
        public final KSerializer<j> serializer() {
            return a.f32398a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public j() {
        this((String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (k) null, 255, (DefaultConstructorMarker) null);
    }

    public static final /* synthetic */ void b(j jVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 0) || jVar.f32390a != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 0, w2.f69539a, jVar.f32390a);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 1) || jVar.f32391b != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 1, w2.f69539a, jVar.f32391b);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 2) || jVar.f32392c != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 2, w2.f69539a, jVar.f32392c);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 3) || jVar.f32393d != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 3, w2.f69539a, jVar.f32393d);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 4) || jVar.f32394e != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 4, w2.f69539a, jVar.f32394e);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 5) || jVar.f32395f != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 5, w2.f69539a, jVar.f32395f);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 6) || jVar.f32396g != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 6, w2.f69539a, jVar.f32396g);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 7) || jVar.f32397h != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 7, k.a.f32402a, jVar.f32397h);
        }
    }

    @Nullable
    public final String a() {
        return this.f32390a;
    }

    @Nullable
    public final String c() {
        return this.f32391b;
    }

    @Nullable
    public final k d() {
        return this.f32397h;
    }

    @Nullable
    public final String e() {
        return this.f32395f;
    }

    @Nullable
    public final String f() {
        return this.f32394e;
    }

    @Nullable
    public final String g() {
        return this.f32393d;
    }

    @Nullable
    public final String h() {
        return this.f32392c;
    }

    @Nullable
    public final String i() {
        return this.f32396g;
    }

    public /* synthetic */ j(int i10, String str, String str2, String str3, String str4, String str5, String str6, String str7, k kVar, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this.f32390a = null;
        } else {
            this.f32390a = str;
        }
        if ((i10 & 2) == 0) {
            this.f32391b = null;
        } else {
            this.f32391b = str2;
        }
        if ((i10 & 4) == 0) {
            this.f32392c = null;
        } else {
            this.f32392c = str3;
        }
        if ((i10 & 8) == 0) {
            this.f32393d = null;
        } else {
            this.f32393d = str4;
        }
        if ((i10 & 16) == 0) {
            this.f32394e = null;
        } else {
            this.f32394e = str5;
        }
        if ((i10 & 32) == 0) {
            this.f32395f = null;
        } else {
            this.f32395f = str6;
        }
        if ((i10 & 64) == 0) {
            this.f32396g = null;
        } else {
            this.f32396g = str7;
        }
        if ((i10 & 128) == 0) {
            this.f32397h = null;
        } else {
            this.f32397h = kVar;
        }
    }

    public j(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable k kVar) {
        this.f32390a = str;
        this.f32391b = str2;
        this.f32392c = str3;
        this.f32393d = str4;
        this.f32394e = str5;
        this.f32395f = str6;
        this.f32396g = str7;
        this.f32397h = kVar;
    }

    public /* synthetic */ j(String str, String str2, String str3, String str4, String str5, String str6, String str7, k kVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3, (i10 & 8) != 0 ? null : str4, (i10 & 16) != 0 ? null : str5, (i10 & 32) != 0 ? null : str6, (i10 & 64) != 0 ? null : str7, (i10 & 128) == 0 ? kVar : null);
    }
}
