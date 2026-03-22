package androidx.compose.ui.geometry;

import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RoundRect.kt */
@Metadata
/* loaded from: classes.dex */
public final class RoundRectKt {
    @NotNull
    public static final RoundRect RoundRect(float f10, float f11, float f12, float f13, float f14, float f15) {
        long CornerRadius = CornerRadiusKt.CornerRadius(f14, f15);
        return new RoundRect(f10, f11, f12, f13, CornerRadius, CornerRadius, CornerRadius, CornerRadius, null);
    }

    @NotNull
    /* renamed from: RoundRect-ZAM2FJo  reason: not valid java name */
    public static final RoundRect m1658RoundRectZAM2FJo(@NotNull Rect rect, long j10, long j11, long j12, long j13) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        return new RoundRect(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), j10, j11, j12, j13, null);
    }

    /* renamed from: RoundRect-ZAM2FJo$default  reason: not valid java name */
    public static /* synthetic */ RoundRect m1659RoundRectZAM2FJo$default(Rect rect, long j10, long j11, long j12, long j13, int i10, Object obj) {
        long j14;
        long j15;
        long j16;
        long j17;
        if ((i10 & 2) != 0) {
            j14 = CornerRadius.Companion.m1591getZerokKHJgLs();
        } else {
            j14 = j10;
        }
        if ((i10 & 4) != 0) {
            j15 = CornerRadius.Companion.m1591getZerokKHJgLs();
        } else {
            j15 = j11;
        }
        if ((i10 & 8) != 0) {
            j16 = CornerRadius.Companion.m1591getZerokKHJgLs();
        } else {
            j16 = j12;
        }
        if ((i10 & 16) != 0) {
            j17 = CornerRadius.Companion.m1591getZerokKHJgLs();
        } else {
            j17 = j13;
        }
        return m1658RoundRectZAM2FJo(rect, j14, j15, j16, j17);
    }

    @NotNull
    /* renamed from: RoundRect-gG7oq9Y  reason: not valid java name */
    public static final RoundRect m1660RoundRectgG7oq9Y(float f10, float f11, float f12, float f13, long j10) {
        return RoundRect(f10, f11, f12, f13, CornerRadius.m1581getXimpl(j10), CornerRadius.m1582getYimpl(j10));
    }

    @NotNull
    /* renamed from: RoundRect-sniSvfs  reason: not valid java name */
    public static final RoundRect m1661RoundRectsniSvfs(@NotNull Rect rect, long j10) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        return RoundRect(rect, CornerRadius.m1581getXimpl(j10), CornerRadius.m1582getYimpl(j10));
    }

    @NotNull
    public static final Rect getBoundingRect(@NotNull RoundRect roundRect) {
        Intrinsics.checkNotNullParameter(roundRect, "<this>");
        return new Rect(roundRect.getLeft(), roundRect.getTop(), roundRect.getRight(), roundRect.getBottom());
    }

    public static final long getCenter(@NotNull RoundRect roundRect) {
        Intrinsics.checkNotNullParameter(roundRect, "<this>");
        return OffsetKt.Offset(roundRect.getLeft() + (roundRect.getWidth() / 2.0f), roundRect.getTop() + (roundRect.getHeight() / 2.0f));
    }

    public static final float getMaxDimension(@NotNull RoundRect roundRect) {
        Intrinsics.checkNotNullParameter(roundRect, "<this>");
        return Math.max(Math.abs(roundRect.getWidth()), Math.abs(roundRect.getHeight()));
    }

    public static final float getMinDimension(@NotNull RoundRect roundRect) {
        Intrinsics.checkNotNullParameter(roundRect, "<this>");
        return Math.min(Math.abs(roundRect.getWidth()), Math.abs(roundRect.getHeight()));
    }

    @NotNull
    public static final Rect getSafeInnerRect(@NotNull RoundRect roundRect) {
        Intrinsics.checkNotNullParameter(roundRect, "<this>");
        return new Rect(roundRect.getLeft() + (Math.max(CornerRadius.m1581getXimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs()), CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs())) * 0.29289323f), roundRect.getTop() + (Math.max(CornerRadius.m1582getYimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()), CornerRadius.m1582getYimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs())) * 0.29289323f), roundRect.getRight() - (Math.max(CornerRadius.m1581getXimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs()), CornerRadius.m1581getXimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs())) * 0.29289323f), roundRect.getBottom() - (Math.max(CornerRadius.m1582getYimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs()), CornerRadius.m1582getYimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs())) * 0.29289323f));
    }

    public static final boolean isCircle(@NotNull RoundRect roundRect) {
        Intrinsics.checkNotNullParameter(roundRect, "<this>");
        if (roundRect.getWidth() == roundRect.getHeight() && isEllipse(roundRect)) {
            return true;
        }
        return false;
    }

    public static final boolean isEllipse(@NotNull RoundRect roundRect) {
        Intrinsics.checkNotNullParameter(roundRect, "<this>");
        if (CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m1581getXimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs()) && CornerRadius.m1582getYimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m1582getYimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs()) && CornerRadius.m1581getXimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs()) == CornerRadius.m1581getXimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs()) && CornerRadius.m1582getYimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs()) == CornerRadius.m1582getYimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs()) && CornerRadius.m1581getXimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs()) == CornerRadius.m1581getXimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs()) && CornerRadius.m1582getYimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs()) == CornerRadius.m1582getYimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs()) && roundRect.getWidth() <= CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) * 2.0d && roundRect.getHeight() <= CornerRadius.m1582getYimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) * 2.0d) {
            return true;
        }
        return false;
    }

    public static final boolean isEmpty(@NotNull RoundRect roundRect) {
        Intrinsics.checkNotNullParameter(roundRect, "<this>");
        if (roundRect.getLeft() < roundRect.getRight() && roundRect.getTop() < roundRect.getBottom()) {
            return false;
        }
        return true;
    }

    public static final boolean isFinite(@NotNull RoundRect roundRect) {
        Intrinsics.checkNotNullParameter(roundRect, "<this>");
        float left = roundRect.getLeft();
        if (!Float.isInfinite(left) && !Float.isNaN(left)) {
            float top = roundRect.getTop();
            if (!Float.isInfinite(top) && !Float.isNaN(top)) {
                float right = roundRect.getRight();
                if (!Float.isInfinite(right) && !Float.isNaN(right)) {
                    float bottom = roundRect.getBottom();
                    if (!Float.isInfinite(bottom) && !Float.isNaN(bottom)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final boolean isRect(@NotNull RoundRect roundRect) {
        Intrinsics.checkNotNullParameter(roundRect, "<this>");
        if ((CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) == 0.0f || CornerRadius.m1582getYimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) == 0.0f) && ((CornerRadius.m1581getXimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs()) == 0.0f || CornerRadius.m1582getYimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs()) == 0.0f) && ((CornerRadius.m1581getXimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs()) == 0.0f || CornerRadius.m1582getYimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs()) == 0.0f) && (CornerRadius.m1581getXimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs()) == 0.0f || CornerRadius.m1582getYimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs()) == 0.0f)))) {
            return true;
        }
        return false;
    }

    public static final boolean isSimple(@NotNull RoundRect roundRect) {
        Intrinsics.checkNotNullParameter(roundRect, "<this>");
        if (CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m1582getYimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) && CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m1581getXimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs()) && CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m1582getYimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs()) && CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m1581getXimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs()) && CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m1582getYimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs()) && CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m1581getXimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs()) && CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) == CornerRadius.m1582getYimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs())) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final RoundRect lerp(@NotNull RoundRect start, @NotNull RoundRect stop, float f10) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        return new RoundRect(MathHelpersKt.lerp(start.getLeft(), stop.getLeft(), f10), MathHelpersKt.lerp(start.getTop(), stop.getTop(), f10), MathHelpersKt.lerp(start.getRight(), stop.getRight(), f10), MathHelpersKt.lerp(start.getBottom(), stop.getBottom(), f10), CornerRadiusKt.m1592lerp3Ry4LBc(start.m1656getTopLeftCornerRadiuskKHJgLs(), stop.m1656getTopLeftCornerRadiuskKHJgLs(), f10), CornerRadiusKt.m1592lerp3Ry4LBc(start.m1657getTopRightCornerRadiuskKHJgLs(), stop.m1657getTopRightCornerRadiuskKHJgLs(), f10), CornerRadiusKt.m1592lerp3Ry4LBc(start.m1655getBottomRightCornerRadiuskKHJgLs(), stop.m1655getBottomRightCornerRadiuskKHJgLs(), f10), CornerRadiusKt.m1592lerp3Ry4LBc(start.m1654getBottomLeftCornerRadiuskKHJgLs(), stop.m1654getBottomLeftCornerRadiuskKHJgLs(), f10), null);
    }

    @NotNull
    /* renamed from: translate-Uv8p0NA  reason: not valid java name */
    public static final RoundRect m1662translateUv8p0NA(@NotNull RoundRect translate, long j10) {
        Intrinsics.checkNotNullParameter(translate, "$this$translate");
        return new RoundRect(translate.getLeft() + Offset.m1606getXimpl(j10), translate.getTop() + Offset.m1607getYimpl(j10), translate.getRight() + Offset.m1606getXimpl(j10), translate.getBottom() + Offset.m1607getYimpl(j10), translate.m1656getTopLeftCornerRadiuskKHJgLs(), translate.m1657getTopRightCornerRadiuskKHJgLs(), translate.m1655getBottomRightCornerRadiuskKHJgLs(), translate.m1654getBottomLeftCornerRadiuskKHJgLs(), null);
    }

    @NotNull
    public static final RoundRect RoundRect(@NotNull Rect rect, float f10, float f11) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        return RoundRect(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), f10, f11);
    }
}
