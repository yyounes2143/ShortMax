package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Dp.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class Dp implements Comparable<Dp> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final float Hairline = m4049constructorimpl(0.0f);
    private static final float Infinity = m4049constructorimpl(Float.POSITIVE_INFINITY);
    private static final float Unspecified = m4049constructorimpl(Float.NaN);
    private final float value;

    /* compiled from: Dp.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getHairline-D9Ej5fM  reason: not valid java name */
        public final float m4067getHairlineD9Ej5fM() {
            return Dp.Hairline;
        }

        /* renamed from: getInfinity-D9Ej5fM  reason: not valid java name */
        public final float m4068getInfinityD9Ej5fM() {
            return Dp.Infinity;
        }

        /* renamed from: getUnspecified-D9Ej5fM  reason: not valid java name */
        public final float m4069getUnspecifiedD9Ej5fM() {
            return Dp.Unspecified;
        }

        private Companion() {
        }

        @Stable
        /* renamed from: getHairline-D9Ej5fM$annotations  reason: not valid java name */
        public static /* synthetic */ void m4064getHairlineD9Ej5fM$annotations() {
        }

        @Stable
        /* renamed from: getInfinity-D9Ej5fM$annotations  reason: not valid java name */
        public static /* synthetic */ void m4065getInfinityD9Ej5fM$annotations() {
        }

        @Stable
        /* renamed from: getUnspecified-D9Ej5fM$annotations  reason: not valid java name */
        public static /* synthetic */ void m4066getUnspecifiedD9Ej5fM$annotations() {
        }
    }

    private /* synthetic */ Dp(float f10) {
        this.value = f10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Dp m4047boximpl(float f10) {
        return new Dp(f10);
    }

    @Stable
    /* renamed from: div-0680j_4  reason: not valid java name */
    public static final float m4050div0680j_4(float f10, float f11) {
        return f10 / f11;
    }

    @Stable
    /* renamed from: div-u2uoSUM  reason: not valid java name */
    public static final float m4051divu2uoSUM(float f10, float f11) {
        return m4049constructorimpl(f10 / f11);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m4053equalsimpl(float f10, Object obj) {
        if (!(obj instanceof Dp)) {
            return false;
        }
        if (!Intrinsics.areEqual((Object) Float.valueOf(f10), (Object) Float.valueOf(((Dp) obj).m4063unboximpl()))) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m4054equalsimpl0(float f10, float f11) {
        return Intrinsics.areEqual((Object) Float.valueOf(f10), (Object) Float.valueOf(f11));
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m4055hashCodeimpl(float f10) {
        return Float.hashCode(f10);
    }

    @Stable
    /* renamed from: minus-5rwHm24  reason: not valid java name */
    public static final float m4056minus5rwHm24(float f10, float f11) {
        return m4049constructorimpl(f10 - f11);
    }

    @Stable
    /* renamed from: plus-5rwHm24  reason: not valid java name */
    public static final float m4057plus5rwHm24(float f10, float f11) {
        return m4049constructorimpl(f10 + f11);
    }

    @Stable
    /* renamed from: times-u2uoSUM  reason: not valid java name */
    public static final float m4058timesu2uoSUM(float f10, float f11) {
        return m4049constructorimpl(f10 * f11);
    }

    @Stable
    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m4060toStringimpl(float f10) {
        if (Float.isNaN(f10)) {
            return "Dp.Unspecified";
        }
        return f10 + ".dp";
    }

    @Stable
    /* renamed from: unaryMinus-D9Ej5fM  reason: not valid java name */
    public static final float m4061unaryMinusD9Ej5fM(float f10) {
        return m4049constructorimpl(-f10);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Dp dp2) {
        return m4062compareTo0680j_4(dp2.m4063unboximpl());
    }

    @Stable
    /* renamed from: compareTo-0680j_4  reason: not valid java name */
    public int m4062compareTo0680j_4(float f10) {
        return m4048compareTo0680j_4(this.value, f10);
    }

    public boolean equals(Object obj) {
        return m4053equalsimpl(this.value, obj);
    }

    public final float getValue() {
        return this.value;
    }

    public int hashCode() {
        return m4055hashCodeimpl(this.value);
    }

    @Stable
    @NotNull
    public String toString() {
        return m4060toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ float m4063unboximpl() {
        return this.value;
    }

    @Stable
    /* renamed from: compareTo-0680j_4  reason: not valid java name */
    public static int m4048compareTo0680j_4(float f10, float f11) {
        return Float.compare(f10, f11);
    }

    @Stable
    /* renamed from: div-u2uoSUM  reason: not valid java name */
    public static final float m4052divu2uoSUM(float f10, int i10) {
        return m4049constructorimpl(f10 / i10);
    }

    @Stable
    /* renamed from: times-u2uoSUM  reason: not valid java name */
    public static final float m4059timesu2uoSUM(float f10, int i10) {
        return m4049constructorimpl(f10 * i10);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static float m4049constructorimpl(float f10) {
        return f10;
    }
}
