package com.moloco.sdk.internal.ortb.model;

import androidx.compose.runtime.internal.StabilityInferred;
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
public final class b {
    @NotNull
    public static final C0475b Companion = new C0475b(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f32341a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f32342b;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<b> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32343a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32344b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32345c;

        static {
            a aVar = new a();
            f32343a = aVar;
            f32345c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.BannerClickMetaData", aVar, 2);
            h2Var.o("click_tracking", true);
            h2Var.o("click_through", true);
            f32344b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final b deserialize(@NotNull Decoder decoder) {
            String str;
            int i10;
            String str2;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32344b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            if (beginStructure.decodeSequentially()) {
                w2 w2Var = w2.f69539a;
                str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, w2Var, null);
                str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, w2Var, null);
                i10 = 3;
            } else {
                boolean z10 = true;
                int i11 = 0;
                str = null;
                String str3 = null;
                while (z10) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    if (decodeElementIndex != -1) {
                        if (decodeElementIndex != 0) {
                            if (decodeElementIndex == 1) {
                                str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, w2.f69539a, str);
                                i11 |= 2;
                            } else {
                                throw new UnknownFieldException(decodeElementIndex);
                            }
                        } else {
                            str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, w2.f69539a, str3);
                            i11 |= 1;
                        }
                    } else {
                        z10 = false;
                    }
                }
                i10 = i11;
                str2 = str3;
            }
            beginStructure.endStructure(serialDescriptor);
            return new b(i10, str2, str, (r2) null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull b value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32344b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            b.b(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            w2 w2Var = w2.f69539a;
            return new KSerializer[]{tt.a.t(w2Var), tt.a.t(w2Var)};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32344b;
        }

        @Override // vt.m0
        @NotNull
        public KSerializer<?>[] typeParametersSerializers() {
            return m0.a.a(this);
        }
    }

    /* renamed from: com.moloco.sdk.internal.ortb.model.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0475b {
        public C0475b() {
        }

        @NotNull
        public final KSerializer<b> serializer() {
            return a.f32343a;
        }

        public /* synthetic */ C0475b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b() {
        this((String) null, (String) null, 3, (DefaultConstructorMarker) null);
    }

    public static final /* synthetic */ void b(b bVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 0) || bVar.f32341a != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 0, w2.f69539a, bVar.f32341a);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 1) || bVar.f32342b != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 1, w2.f69539a, bVar.f32342b);
        }
    }

    @Nullable
    public final String a() {
        return this.f32342b;
    }

    @Nullable
    public final String c() {
        return this.f32341a;
    }

    public /* synthetic */ b(int i10, String str, String str2, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this.f32341a = null;
        } else {
            this.f32341a = str;
        }
        if ((i10 & 2) == 0) {
            this.f32342b = null;
        } else {
            this.f32342b = str2;
        }
    }

    public b(@Nullable String str, @Nullable String str2) {
        this.f32341a = str;
        this.f32342b = str2;
    }

    public /* synthetic */ b(String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2);
    }
}
