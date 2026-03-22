package com.moloco.sdk.internal.ortb.model;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.ortb.model.d;
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
import vt.l0;
import vt.m0;
import vt.r2;
import vt.w2;
@StabilityInferred(parameters = 1)
@st.k
/* loaded from: classes6.dex */
public final class c {
    @NotNull
    public static final b Companion = new b(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f32346a;

    /* renamed from: b  reason: collision with root package name */
    public final float f32347b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f32348c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final d f32349d;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<c> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32350a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32351b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32352c;

        static {
            a aVar = new a();
            f32350a = aVar;
            f32352c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.Bid", aVar, 4);
            h2Var.o("adm", false);
            h2Var.o("price", false);
            h2Var.o("burl", true);
            h2Var.o("ext", false);
            f32351b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final c deserialize(@NotNull Decoder decoder) {
            float f10;
            int i10;
            String str;
            String str2;
            d dVar;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32351b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            if (beginStructure.decodeSequentially()) {
                String decodeStringElement = beginStructure.decodeStringElement(serialDescriptor, 0);
                float decodeFloatElement = beginStructure.decodeFloatElement(serialDescriptor, 1);
                str = decodeStringElement;
                dVar = (d) beginStructure.decodeSerializableElement(serialDescriptor, 3, d.a.f32358a, null);
                str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, w2.f69539a, null);
                f10 = decodeFloatElement;
                i10 = 15;
            } else {
                float f11 = 0.0f;
                boolean z10 = true;
                String str3 = null;
                String str4 = null;
                d dVar2 = null;
                int i11 = 0;
                while (z10) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    if (decodeElementIndex != -1) {
                        if (decodeElementIndex != 0) {
                            if (decodeElementIndex != 1) {
                                if (decodeElementIndex != 2) {
                                    if (decodeElementIndex == 3) {
                                        dVar2 = (d) beginStructure.decodeSerializableElement(serialDescriptor, 3, d.a.f32358a, dVar2);
                                        i11 |= 8;
                                    } else {
                                        throw new UnknownFieldException(decodeElementIndex);
                                    }
                                } else {
                                    str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, w2.f69539a, str4);
                                    i11 |= 4;
                                }
                            } else {
                                f11 = beginStructure.decodeFloatElement(serialDescriptor, 1);
                                i11 |= 2;
                            }
                        } else {
                            str3 = beginStructure.decodeStringElement(serialDescriptor, 0);
                            i11 |= 1;
                        }
                    } else {
                        z10 = false;
                    }
                }
                f10 = f11;
                i10 = i11;
                str = str3;
                str2 = str4;
                dVar = dVar2;
            }
            beginStructure.endStructure(serialDescriptor);
            return new c(i10, str, f10, str2, dVar, null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull c value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32351b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            c.b(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            w2 w2Var = w2.f69539a;
            return new KSerializer[]{w2Var, l0.f69469a, tt.a.t(w2Var), d.a.f32358a};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32351b;
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
            return a.f32350a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ c(int i10, String str, float f10, String str2, d dVar, r2 r2Var) {
        if (11 != (i10 & 11)) {
            c2.a(i10, 11, a.f32350a.getDescriptor());
        }
        this.f32346a = str;
        this.f32347b = f10;
        if ((i10 & 4) == 0) {
            this.f32348c = null;
        } else {
            this.f32348c = str2;
        }
        this.f32349d = dVar;
    }

    public static final /* synthetic */ void b(c cVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        dVar.encodeStringElement(serialDescriptor, 0, cVar.f32346a);
        dVar.encodeFloatElement(serialDescriptor, 1, cVar.f32347b);
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 2) || cVar.f32348c != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 2, w2.f69539a, cVar.f32348c);
        }
        dVar.encodeSerializableElement(serialDescriptor, 3, d.a.f32358a, cVar.f32349d);
    }

    @NotNull
    public final String a() {
        return this.f32346a;
    }

    @Nullable
    public final String c() {
        return this.f32348c;
    }

    @NotNull
    public final d d() {
        return this.f32349d;
    }

    public final float e() {
        return this.f32347b;
    }

    public c(@NotNull String adm, float f10, @Nullable String str, @NotNull d ext) {
        Intrinsics.checkNotNullParameter(adm, "adm");
        Intrinsics.checkNotNullParameter(ext, "ext");
        this.f32346a = adm;
        this.f32347b = f10;
        this.f32348c = str;
        this.f32349d = ext;
    }
}
