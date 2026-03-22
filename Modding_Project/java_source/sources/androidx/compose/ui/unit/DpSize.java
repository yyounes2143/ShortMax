package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FloatCompanionObject;
import org.jetbrains.annotations.NotNull;
/* compiled from: Dp.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class DpSize {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Unspecified;
    private static final long Zero;
    private final long packedValue;

    /* compiled from: Dp.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getUnspecified-MYxV2XQ  reason: not valid java name */
        public final long m4156getUnspecifiedMYxV2XQ() {
            return DpSize.Unspecified;
        }

        /* renamed from: getZero-MYxV2XQ  reason: not valid java name */
        public final long m4157getZeroMYxV2XQ() {
            return DpSize.Zero;
        }

        private Companion() {
        }
    }

    static {
        float f10 = 0;
        Zero = DpKt.m4071DpSizeYgX7TsA(Dp.m4049constructorimpl(f10), Dp.m4049constructorimpl(f10));
        Dp.Companion companion = Dp.Companion;
        Unspecified = DpKt.m4071DpSizeYgX7TsA(companion.m4069getUnspecifiedD9Ej5fM(), companion.m4069getUnspecifiedD9Ej5fM());
    }

    private /* synthetic */ DpSize(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ DpSize m4135boximpl(long j10) {
        return new DpSize(j10);
    }

    @Stable
    /* renamed from: component1-D9Ej5fM  reason: not valid java name */
    public static final float m4136component1D9Ej5fM(long j10) {
        return m4147getWidthD9Ej5fM(j10);
    }

    @Stable
    /* renamed from: component2-D9Ej5fM  reason: not valid java name */
    public static final float m4137component2D9Ej5fM(long j10) {
        return m4145getHeightD9Ej5fM(j10);
    }

    /* renamed from: copy-DwJknco  reason: not valid java name */
    public static final long m4139copyDwJknco(long j10, float f10, float f11) {
        return DpKt.m4071DpSizeYgX7TsA(f10, f11);
    }

    /* renamed from: copy-DwJknco$default  reason: not valid java name */
    public static /* synthetic */ long m4140copyDwJknco$default(long j10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = m4147getWidthD9Ej5fM(j10);
        }
        if ((i10 & 2) != 0) {
            f11 = m4145getHeightD9Ej5fM(j10);
        }
        return m4139copyDwJknco(j10, f10, f11);
    }

    @Stable
    /* renamed from: div-Gh9hcWk  reason: not valid java name */
    public static final long m4142divGh9hcWk(long j10, int i10) {
        float f10 = i10;
        return DpKt.m4071DpSizeYgX7TsA(Dp.m4049constructorimpl(m4147getWidthD9Ej5fM(j10) / f10), Dp.m4049constructorimpl(m4145getHeightD9Ej5fM(j10) / f10));
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m4143equalsimpl(long j10, Object obj) {
        if (!(obj instanceof DpSize) || j10 != ((DpSize) obj).m4155unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m4144equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getHeight-D9Ej5fM  reason: not valid java name */
    public static final float m4145getHeightD9Ej5fM(long j10) {
        if (j10 != Unspecified) {
            FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
            return Dp.m4049constructorimpl(Float.intBitsToFloat((int) (j10 & 4294967295L)));
        }
        throw new IllegalStateException("DpSize is unspecified");
    }

    /* renamed from: getWidth-D9Ej5fM  reason: not valid java name */
    public static final float m4147getWidthD9Ej5fM(long j10) {
        if (j10 != Unspecified) {
            FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
            return Dp.m4049constructorimpl(Float.intBitsToFloat((int) (j10 >> 32)));
        }
        throw new IllegalStateException("DpSize is unspecified");
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m4149hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    @Stable
    /* renamed from: minus-e_xh8Ic  reason: not valid java name */
    public static final long m4150minuse_xh8Ic(long j10, long j11) {
        return DpKt.m4071DpSizeYgX7TsA(Dp.m4049constructorimpl(m4147getWidthD9Ej5fM(j10) - m4147getWidthD9Ej5fM(j11)), Dp.m4049constructorimpl(m4145getHeightD9Ej5fM(j10) - m4145getHeightD9Ej5fM(j11)));
    }

    @Stable
    /* renamed from: plus-e_xh8Ic  reason: not valid java name */
    public static final long m4151pluse_xh8Ic(long j10, long j11) {
        return DpKt.m4071DpSizeYgX7TsA(Dp.m4049constructorimpl(m4147getWidthD9Ej5fM(j10) + m4147getWidthD9Ej5fM(j11)), Dp.m4049constructorimpl(m4145getHeightD9Ej5fM(j10) + m4145getHeightD9Ej5fM(j11)));
    }

    @Stable
    /* renamed from: times-Gh9hcWk  reason: not valid java name */
    public static final long m4153timesGh9hcWk(long j10, int i10) {
        float f10 = i10;
        return DpKt.m4071DpSizeYgX7TsA(Dp.m4049constructorimpl(m4147getWidthD9Ej5fM(j10) * f10), Dp.m4049constructorimpl(m4145getHeightD9Ej5fM(j10) * f10));
    }

    @Stable
    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m4154toStringimpl(long j10) {
        if (j10 != Companion.m4156getUnspecifiedMYxV2XQ()) {
            return ((Object) Dp.m4060toStringimpl(m4147getWidthD9Ej5fM(j10))) + " x " + ((Object) Dp.m4060toStringimpl(m4145getHeightD9Ej5fM(j10)));
        }
        return "DpSize.Unspecified";
    }

    public boolean equals(Object obj) {
        return m4143equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m4149hashCodeimpl(this.packedValue);
    }

    @Stable
    @NotNull
    public String toString() {
        return m4154toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m4155unboximpl() {
        return this.packedValue;
    }

    @Stable
    /* renamed from: div-Gh9hcWk  reason: not valid java name */
    public static final long m4141divGh9hcWk(long j10, float f10) {
        return DpKt.m4071DpSizeYgX7TsA(Dp.m4049constructorimpl(m4147getWidthD9Ej5fM(j10) / f10), Dp.m4049constructorimpl(m4145getHeightD9Ej5fM(j10) / f10));
    }

    @Stable
    /* renamed from: times-Gh9hcWk  reason: not valid java name */
    public static final long m4152timesGh9hcWk(long j10, float f10) {
        return DpKt.m4071DpSizeYgX7TsA(Dp.m4049constructorimpl(m4147getWidthD9Ej5fM(j10) * f10), Dp.m4049constructorimpl(m4145getHeightD9Ej5fM(j10) * f10));
    }

    @Stable
    /* renamed from: getHeight-D9Ej5fM$annotations  reason: not valid java name */
    public static /* synthetic */ void m4146getHeightD9Ej5fM$annotations() {
    }

    public static /* synthetic */ void getPackedValue$annotations() {
    }

    @Stable
    /* renamed from: getWidth-D9Ej5fM$annotations  reason: not valid java name */
    public static /* synthetic */ void m4148getWidthD9Ej5fM$annotations() {
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m4138constructorimpl(long j10) {
        return j10;
    }
}
