package androidx.compose.ui.layout;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FloatCompanionObject;
import org.jetbrains.annotations.NotNull;
/* compiled from: ScaleFactor.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class ScaleFactor {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Unspecified = ScaleFactorKt.ScaleFactor(Float.NaN, Float.NaN);
    private final long packedValue;

    /* compiled from: ScaleFactor.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getUnspecified-_hLwfpc  reason: not valid java name */
        public final long m3403getUnspecified_hLwfpc() {
            return ScaleFactor.Unspecified;
        }

        private Companion() {
        }

        @Stable
        /* renamed from: getUnspecified-_hLwfpc$annotations  reason: not valid java name */
        public static /* synthetic */ void m3402getUnspecified_hLwfpc$annotations() {
        }
    }

    private /* synthetic */ ScaleFactor(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ScaleFactor m3387boximpl(long j10) {
        return new ScaleFactor(j10);
    }

    @Stable
    /* renamed from: component1-impl  reason: not valid java name */
    public static final float m3388component1impl(long j10) {
        return m3396getScaleXimpl(j10);
    }

    @Stable
    /* renamed from: component2-impl  reason: not valid java name */
    public static final float m3389component2impl(long j10) {
        return m3397getScaleYimpl(j10);
    }

    /* renamed from: copy-8GGzs04  reason: not valid java name */
    public static final long m3391copy8GGzs04(long j10, float f10, float f11) {
        return ScaleFactorKt.ScaleFactor(f10, f11);
    }

    /* renamed from: copy-8GGzs04$default  reason: not valid java name */
    public static /* synthetic */ long m3392copy8GGzs04$default(long j10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = m3396getScaleXimpl(j10);
        }
        if ((i10 & 2) != 0) {
            f11 = m3397getScaleYimpl(j10);
        }
        return m3391copy8GGzs04(j10, f10, f11);
    }

    @Stable
    /* renamed from: div-44nBxM0  reason: not valid java name */
    public static final long m3393div44nBxM0(long j10, float f10) {
        return ScaleFactorKt.ScaleFactor(m3396getScaleXimpl(j10) / f10, m3397getScaleYimpl(j10) / f10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3394equalsimpl(long j10, Object obj) {
        if (!(obj instanceof ScaleFactor) || j10 != ((ScaleFactor) obj).m3401unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3395equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getScaleX-impl  reason: not valid java name */
    public static final float m3396getScaleXimpl(long j10) {
        if (j10 != Unspecified) {
            FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
            return Float.intBitsToFloat((int) (j10 >> 32));
        }
        throw new IllegalStateException("ScaleFactor is unspecified");
    }

    /* renamed from: getScaleY-impl  reason: not valid java name */
    public static final float m3397getScaleYimpl(long j10) {
        if (j10 != Unspecified) {
            FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
            return Float.intBitsToFloat((int) (j10 & 4294967295L));
        }
        throw new IllegalStateException("ScaleFactor is unspecified");
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3398hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    @Stable
    /* renamed from: times-44nBxM0  reason: not valid java name */
    public static final long m3399times44nBxM0(long j10, float f10) {
        return ScaleFactorKt.ScaleFactor(m3396getScaleXimpl(j10) * f10, m3397getScaleYimpl(j10) * f10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3400toStringimpl(long j10) {
        float roundToTenths;
        float roundToTenths2;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ScaleFactor(");
        roundToTenths = ScaleFactorKt.roundToTenths(m3396getScaleXimpl(j10));
        sb2.append(roundToTenths);
        sb2.append(", ");
        roundToTenths2 = ScaleFactorKt.roundToTenths(m3397getScaleYimpl(j10));
        sb2.append(roundToTenths2);
        sb2.append(')');
        return sb2.toString();
    }

    public boolean equals(Object obj) {
        return m3394equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m3398hashCodeimpl(this.packedValue);
    }

    @NotNull
    public String toString() {
        return m3400toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m3401unboximpl() {
        return this.packedValue;
    }

    public static /* synthetic */ void getPackedValue$annotations() {
    }

    @Stable
    public static /* synthetic */ void getScaleX$annotations() {
    }

    @Stable
    public static /* synthetic */ void getScaleY$annotations() {
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m3390constructorimpl(long j10) {
        return j10;
    }
}
