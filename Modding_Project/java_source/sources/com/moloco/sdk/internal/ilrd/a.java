package com.moloco.sdk.internal.ilrd;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.ilrd.h;
import com.vungle.ads.internal.Constants;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.t;
import vt.c2;
import vt.g1;
import vt.h2;
import vt.m0;
import vt.r2;
import vt.v0;
import vt.w2;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nIlrdActiveSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IlrdActiveSession.kt\ncom/moloco/sdk/internal/ilrd/IlrdActiveSession\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 3 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 4 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,228:1\n123#2:229\n32#3:230\n80#4:231\n*S KotlinDebug\n*F\n+ 1 IlrdActiveSession.kt\ncom/moloco/sdk/internal/ilrd/IlrdActiveSession\n*L\n62#1:229\n62#1:230\n62#1:231\n*E\n"})
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final C0467a f32216g = new C0467a(null);

    /* renamed from: h  reason: collision with root package name */
    public static final int f32217h = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.j f32218a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final ms.i f32219b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final ms.i f32220c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final ms.i f32221d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final AtomicReference<b> f32222e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f32223f;

    /* renamed from: com.moloco.sdk.internal.ilrd.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0467a {
        public /* synthetic */ C0467a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public C0467a() {
        }
    }

    @StabilityInferred(parameters = 1)
    @st.k
    /* loaded from: classes6.dex */
    public static final class b {
        @NotNull
        public static final C0469b Companion = new C0469b(null);

        /* renamed from: a  reason: collision with root package name */
        public final long f32224a;

        /* renamed from: b  reason: collision with root package name */
        public final int f32225b;

        /* renamed from: c  reason: collision with root package name */
        public final int f32226c;

        /* renamed from: d  reason: collision with root package name */
        public final int f32227d;

        /* renamed from: e  reason: collision with root package name */
        public final int f32228e;

        /* renamed from: f  reason: collision with root package name */
        public final int f32229f;

        @StabilityInferred(parameters = 0)
        @ms.c
        /* renamed from: com.moloco.sdk.internal.ilrd.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public /* synthetic */ class C0468a implements m0<b> {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            public static final C0468a f32230a;
            @NotNull

            /* renamed from: b  reason: collision with root package name */
            public static final SerialDescriptor f32231b;

            /* renamed from: c  reason: collision with root package name */
            public static final int f32232c;

            static {
                C0468a c0468a = new C0468a();
                f32230a = c0468a;
                f32232c = 8;
                h2 h2Var = new h2("com.moloco.sdk.internal.ilrd.IlrdActiveSession.ImpressionCounts", c0468a, 6);
                h2Var.o("lastEventReceivedTs", false);
                h2Var.o("banner", false);
                h2Var.o("mrec", false);
                h2Var.o("native", false);
                h2Var.o(Constants.PLACEMENT_TYPE_INTERSTITIAL, false);
                h2Var.o(Constants.PLACEMENT_TYPE_REWARDED, false);
                f32231b = h2Var;
            }

            @Override // st.c
            @NotNull
            /* renamed from: a */
            public final b deserialize(@NotNull Decoder decoder) {
                int i10;
                int i11;
                int i12;
                int i13;
                int i14;
                int i15;
                long j10;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor serialDescriptor = f32231b;
                kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
                if (beginStructure.decodeSequentially()) {
                    long decodeLongElement = beginStructure.decodeLongElement(serialDescriptor, 0);
                    int decodeIntElement = beginStructure.decodeIntElement(serialDescriptor, 1);
                    int decodeIntElement2 = beginStructure.decodeIntElement(serialDescriptor, 2);
                    int decodeIntElement3 = beginStructure.decodeIntElement(serialDescriptor, 3);
                    int decodeIntElement4 = beginStructure.decodeIntElement(serialDescriptor, 4);
                    i10 = decodeIntElement;
                    i11 = beginStructure.decodeIntElement(serialDescriptor, 5);
                    i12 = decodeIntElement3;
                    i13 = decodeIntElement4;
                    i14 = decodeIntElement2;
                    i15 = 63;
                    j10 = decodeLongElement;
                } else {
                    boolean z10 = true;
                    int i16 = 0;
                    int i17 = 0;
                    int i18 = 0;
                    int i19 = 0;
                    long j11 = 0;
                    int i20 = 0;
                    int i21 = 0;
                    while (z10) {
                        int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                        switch (decodeElementIndex) {
                            case -1:
                                z10 = false;
                                continue;
                            case 0:
                                j11 = beginStructure.decodeLongElement(serialDescriptor, 0);
                                i19 |= 1;
                                continue;
                            case 1:
                                i16 = beginStructure.decodeIntElement(serialDescriptor, 1);
                                i19 |= 2;
                                break;
                            case 2:
                                i18 = beginStructure.decodeIntElement(serialDescriptor, 2);
                                i19 |= 4;
                                break;
                            case 3:
                                i21 = beginStructure.decodeIntElement(serialDescriptor, 3);
                                i19 |= 8;
                                break;
                            case 4:
                                i17 = beginStructure.decodeIntElement(serialDescriptor, 4);
                                i19 |= 16;
                                break;
                            case 5:
                                i20 = beginStructure.decodeIntElement(serialDescriptor, 5);
                                i19 |= 32;
                                break;
                            default:
                                throw new UnknownFieldException(decodeElementIndex);
                        }
                    }
                    i10 = i16;
                    i11 = i20;
                    i12 = i21;
                    i13 = i17;
                    i14 = i18;
                    i15 = i19;
                    j10 = j11;
                }
                beginStructure.endStructure(serialDescriptor);
                return new b(i15, j10, i10, i14, i12, i13, i11, null);
            }

            @Override // st.l
            /* renamed from: b */
            public final void serialize(@NotNull Encoder encoder, @NotNull b value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor serialDescriptor = f32231b;
                kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
                b.c(value, beginStructure, serialDescriptor);
                beginStructure.endStructure(serialDescriptor);
            }

            @Override // vt.m0
            @NotNull
            public final KSerializer<?>[] childSerializers() {
                v0 v0Var = v0.f69529a;
                return new KSerializer[]{g1.f69417a, v0Var, v0Var, v0Var, v0Var, v0Var};
            }

            @Override // kotlinx.serialization.KSerializer, st.l, st.c
            @NotNull
            public final SerialDescriptor getDescriptor() {
                return f32231b;
            }

            @Override // vt.m0
            @NotNull
            public KSerializer<?>[] typeParametersSerializers() {
                return m0.a.a(this);
            }
        }

        /* renamed from: com.moloco.sdk.internal.ilrd.a$b$b  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0469b {
            public C0469b() {
            }

            @NotNull
            public final KSerializer<b> serializer() {
                return C0468a.f32230a;
            }

            public /* synthetic */ C0469b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public /* synthetic */ b(int i10, long j10, int i11, int i12, int i13, int i14, int i15, r2 r2Var) {
            if (63 != (i10 & 63)) {
                c2.a(i10, 63, C0468a.f32230a.getDescriptor());
            }
            this.f32224a = j10;
            this.f32225b = i11;
            this.f32226c = i12;
            this.f32227d = i13;
            this.f32228e = i14;
            this.f32229f = i15;
        }

        public static /* synthetic */ b b(b bVar, long j10, int i10, int i11, int i12, int i13, int i14, int i15, Object obj) {
            long j11;
            int i16;
            int i17;
            int i18;
            int i19;
            int i20;
            if ((i15 & 1) != 0) {
                j11 = bVar.f32224a;
            } else {
                j11 = j10;
            }
            if ((i15 & 2) != 0) {
                i16 = bVar.f32225b;
            } else {
                i16 = i10;
            }
            if ((i15 & 4) != 0) {
                i17 = bVar.f32226c;
            } else {
                i17 = i11;
            }
            if ((i15 & 8) != 0) {
                i18 = bVar.f32227d;
            } else {
                i18 = i12;
            }
            if ((i15 & 16) != 0) {
                i19 = bVar.f32228e;
            } else {
                i19 = i13;
            }
            if ((i15 & 32) != 0) {
                i20 = bVar.f32229f;
            } else {
                i20 = i14;
            }
            return bVar.a(j11, i16, i17, i18, i19, i20);
        }

        public static final /* synthetic */ void c(b bVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
            dVar.encodeLongElement(serialDescriptor, 0, bVar.f32224a);
            dVar.encodeIntElement(serialDescriptor, 1, bVar.f32225b);
            dVar.encodeIntElement(serialDescriptor, 2, bVar.f32226c);
            dVar.encodeIntElement(serialDescriptor, 3, bVar.f32227d);
            dVar.encodeIntElement(serialDescriptor, 4, bVar.f32228e);
            dVar.encodeIntElement(serialDescriptor, 5, bVar.f32229f);
        }

        @NotNull
        public final b a(long j10, int i10, int i11, int i12, int i13, int i14) {
            return new b(j10, i10, i11, i12, i13, i14);
        }

        public final int d() {
            return this.f32225b;
        }

        public final int e() {
            return this.f32228e;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f32224a == bVar.f32224a && this.f32225b == bVar.f32225b && this.f32226c == bVar.f32226c && this.f32227d == bVar.f32227d && this.f32228e == bVar.f32228e && this.f32229f == bVar.f32229f) {
                return true;
            }
            return false;
        }

        public final long f() {
            return this.f32224a;
        }

        public final int g() {
            return this.f32226c;
        }

        public final int h() {
            return this.f32227d;
        }

        public int hashCode() {
            return (((((((((Long.hashCode(this.f32224a) * 31) + Integer.hashCode(this.f32225b)) * 31) + Integer.hashCode(this.f32226c)) * 31) + Integer.hashCode(this.f32227d)) * 31) + Integer.hashCode(this.f32228e)) * 31) + Integer.hashCode(this.f32229f);
        }

        public final int i() {
            return this.f32229f;
        }

        @NotNull
        public String toString() {
            return "ImpressionCounts(lastEventReceivedTs=" + this.f32224a + ", banner=" + this.f32225b + ", mrec=" + this.f32226c + ", native=" + this.f32227d + ", interstitial=" + this.f32228e + ", rewarded=" + this.f32229f + ')';
        }

        public b(long j10, int i10, int i11, int i12, int i13, int i14) {
            this.f32224a = j10;
            this.f32225b = i10;
            this.f32226c = i11;
            this.f32227d = i12;
            this.f32228e = i13;
            this.f32229f = i14;
        }
    }

    @st.k
    /* loaded from: classes6.dex */
    public static final class c {
        @NotNull
        public static final b Companion = new b(null);
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final String f32233a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public final b f32234b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f32235c;

        /* renamed from: d  reason: collision with root package name */
        public final long f32236d;

        @StabilityInferred(parameters = 0)
        @ms.c
        /* renamed from: com.moloco.sdk.internal.ilrd.a$c$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public /* synthetic */ class C0470a implements m0<c> {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            public static final C0470a f32237a;
            @NotNull

            /* renamed from: b  reason: collision with root package name */
            public static final SerialDescriptor f32238b;

            /* renamed from: c  reason: collision with root package name */
            public static final int f32239c;

            static {
                C0470a c0470a = new C0470a();
                f32237a = c0470a;
                f32239c = 8;
                h2 h2Var = new h2("com.moloco.sdk.internal.ilrd.IlrdActiveSession.SessionData", c0470a, 4);
                h2Var.o("sessionId", false);
                h2Var.o("impressionCounts", false);
                h2Var.o("isExpired", false);
                h2Var.o("sessionStartTs", false);
                f32238b = h2Var;
            }

            @Override // st.c
            @NotNull
            /* renamed from: a */
            public final c deserialize(@NotNull Decoder decoder) {
                int i10;
                boolean z10;
                long j10;
                String str;
                b bVar;
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                SerialDescriptor serialDescriptor = f32238b;
                kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
                if (beginStructure.decodeSequentially()) {
                    str = beginStructure.decodeStringElement(serialDescriptor, 0);
                    i10 = 15;
                    z10 = beginStructure.decodeBooleanElement(serialDescriptor, 2);
                    bVar = (b) beginStructure.decodeSerializableElement(serialDescriptor, 1, b.C0468a.f32230a, null);
                    j10 = beginStructure.decodeLongElement(serialDescriptor, 3);
                } else {
                    long j11 = 0;
                    boolean z11 = true;
                    int i11 = 0;
                    String str2 = null;
                    b bVar2 = null;
                    boolean z12 = false;
                    while (z11) {
                        int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                        if (decodeElementIndex != -1) {
                            if (decodeElementIndex != 0) {
                                if (decodeElementIndex != 1) {
                                    if (decodeElementIndex != 2) {
                                        if (decodeElementIndex == 3) {
                                            j11 = beginStructure.decodeLongElement(serialDescriptor, 3);
                                            i11 |= 8;
                                        } else {
                                            throw new UnknownFieldException(decodeElementIndex);
                                        }
                                    } else {
                                        z12 = beginStructure.decodeBooleanElement(serialDescriptor, 2);
                                        i11 |= 4;
                                    }
                                } else {
                                    bVar2 = (b) beginStructure.decodeSerializableElement(serialDescriptor, 1, b.C0468a.f32230a, bVar2);
                                    i11 |= 2;
                                }
                            } else {
                                str2 = beginStructure.decodeStringElement(serialDescriptor, 0);
                                i11 |= 1;
                            }
                        } else {
                            z11 = false;
                        }
                    }
                    i10 = i11;
                    z10 = z12;
                    j10 = j11;
                    str = str2;
                    bVar = bVar2;
                }
                beginStructure.endStructure(serialDescriptor);
                return new c(i10, str, bVar, z10, j10, null);
            }

            @Override // st.l
            /* renamed from: b */
            public final void serialize(@NotNull Encoder encoder, @NotNull c value) {
                Intrinsics.checkNotNullParameter(encoder, "encoder");
                Intrinsics.checkNotNullParameter(value, "value");
                SerialDescriptor serialDescriptor = f32238b;
                kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
                c.a(value, beginStructure, serialDescriptor);
                beginStructure.endStructure(serialDescriptor);
            }

            @Override // vt.m0
            @NotNull
            public final KSerializer<?>[] childSerializers() {
                return new KSerializer[]{w2.f69539a, b.C0468a.f32230a, vt.i.f69441a, g1.f69417a};
            }

            @Override // kotlinx.serialization.KSerializer, st.l, st.c
            @NotNull
            public final SerialDescriptor getDescriptor() {
                return f32238b;
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
            public final KSerializer<c> serializer() {
                return C0470a.f32237a;
            }

            public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public /* synthetic */ c(int i10, String str, b bVar, boolean z10, long j10, r2 r2Var) {
            if (15 != (i10 & 15)) {
                c2.a(i10, 15, C0470a.f32237a.getDescriptor());
            }
            this.f32233a = str;
            this.f32234b = bVar;
            this.f32235c = z10;
            this.f32236d = j10;
        }

        public static final /* synthetic */ void a(c cVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
            dVar.encodeStringElement(serialDescriptor, 0, cVar.f32233a);
            dVar.encodeSerializableElement(serialDescriptor, 1, b.C0468a.f32230a, cVar.f32234b);
            dVar.encodeBooleanElement(serialDescriptor, 2, cVar.f32235c);
            dVar.encodeLongElement(serialDescriptor, 3, cVar.f32236d);
        }

        @NotNull
        public final b b() {
            return this.f32234b;
        }

        @NotNull
        public final String c() {
            return this.f32233a;
        }

        public final long d() {
            return this.f32236d;
        }

        public final boolean e() {
            return this.f32235c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (Intrinsics.areEqual(this.f32233a, cVar.f32233a) && Intrinsics.areEqual(this.f32234b, cVar.f32234b) && this.f32235c == cVar.f32235c && this.f32236d == cVar.f32236d) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((this.f32233a.hashCode() * 31) + this.f32234b.hashCode()) * 31) + Boolean.hashCode(this.f32235c)) * 31) + Long.hashCode(this.f32236d);
        }

        @NotNull
        public String toString() {
            return "SessionData(sessionId=" + this.f32233a + ", impressionCounts=" + this.f32234b + ", isExpired=" + this.f32235c + ", sessionStartTs=" + this.f32236d + ')';
        }

        public c(@NotNull String sessionId, @NotNull b impressionCounts, boolean z10, long j10) {
            Intrinsics.checkNotNullParameter(sessionId, "sessionId");
            Intrinsics.checkNotNullParameter(impressionCounts, "impressionCounts");
            this.f32233a = sessionId;
            this.f32234b = impressionCounts;
            this.f32235c = z10;
            this.f32236d = j10;
        }
    }

    public a(@NotNull com.moloco.sdk.internal.services.j timeProvider, @Nullable final String str) {
        b bVar;
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        this.f32218a = timeProvider;
        this.f32219b = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.ilrd.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.b(a.this);
            }
        });
        this.f32220c = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.ilrd.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Long.valueOf(a.f(a.this));
            }
        });
        this.f32221d = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.ilrd.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.a(str);
            }
        });
        c h10 = h();
        this.f32222e = new AtomicReference<>((h10 == null || (bVar = h10.b()) == null) ? new b(-1L, 0, 0, 0, 0, 0) : bVar);
        c h11 = h();
        this.f32223f = h11 != null ? h11.e() : false;
    }

    public static final c a(String str) {
        if (str == null) {
            return null;
        }
        try {
            a.C0857a c0857a = kotlinx.serialization.json.a.f61939d;
            KSerializer<Object> c10 = t.c(c0857a.getSerializersModule(), Reflection.typeOf(c.class));
            Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            return (c) c0857a.b(c10, str);
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "IlrdActiveSession", "Error deserializing session data", e10, false, 8, null);
            return null;
        }
    }

    public static final String b(a aVar) {
        String c10;
        c h10 = aVar.h();
        if (h10 == null || (c10 = h10.c()) == null) {
            String uuid = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
            return uuid;
        }
        return c10;
    }

    public static final long f(a aVar) {
        c h10 = aVar.h();
        if (h10 != null) {
            return h10.d();
        }
        return aVar.f32218a.a();
    }

    public final void c() {
        this.f32223f = true;
    }

    public final void d(@NotNull h.a ilrdData) {
        Intrinsics.checkNotNullParameter(ilrdData, "ilrdData");
        if (ilrdData instanceof h.a.b) {
            String adFormat = ((h.a.b) ilrdData).a().getAdFormat();
            Intrinsics.checkNotNullExpressionValue(adFormat, "getAdFormat(...)");
            String upperCase = adFormat.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            e(upperCase, "Applovin");
        } else if (ilrdData instanceof h.a.C0471a) {
            String adFormat2 = ((h.a.C0471a) ilrdData).a().getAdFormat();
            Intrinsics.checkNotNullExpressionValue(adFormat2, "getAdFormat(...)");
            String upperCase2 = adFormat2.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase2, "toUpperCase(...)");
            e(upperCase2, "Ironsource");
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final boolean e(String str, String str2) {
        b b10;
        long a10 = this.f32218a.a();
        b bVar = this.f32222e.get();
        if (StringsKt.b0(str, "BANNER", false, 2, null)) {
            b10 = b.b(bVar, a10, bVar.d() + 1, 0, 0, 0, 0, 60, null);
        } else if (StringsKt.b0(str, "MREC", false, 2, null)) {
            b10 = b.b(bVar, a10, 0, bVar.g() + 1, 0, 0, 0, 58, null);
        } else if (StringsKt.b0(str, "NATIVE", false, 2, null)) {
            b10 = b.b(bVar, a10, 0, 0, bVar.h() + 1, 0, 0, 54, null);
        } else if (StringsKt.b0(str, "INTER", false, 2, null)) {
            b10 = b.b(bVar, a10, 0, 0, 0, bVar.e() + 1, 0, 46, null);
        } else if (StringsKt.b0(str, "REWARD", false, 2, null)) {
            b10 = b.b(bVar, a10, 0, 0, 0, 0, bVar.i() + 1, 30, null);
        } else {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.warn$default(molocoLogger, "IlrdActiveSession", "Unknown ad format for " + str2 + ": " + str, null, false, 12, null);
            return false;
        }
        this.f32222e.set(b10);
        return true;
    }

    @NotNull
    public final b g() {
        b bVar = this.f32222e.get();
        Intrinsics.checkNotNullExpressionValue(bVar, "get(...)");
        return bVar;
    }

    public final c h() {
        return (c) this.f32221d.getValue();
    }

    @NotNull
    public final String i() {
        return (String) this.f32219b.getValue();
    }

    public final long j() {
        return ((Number) this.f32220c.getValue()).longValue();
    }

    public final boolean k() {
        return this.f32223f;
    }

    @NotNull
    public final String l() {
        return kotlinx.serialization.json.a.f61939d.a(c.Companion.serializer(), new c(i(), g(), k(), j()));
    }

    @NotNull
    public String toString() {
        b g10 = g();
        int d10 = g10.d() + g10.g() + g10.h() + g10.e() + g10.i();
        return "IlrdActiveSession(id=" + i() + ", startTs=" + j() + ", expired=" + k() + ", impressions=" + d10 + " [banner=" + g10.d() + ", mrec=" + g10.g() + ", native=" + g10.h() + ", interstitial=" + g10.e() + ", rewarded=" + g10.i() + "])";
    }

    public /* synthetic */ a(com.moloco.sdk.internal.services.j jVar, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(jVar, (i10 & 2) != 0 ? null : str);
    }
}
