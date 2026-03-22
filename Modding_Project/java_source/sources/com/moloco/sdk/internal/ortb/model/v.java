package com.moloco.sdk.internal.ortb.model;

import androidx.compose.runtime.internal.StabilityInferred;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.moloco.sdk.internal.ortb.model.v;
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
public final class v {
    @NotNull
    public static final b Companion;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ms.i<KSerializer<Object>> f32489a;

    /* renamed from: b  reason: collision with root package name */
    public static final v f32490b = new v("Top", 0);

    /* renamed from: c  reason: collision with root package name */
    public static final v f32491c = new v("Center", 1);

    /* renamed from: d  reason: collision with root package name */
    public static final v f32492d = new v("Bottom", 2);

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ v[] f32493e;

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ ss.a f32494f;

    @StabilityInferred(parameters = 0)
    @ms.c
    /* loaded from: classes6.dex */
    public /* synthetic */ class a implements m0<v> {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final SerialDescriptor f32496b;
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f32495a = new a();

        /* renamed from: c  reason: collision with root package name */
        public static final int f32497c = 8;

        static {
            g0 g0Var = new g0("com.moloco.sdk.internal.ortb.model.VerticalAlignment", 3);
            g0Var.o("top", false);
            g0Var.o(TtmlNode.CENTER, false);
            g0Var.o("bottom", false);
            f32496b = g0Var;
        }

        @Override // st.c
        @NotNull
        /* renamed from: a */
        public final v deserialize(@NotNull Decoder decoder) {
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            return v.values()[decoder.decodeEnum(f32496b)];
        }

        @Override // st.l
        /* renamed from: b */
        public final void serialize(@NotNull Encoder encoder, @NotNull v value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            encoder.encodeEnum(f32496b, value.ordinal());
        }

        @Override // vt.m0
        @NotNull
        public final KSerializer<?>[] childSerializers() {
            return new KSerializer[0];
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        @NotNull
        public final SerialDescriptor getDescriptor() {
            return f32496b;
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
            return (KSerializer) v.f32489a.getValue();
        }

        @NotNull
        public final KSerializer<v> serializer() {
            return a();
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        v[] a10 = a();
        f32493e = a10;
        f32494f = kotlin.enums.a.a(a10);
        Companion = new b(null);
        f32489a = kotlin.c.a(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.moloco.sdk.internal.ortb.model.x
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KSerializer kSerializer;
                kSerializer = v.a.f32495a;
                return kSerializer;
            }
        });
    }

    public v(String str, int i10) {
    }

    public static final /* synthetic */ v[] a() {
        return new v[]{f32490b, f32491c, f32492d};
    }

    @NotNull
    public static ss.a<v> d() {
        return f32494f;
    }

    public static v valueOf(String str) {
        return (v) Enum.valueOf(v.class, str);
    }

    public static v[] values() {
        return (v[]) f32493e.clone();
    }
}
