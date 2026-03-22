package androidx.compose.ui.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ScaleFactor.kt */
@Metadata
/* loaded from: classes.dex */
public final class ScaleFactorKt {
    @Stable
    public static final long ScaleFactor(float f10, float f11) {
        return ScaleFactor.m3390constructorimpl((Float.floatToIntBits(f11) & 4294967295L) | (Float.floatToIntBits(f10) << 32));
    }

    @Stable
    /* renamed from: div-UQTWf7w  reason: not valid java name */
    public static final long m3404divUQTWf7w(long j10, long j11) {
        return SizeKt.Size(Size.m1675getWidthimpl(j10) / ScaleFactor.m3396getScaleXimpl(j11), Size.m1672getHeightimpl(j10) / ScaleFactor.m3397getScaleYimpl(j11));
    }

    /* renamed from: isSpecified-FK8aYYs  reason: not valid java name */
    public static final boolean m3405isSpecifiedFK8aYYs(long j10) {
        if (j10 != ScaleFactor.Companion.m3403getUnspecified_hLwfpc()) {
            return true;
        }
        return false;
    }

    /* renamed from: isUnspecified-FK8aYYs  reason: not valid java name */
    public static final boolean m3407isUnspecifiedFK8aYYs(long j10) {
        if (j10 == ScaleFactor.Companion.m3403getUnspecified_hLwfpc()) {
            return true;
        }
        return false;
    }

    @Stable
    /* renamed from: lerp--bDIf60  reason: not valid java name */
    public static final long m3409lerpbDIf60(long j10, long j11, float f10) {
        return ScaleFactor(MathHelpersKt.lerp(ScaleFactor.m3396getScaleXimpl(j10), ScaleFactor.m3396getScaleXimpl(j11), f10), MathHelpersKt.lerp(ScaleFactor.m3397getScaleYimpl(j10), ScaleFactor.m3397getScaleYimpl(j11), f10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float roundToTenths(float f10) {
        float f11 = 10;
        float f12 = f10 * f11;
        int i10 = (int) f12;
        if (f12 - i10 >= 0.5f) {
            i10++;
        }
        return i10 / f11;
    }

    /* renamed from: takeOrElse-oyDd2qo  reason: not valid java name */
    public static final long m3410takeOrElseoyDd2qo(long j10, @NotNull Function0<ScaleFactor> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if (j10 == ScaleFactor.Companion.m3403getUnspecified_hLwfpc()) {
            return block.invoke().m3401unboximpl();
        }
        return j10;
    }

    @Stable
    /* renamed from: times-UQTWf7w  reason: not valid java name */
    public static final long m3411timesUQTWf7w(long j10, long j11) {
        return SizeKt.Size(Size.m1675getWidthimpl(j10) * ScaleFactor.m3396getScaleXimpl(j11), Size.m1672getHeightimpl(j10) * ScaleFactor.m3397getScaleYimpl(j11));
    }

    @Stable
    /* renamed from: times-m-w2e94  reason: not valid java name */
    public static final long m3412timesmw2e94(long j10, long j11) {
        return m3411timesUQTWf7w(j11, j10);
    }

    @Stable
    /* renamed from: isSpecified-FK8aYYs$annotations  reason: not valid java name */
    public static /* synthetic */ void m3406isSpecifiedFK8aYYs$annotations(long j10) {
    }

    @Stable
    /* renamed from: isUnspecified-FK8aYYs$annotations  reason: not valid java name */
    public static /* synthetic */ void m3408isUnspecifiedFK8aYYs$annotations(long j10) {
    }
}
