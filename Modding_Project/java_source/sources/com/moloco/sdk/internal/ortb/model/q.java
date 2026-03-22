package com.moloco.sdk.internal.ortb.model;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
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
import vt.c2;
import vt.h2;
import vt.j3;
import vt.m0;
import vt.r2;
@StabilityInferred(parameters = 1)
@st.k
/* loaded from: classes6.dex */
public final class q {
    @NotNull
    public static final b Companion = new b(null);

    /* renamed from: a  reason: collision with root package name */
    public final int f32447a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final l f32448b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final v f32449c;

    /* renamed from: d  reason: collision with root package name */
    public final long f32450d;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<q> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32451a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32452b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32453c;

        static {
            a aVar = new a();
            f32451a = aVar;
            f32453c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.ProgressBar", aVar, 4);
            h2Var.o("padding", false);
            h2Var.o("horizontal_alignment", false);
            h2Var.o("vertical_alignment", false);
            h2Var.o("foreground_color", false);
            f32452b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final q deserialize(@NotNull Decoder decoder) {
            int i10;
            ms.n nVar;
            l lVar;
            v vVar;
            Color color;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32452b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            ms.n nVar2 = null;
            if (beginStructure.decodeSequentially()) {
                nVar = (ms.n) beginStructure.decodeSerializableElement(serialDescriptor, 0, j3.f69459a, null);
                color = (Color) beginStructure.decodeSerializableElement(serialDescriptor, 3, h.f32377a, null);
                vVar = (v) beginStructure.decodeSerializableElement(serialDescriptor, 2, v.a.f32495a, null);
                lVar = (l) beginStructure.decodeSerializableElement(serialDescriptor, 1, l.a.f32413a, null);
                i10 = 15;
            } else {
                boolean z10 = true;
                int i11 = 0;
                l lVar2 = null;
                v vVar2 = null;
                Color color2 = null;
                while (z10) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    if (decodeElementIndex != -1) {
                        if (decodeElementIndex != 0) {
                            if (decodeElementIndex != 1) {
                                if (decodeElementIndex != 2) {
                                    if (decodeElementIndex == 3) {
                                        color2 = (Color) beginStructure.decodeSerializableElement(serialDescriptor, 3, h.f32377a, color2);
                                        i11 |= 8;
                                    } else {
                                        throw new UnknownFieldException(decodeElementIndex);
                                    }
                                } else {
                                    vVar2 = (v) beginStructure.decodeSerializableElement(serialDescriptor, 2, v.a.f32495a, vVar2);
                                    i11 |= 4;
                                }
                            } else {
                                lVar2 = (l) beginStructure.decodeSerializableElement(serialDescriptor, 1, l.a.f32413a, lVar2);
                                i11 |= 2;
                            }
                        } else {
                            nVar2 = (ms.n) beginStructure.decodeSerializableElement(serialDescriptor, 0, j3.f69459a, nVar2);
                            i11 |= 1;
                        }
                    } else {
                        z10 = false;
                    }
                }
                i10 = i11;
                nVar = nVar2;
                lVar = lVar2;
                vVar = vVar2;
                color = color2;
            }
            beginStructure.endStructure(serialDescriptor);
            return new q(i10, nVar, lVar, vVar, color, null, null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull q value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32452b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            q.b(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            return new KSerializer[]{j3.f69459a, l.a.f32413a, v.a.f32495a, h.f32377a};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32452b;
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
        public final KSerializer<q> serializer() {
            return a.f32451a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ q(int i10, l lVar, v vVar, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, lVar, vVar, j10);
    }

    public static final /* synthetic */ void b(q qVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        dVar.encodeSerializableElement(serialDescriptor, 0, j3.f69459a, ms.n.a(qVar.f32447a));
        dVar.encodeSerializableElement(serialDescriptor, 1, l.a.f32413a, qVar.f32448b);
        dVar.encodeSerializableElement(serialDescriptor, 2, v.a.f32495a, qVar.f32449c);
        dVar.encodeSerializableElement(serialDescriptor, 3, h.f32377a, Color.m1832boximpl(qVar.f32450d));
    }

    public final long a() {
        return this.f32450d;
    }

    @NotNull
    public final l c() {
        return this.f32448b;
    }

    public final int d() {
        return this.f32447a;
    }

    @NotNull
    public final v e() {
        return this.f32449c;
    }

    public /* synthetic */ q(int i10, ms.n nVar, l lVar, v vVar, Color color, r2 r2Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, nVar, lVar, vVar, color, r2Var);
    }

    public /* synthetic */ q(int i10, ms.n nVar, l lVar, v vVar, Color color, r2 r2Var) {
        if (15 != (i10 & 15)) {
            c2.a(i10, 15, a.f32451a.getDescriptor());
        }
        this.f32447a = nVar.g();
        this.f32448b = lVar;
        this.f32449c = vVar;
        this.f32450d = color.m1852unboximpl();
    }

    public q(int i10, l horizontalAlignment, v verticalAlignment, long j10) {
        Intrinsics.checkNotNullParameter(horizontalAlignment, "horizontalAlignment");
        Intrinsics.checkNotNullParameter(verticalAlignment, "verticalAlignment");
        this.f32447a = i10;
        this.f32448b = horizontalAlignment;
        this.f32449c = verticalAlignment;
        this.f32450d = j10;
    }
}
