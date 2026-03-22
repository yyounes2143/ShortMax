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
import vt.c2;
import vt.h2;
import vt.m0;
import vt.r2;
import vt.w2;
@StabilityInferred(parameters = 1)
@st.k
/* loaded from: classes6.dex */
public final class a {
    @NotNull
    public static final b Companion = new b(null);

    /* renamed from: a  reason: collision with root package name */
    public final boolean f32335a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f32336b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f32337c;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* renamed from: com.moloco.sdk.internal.ortb.model.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public /* synthetic */ class C0474a implements m0<a> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final C0474a f32338a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32339b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32340c;

        static {
            C0474a c0474a = new C0474a();
            f32338a = c0474a;
            f32340c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.AutoStore", c0474a, 3);
            h2Var.o("enabled", false);
            h2Var.o("on_skip", true);
            h2Var.o("event_link", true);
            f32339b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final a deserialize(@NotNull Decoder decoder) {
            boolean z10;
            boolean z11;
            int i10;
            String str;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32339b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            if (beginStructure.decodeSequentially()) {
                boolean decodeBooleanElement = beginStructure.decodeBooleanElement(serialDescriptor, 0);
                boolean decodeBooleanElement2 = beginStructure.decodeBooleanElement(serialDescriptor, 1);
                z10 = decodeBooleanElement;
                str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, w2.f69539a, null);
                z11 = decodeBooleanElement2;
                i10 = 7;
            } else {
                boolean z12 = true;
                boolean z13 = false;
                int i11 = 0;
                String str2 = null;
                boolean z14 = false;
                while (z12) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    if (decodeElementIndex != -1) {
                        if (decodeElementIndex != 0) {
                            if (decodeElementIndex != 1) {
                                if (decodeElementIndex == 2) {
                                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, w2.f69539a, str2);
                                    i11 |= 4;
                                } else {
                                    throw new UnknownFieldException(decodeElementIndex);
                                }
                            } else {
                                z14 = beginStructure.decodeBooleanElement(serialDescriptor, 1);
                                i11 |= 2;
                            }
                        } else {
                            z13 = beginStructure.decodeBooleanElement(serialDescriptor, 0);
                            i11 |= 1;
                        }
                    } else {
                        z12 = false;
                    }
                }
                z10 = z13;
                z11 = z14;
                i10 = i11;
                str = str2;
            }
            beginStructure.endStructure(serialDescriptor);
            return new a(i10, z10, z11, str, (r2) null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull a value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32339b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            a.a(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            KSerializer<?> t10 = tt.a.t(w2.f69539a);
            vt.i iVar = vt.i.f69441a;
            return new KSerializer[]{iVar, iVar, t10};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32339b;
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
        public final KSerializer<a> serializer() {
            return C0474a.f32338a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ a(int i10, boolean z10, boolean z11, String str, r2 r2Var) {
        if (1 != (i10 & 1)) {
            c2.a(i10, 1, C0474a.f32338a.getDescriptor());
        }
        this.f32335a = z10;
        if ((i10 & 2) == 0) {
            this.f32336b = true;
        } else {
            this.f32336b = z11;
        }
        if ((i10 & 4) == 0) {
            this.f32337c = null;
        } else {
            this.f32337c = str;
        }
    }

    public static final /* synthetic */ void a(a aVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        dVar.encodeBooleanElement(serialDescriptor, 0, aVar.f32335a);
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 1) || !aVar.f32336b) {
            dVar.encodeBooleanElement(serialDescriptor, 1, aVar.f32336b);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 2) || aVar.f32337c != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 2, w2.f69539a, aVar.f32337c);
        }
    }

    public final boolean b() {
        return this.f32335a;
    }

    @Nullable
    public final String c() {
        return this.f32337c;
    }

    public final boolean d() {
        return this.f32336b;
    }

    public a(boolean z10, boolean z11, @Nullable String str) {
        this.f32335a = z10;
        this.f32336b = z11;
        this.f32337c = str;
    }

    public /* synthetic */ a(boolean z10, boolean z11, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, (i10 & 2) != 0 ? true : z11, (i10 & 4) != 0 ? null : str);
    }
}
