package com.moloco.sdk.internal.ortb.model;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.ortb.model.s;
import java.util.List;
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
import vt.m0;
import vt.r2;
@StabilityInferred(parameters = 0)
@st.k
/* loaded from: classes6.dex */
public final class e {
    @NotNull
    public static final b Companion = new b(null);

    /* renamed from: b  reason: collision with root package name */
    public static final int f32361b = 8;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final KSerializer<Object>[] f32362c = {new vt.f(s.a.f32470a)};
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final List<s> f32363a;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<e> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32364a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32365b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32366c;

        static {
            a aVar = new a();
            f32364a = aVar;
            f32366c = 8;
            h2 h2Var = new h2("com.moloco.sdk.internal.ortb.model.BidResponse", aVar, 1);
            h2Var.o("seatbid", false);
            f32365b = h2Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final e deserialize(@NotNull Decoder decoder) {
            List list;
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            SerialDescriptor serialDescriptor = f32365b;
            kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
            KSerializer[] kSerializerArr = e.f32362c;
            int i10 = 1;
            if (beginStructure.decodeSequentially()) {
                list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], null);
            } else {
                boolean z10 = true;
                int i11 = 0;
                List list2 = null;
                while (z10) {
                    int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                    if (decodeElementIndex != -1) {
                        if (decodeElementIndex == 0) {
                            list2 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], list2);
                            i11 = 1;
                        } else {
                            throw new UnknownFieldException(decodeElementIndex);
                        }
                    } else {
                        z10 = false;
                    }
                }
                list = list2;
                i10 = i11;
            }
            beginStructure.endStructure(serialDescriptor);
            return new e(i10, list, null);
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull e value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            SerialDescriptor serialDescriptor = f32365b;
            kotlinx.serialization.encoding.d beginStructure = encoder.beginStructure(serialDescriptor);
            e.a(value, beginStructure, serialDescriptor);
            beginStructure.endStructure(serialDescriptor);
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            return new KSerializer[]{e.f32362c[0]};
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32365b;
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
        public final KSerializer<e> serializer() {
            return a.f32364a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ e(int i10, List list, r2 r2Var) {
        if (1 != (i10 & 1)) {
            c2.a(i10, 1, a.f32364a.getDescriptor());
        }
        this.f32363a = list;
    }

    public static final /* synthetic */ void a(e eVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        dVar.encodeSerializableElement(serialDescriptor, 0, f32362c[0], eVar.f32363a);
    }

    @NotNull
    public final List<s> c() {
        return this.f32363a;
    }

    public e(@NotNull List<s> seatBid) {
        Intrinsics.checkNotNullParameter(seatBid, "seatBid");
        this.f32363a = seatBid;
    }
}
