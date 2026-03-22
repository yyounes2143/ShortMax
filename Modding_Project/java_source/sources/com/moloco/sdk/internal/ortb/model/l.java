package com.moloco.sdk.internal.ortb.model;

import androidx.compose.runtime.internal.StabilityInferred;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.moloco.sdk.internal.ortb.model.l;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import vt.g0;
import vt.m0;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@st.k
/* loaded from: classes6.dex */
public final class l {
    @NotNull
    public static final b Companion;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ms.i<KSerializer<Object>> f32405a;

    /* renamed from: b  reason: collision with root package name */
    public static final l f32406b = new l("Start", 0);

    /* renamed from: c  reason: collision with root package name */
    public static final l f32407c = new l("Center", 1);

    /* renamed from: d  reason: collision with root package name */
    public static final l f32408d = new l("End", 2);

    /* renamed from: e  reason: collision with root package name */
    public static final l f32409e = new l("Left", 3);

    /* renamed from: f  reason: collision with root package name */
    public static final l f32410f = new l("Right", 4);

    /* renamed from: g  reason: collision with root package name */
    public static final /* synthetic */ l[] f32411g;

    /* renamed from: h  reason: collision with root package name */
    public static final /* synthetic */ ss.a f32412h;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<l> {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32414b;
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32413a = new a();

        /* renamed from: c  reason: collision with root package name */
        public static final int f32415c = 8;

        static {
            g0 g0Var = new g0("com.moloco.sdk.internal.ortb.model.HorizontalAlignment", 5);
            g0Var.o("start", false);
            g0Var.o(TtmlNode.CENTER, false);
            g0Var.o("end", false);
            g0Var.o(TtmlNode.LEFT, false);
            g0Var.o(TtmlNode.RIGHT, false);
            f32414b = g0Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final l deserialize(@NotNull Decoder decoder) {
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            return l.values()[decoder.decodeEnum(f32414b)];
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull l value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            encoder.encodeEnum(f32414b, value.ordinal());
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            return new KSerializer[0];
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32414b;
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

        public final /* synthetic */ KSerializer a() {
            return (KSerializer) l.f32405a.getValue();
        }

        @NotNull
        public final KSerializer<l> serializer() {
            return a();
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        l[] a10 = a();
        f32411g = a10;
        f32412h = kotlin.enums.a.a(a10);
        Companion = new b(null);
        f32405a = kotlin.c.a(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.moloco.sdk.internal.ortb.model.w
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KSerializer kSerializer;
                kSerializer = l.a.f32413a;
                return kSerializer;
            }
        });
    }

    public l(String str, int i10) {
    }

    public static final /* synthetic */ l[] a() {
        return new l[]{f32406b, f32407c, f32408d, f32409e, f32410f};
    }

    @NotNull
    public static ss.a<l> d() {
        return f32412h;
    }

    public static l valueOf(String str) {
        return (l) Enum.valueOf(l.class, str);
    }

    public static l[] values() {
        return (l[]) f32411g.clone();
    }
}
