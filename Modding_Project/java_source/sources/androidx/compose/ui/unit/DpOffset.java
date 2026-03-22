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
public final class DpOffset {
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

        /* renamed from: getUnspecified-RKDOV3M  reason: not valid java name */
        public final long m4119getUnspecifiedRKDOV3M() {
            return DpOffset.Unspecified;
        }

        /* renamed from: getZero-RKDOV3M  reason: not valid java name */
        public final long m4120getZeroRKDOV3M() {
            return DpOffset.Zero;
        }

        private Companion() {
        }
    }

    static {
        float f10 = 0;
        Zero = DpKt.m4070DpOffsetYgX7TsA(Dp.m4049constructorimpl(f10), Dp.m4049constructorimpl(f10));
        Dp.Companion companion = Dp.Companion;
        Unspecified = DpKt.m4070DpOffsetYgX7TsA(companion.m4069getUnspecifiedD9Ej5fM(), companion.m4069getUnspecifiedD9Ej5fM());
    }

    private /* synthetic */ DpOffset(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ DpOffset m4104boximpl(long j10) {
        return new DpOffset(j10);
    }

    /* renamed from: copy-tPigGR8  reason: not valid java name */
    public static final long m4106copytPigGR8(long j10, float f10, float f11) {
        return DpKt.m4070DpOffsetYgX7TsA(f10, f11);
    }

    /* renamed from: copy-tPigGR8$default  reason: not valid java name */
    public static /* synthetic */ long m4107copytPigGR8$default(long j10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = m4110getXD9Ej5fM(j10);
        }
        if ((i10 & 2) != 0) {
            f11 = m4112getYD9Ej5fM(j10);
        }
        return m4106copytPigGR8(j10, f10, f11);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m4108equalsimpl(long j10, Object obj) {
        if (!(obj instanceof DpOffset) || j10 != ((DpOffset) obj).m4118unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m4109equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getX-D9Ej5fM  reason: not valid java name */
    public static final float m4110getXD9Ej5fM(long j10) {
        if (j10 != Unspecified) {
            FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
            return Dp.m4049constructorimpl(Float.intBitsToFloat((int) (j10 >> 32)));
        }
        throw new IllegalStateException("DpOffset is unspecified");
    }

    /* renamed from: getY-D9Ej5fM  reason: not valid java name */
    public static final float m4112getYD9Ej5fM(long j10) {
        if (j10 != Unspecified) {
            FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
            return Dp.m4049constructorimpl(Float.intBitsToFloat((int) (j10 & 4294967295L)));
        }
        throw new IllegalStateException("DpOffset is unspecified");
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m4114hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    @Stable
    /* renamed from: minus-CB-Mgk4  reason: not valid java name */
    public static final long m4115minusCBMgk4(long j10, long j11) {
        return DpKt.m4070DpOffsetYgX7TsA(Dp.m4049constructorimpl(m4110getXD9Ej5fM(j10) - m4110getXD9Ej5fM(j11)), Dp.m4049constructorimpl(m4112getYD9Ej5fM(j10) - m4112getYD9Ej5fM(j11)));
    }

    @Stable
    /* renamed from: plus-CB-Mgk4  reason: not valid java name */
    public static final long m4116plusCBMgk4(long j10, long j11) {
        return DpKt.m4070DpOffsetYgX7TsA(Dp.m4049constructorimpl(m4110getXD9Ej5fM(j10) + m4110getXD9Ej5fM(j11)), Dp.m4049constructorimpl(m4112getYD9Ej5fM(j10) + m4112getYD9Ej5fM(j11)));
    }

    @Stable
    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m4117toStringimpl(long j10) {
        if (j10 != Companion.m4119getUnspecifiedRKDOV3M()) {
            return '(' + ((Object) Dp.m4060toStringimpl(m4110getXD9Ej5fM(j10))) + ", " + ((Object) Dp.m4060toStringimpl(m4112getYD9Ej5fM(j10))) + ')';
        }
        return "DpOffset.Unspecified";
    }

    public boolean equals(Object obj) {
        return m4108equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m4114hashCodeimpl(this.packedValue);
    }

    @Stable
    @NotNull
    public String toString() {
        return m4117toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m4118unboximpl() {
        return this.packedValue;
    }

    public static /* synthetic */ void getPackedValue$annotations() {
    }

    @Stable
    /* renamed from: getX-D9Ej5fM$annotations  reason: not valid java name */
    public static /* synthetic */ void m4111getXD9Ej5fM$annotations() {
    }

    @Stable
    /* renamed from: getY-D9Ej5fM$annotations  reason: not valid java name */
    public static /* synthetic */ void m4113getYD9Ej5fM$annotations() {
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m4105constructorimpl(long j10) {
        return j10;
    }
}
