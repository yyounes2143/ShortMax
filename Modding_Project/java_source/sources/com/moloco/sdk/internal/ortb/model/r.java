package com.moloco.sdk.internal.ortb.model;

import androidx.compose.runtime.internal.StabilityInferred;
import com.ss.ttm.player.MediaPlayer;
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
public final class r {
    @NotNull
    public static final b Companion = new b(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f32454a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f32455b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f32456c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f32457d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final String f32458e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final String f32459f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final String f32460g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final String f32461h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final String f32462i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final String f32463j;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<r> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32464a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32465b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32466c;

        static {
            a aVar = new a();
            f32464a = aVar;
            f32466c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.SdkEvents", aVar, 10);
            h2Var.o("on_ad_load_start", true);
            h2Var.o("on_ad_load_failed", true);
            h2Var.o("on_ad_load_success", true);
            h2Var.o("on_ad_show_failed", true);
            h2Var.o("on_ad_show_success", true);
            h2Var.o("on_ad_clicked", true);
            h2Var.o("on_ad_hidden", true);
            h2Var.o("on_user_rewarded", true);
            h2Var.o("on_rewarded_video_started", true);
            h2Var.o("on_rewarded_video_completed", true);
            f32465b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final r deserialize(@NotNull Decoder decoder) {
            int i10;
            String str;
            String str2;
            String str3;
            String str4;
            String str5;
            String str6;
            String str7;
            String str8;
            String str9;
            String str10;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32465b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            int i11 = 9;
            String str11 = null;
            if (beginStructure.decodeSequentially()) {
                w2 w2Var = w2.f69539a;
                str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 9, w2Var, null);
                i10 = 1023;
                str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, w2Var, null);
                str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, w2Var, null);
                str5 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, w2Var, null);
                str7 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, w2Var, null);
                str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 8, w2Var, null);
                str6 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, w2Var, null);
                str10 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, w2Var, null);
                str9 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, w2Var, null);
                str8 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, w2Var, null);
            } else {
                boolean z10 = true;
                int i12 = 0;
                String str12 = null;
                String str13 = null;
                String str14 = null;
                String str15 = null;
                String str16 = null;
                String str17 = null;
                String str18 = null;
                String str19 = null;
                String str20 = null;
                while (z10) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    switch (decodeElementIndex) {
                        case -1:
                            z10 = false;
                            i11 = 9;
                            break;
                        case 0:
                            str11 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, w2.f69539a, str11);
                            i12 |= 1;
                            i11 = 9;
                            break;
                        case 1:
                            str19 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, w2.f69539a, str19);
                            i12 |= 2;
                            i11 = 9;
                            break;
                        case 2:
                            str20 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, w2.f69539a, str20);
                            i12 |= 4;
                            i11 = 9;
                            break;
                        case 3:
                            str18 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, w2.f69539a, str18);
                            i12 |= 8;
                            i11 = 9;
                            break;
                        case 4:
                            str17 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, w2.f69539a, str17);
                            i12 |= 16;
                            i11 = 9;
                            break;
                        case 5:
                            str16 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, w2.f69539a, str16);
                            i12 |= 32;
                            i11 = 9;
                            break;
                        case 6:
                            str14 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, w2.f69539a, str14);
                            i12 |= 64;
                            i11 = 9;
                            break;
                        case 7:
                            str15 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, w2.f69539a, str15);
                            i12 |= 128;
                            i11 = 9;
                            continue;
                        case 8:
                            str13 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 8, w2.f69539a, str13);
                            i12 |= 256;
                            break;
                        case 9:
                            str12 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, i11, w2.f69539a, str12);
                            i12 |= 512;
                            break;
                        default:
                            throw new UnknownFieldException(decodeElementIndex);
                    }
                }
                i10 = i12;
                str = str12;
                str2 = str13;
                str3 = str14;
                str4 = str15;
                str5 = str16;
                str6 = str17;
                str7 = str18;
                str8 = str11;
                str9 = str19;
                str10 = str20;
            }
            beginStructure.endStructure(serialDescriptor);
            return new r(i10, str8, str9, str10, str7, str6, str5, str3, str4, str2, str, (r2) null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull r value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32465b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            r.b(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            w2 w2Var = w2.f69539a;
            return new KSerializer[]{tt.a.t(w2Var), tt.a.t(w2Var), tt.a.t(w2Var), tt.a.t(w2Var), tt.a.t(w2Var), tt.a.t(w2Var), tt.a.t(w2Var), tt.a.t(w2Var), tt.a.t(w2Var), tt.a.t(w2Var)};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32465b;
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
        public final KSerializer<r> serializer() {
            return a.f32464a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public r() {
        this((String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (int) MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD, (DefaultConstructorMarker) null);
    }

    public static final /* synthetic */ void b(r rVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 0) || rVar.f32454a != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 0, w2.f69539a, rVar.f32454a);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 1) || rVar.f32455b != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 1, w2.f69539a, rVar.f32455b);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 2) || rVar.f32456c != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 2, w2.f69539a, rVar.f32456c);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 3) || rVar.f32457d != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 3, w2.f69539a, rVar.f32457d);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 4) || rVar.f32458e != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 4, w2.f69539a, rVar.f32458e);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 5) || rVar.f32459f != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 5, w2.f69539a, rVar.f32459f);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 6) || rVar.f32460g != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 6, w2.f69539a, rVar.f32460g);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 7) || rVar.f32461h != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 7, w2.f69539a, rVar.f32461h);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 8) || rVar.f32462i != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 8, w2.f69539a, rVar.f32462i);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 9) || rVar.f32463j != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 9, w2.f69539a, rVar.f32463j);
        }
    }

    @Nullable
    public final String a() {
        return this.f32459f;
    }

    @Nullable
    public final String c() {
        return this.f32460g;
    }

    @Nullable
    public final String d() {
        return this.f32455b;
    }

    @Nullable
    public final String e() {
        return this.f32454a;
    }

    @Nullable
    public final String f() {
        return this.f32456c;
    }

    @Nullable
    public final String g() {
        return this.f32457d;
    }

    @Nullable
    public final String h() {
        return this.f32458e;
    }

    @Nullable
    public final String i() {
        return this.f32463j;
    }

    @Nullable
    public final String j() {
        return this.f32462i;
    }

    @Nullable
    public final String k() {
        return this.f32461h;
    }

    public /* synthetic */ r(int i10, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this.f32454a = null;
        } else {
            this.f32454a = str;
        }
        if ((i10 & 2) == 0) {
            this.f32455b = null;
        } else {
            this.f32455b = str2;
        }
        if ((i10 & 4) == 0) {
            this.f32456c = null;
        } else {
            this.f32456c = str3;
        }
        if ((i10 & 8) == 0) {
            this.f32457d = null;
        } else {
            this.f32457d = str4;
        }
        if ((i10 & 16) == 0) {
            this.f32458e = null;
        } else {
            this.f32458e = str5;
        }
        if ((i10 & 32) == 0) {
            this.f32459f = null;
        } else {
            this.f32459f = str6;
        }
        if ((i10 & 64) == 0) {
            this.f32460g = null;
        } else {
            this.f32460g = str7;
        }
        if ((i10 & 128) == 0) {
            this.f32461h = null;
        } else {
            this.f32461h = str8;
        }
        if ((i10 & 256) == 0) {
            this.f32462i = null;
        } else {
            this.f32462i = str9;
        }
        if ((i10 & 512) == 0) {
            this.f32463j = null;
        } else {
            this.f32463j = str10;
        }
    }

    public r(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10) {
        this.f32454a = str;
        this.f32455b = str2;
        this.f32456c = str3;
        this.f32457d = str4;
        this.f32458e = str5;
        this.f32459f = str6;
        this.f32460g = str7;
        this.f32461h = str8;
        this.f32462i = str9;
        this.f32463j = str10;
    }

    public /* synthetic */ r(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3, (i10 & 8) != 0 ? null : str4, (i10 & 16) != 0 ? null : str5, (i10 & 32) != 0 ? null : str6, (i10 & 64) != 0 ? null : str7, (i10 & 128) != 0 ? null : str8, (i10 & 256) != 0 ? null : str9, (i10 & 512) == 0 ? str10 : null);
    }
}
