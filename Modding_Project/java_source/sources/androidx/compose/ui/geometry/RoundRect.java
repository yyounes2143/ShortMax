package androidx.compose.ui.geometry;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoundRect.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class RoundRect {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final RoundRect Zero = RoundRectKt.m1660RoundRectgG7oq9Y(0.0f, 0.0f, 0.0f, 0.0f, CornerRadius.Companion.m1591getZerokKHJgLs());
    @Nullable
    private RoundRect _scaledRadiiRect;
    private final float bottom;
    private final long bottomLeftCornerRadius;
    private final long bottomRightCornerRadius;
    private final float left;
    private final float right;
    private final float top;
    private final long topLeftCornerRadius;
    private final long topRightCornerRadius;

    /* compiled from: RoundRect.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final RoundRect getZero() {
            return RoundRect.Zero;
        }

        private Companion() {
        }

        public static /* synthetic */ void getZero$annotations() {
        }
    }

    public /* synthetic */ RoundRect(float f10, float f11, float f12, float f13, long j10, long j11, long j12, long j13, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, f12, f13, j10, j11, j12, j13);
    }

    /* renamed from: copy-MDFrsts$default  reason: not valid java name */
    public static /* synthetic */ RoundRect m1647copyMDFrsts$default(RoundRect roundRect, float f10, float f11, float f12, float f13, long j10, long j11, long j12, long j13, int i10, Object obj) {
        float f14;
        float f15;
        float f16;
        float f17;
        long j14;
        long j15;
        long j16;
        long j17;
        if ((i10 & 1) != 0) {
            f14 = roundRect.left;
        } else {
            f14 = f10;
        }
        if ((i10 & 2) != 0) {
            f15 = roundRect.top;
        } else {
            f15 = f11;
        }
        if ((i10 & 4) != 0) {
            f16 = roundRect.right;
        } else {
            f16 = f12;
        }
        if ((i10 & 8) != 0) {
            f17 = roundRect.bottom;
        } else {
            f17 = f13;
        }
        if ((i10 & 16) != 0) {
            j14 = roundRect.topLeftCornerRadius;
        } else {
            j14 = j10;
        }
        if ((i10 & 32) != 0) {
            j15 = roundRect.topRightCornerRadius;
        } else {
            j15 = j11;
        }
        if ((i10 & 64) != 0) {
            j16 = roundRect.bottomRightCornerRadius;
        } else {
            j16 = j12;
        }
        if ((i10 & 128) != 0) {
            j17 = roundRect.bottomLeftCornerRadius;
        } else {
            j17 = j13;
        }
        return roundRect.m1653copyMDFrsts(f14, f15, f16, f17, j14, j15, j16, j17);
    }

    @NotNull
    public static final RoundRect getZero() {
        return Companion.getZero();
    }

    private final float minRadius(float f10, float f11, float f12, float f13) {
        float f14 = f11 + f12;
        if (f14 > f13 && f14 != 0.0f) {
            return Math.min(f10, f13 / f14);
        }
        return f10;
    }

    private final RoundRect scaledRadiiRect() {
        RoundRect roundRect = this._scaledRadiiRect;
        if (roundRect == null) {
            float minRadius = minRadius(minRadius(minRadius(minRadius(1.0f, CornerRadius.m1582getYimpl(this.bottomLeftCornerRadius), CornerRadius.m1582getYimpl(this.topLeftCornerRadius), getHeight()), CornerRadius.m1581getXimpl(this.topLeftCornerRadius), CornerRadius.m1581getXimpl(this.topRightCornerRadius), getWidth()), CornerRadius.m1582getYimpl(this.topRightCornerRadius), CornerRadius.m1582getYimpl(this.bottomRightCornerRadius), getHeight()), CornerRadius.m1581getXimpl(this.bottomRightCornerRadius), CornerRadius.m1581getXimpl(this.bottomLeftCornerRadius), getWidth());
            RoundRect roundRect2 = new RoundRect(this.left * minRadius, this.top * minRadius, this.right * minRadius, this.bottom * minRadius, CornerRadiusKt.CornerRadius(CornerRadius.m1581getXimpl(this.topLeftCornerRadius) * minRadius, CornerRadius.m1582getYimpl(this.topLeftCornerRadius) * minRadius), CornerRadiusKt.CornerRadius(CornerRadius.m1581getXimpl(this.topRightCornerRadius) * minRadius, CornerRadius.m1582getYimpl(this.topRightCornerRadius) * minRadius), CornerRadiusKt.CornerRadius(CornerRadius.m1581getXimpl(this.bottomRightCornerRadius) * minRadius, CornerRadius.m1582getYimpl(this.bottomRightCornerRadius) * minRadius), CornerRadiusKt.CornerRadius(CornerRadius.m1581getXimpl(this.bottomLeftCornerRadius) * minRadius, CornerRadius.m1582getYimpl(this.bottomLeftCornerRadius) * minRadius), null);
            this._scaledRadiiRect = roundRect2;
            return roundRect2;
        }
        return roundRect;
    }

    public final float component1() {
        return this.left;
    }

    public final float component2() {
        return this.top;
    }

    public final float component3() {
        return this.right;
    }

    public final float component4() {
        return this.bottom;
    }

    /* renamed from: component5-kKHJgLs  reason: not valid java name */
    public final long m1648component5kKHJgLs() {
        return this.topLeftCornerRadius;
    }

    /* renamed from: component6-kKHJgLs  reason: not valid java name */
    public final long m1649component6kKHJgLs() {
        return this.topRightCornerRadius;
    }

    /* renamed from: component7-kKHJgLs  reason: not valid java name */
    public final long m1650component7kKHJgLs() {
        return this.bottomRightCornerRadius;
    }

    /* renamed from: component8-kKHJgLs  reason: not valid java name */
    public final long m1651component8kKHJgLs() {
        return this.bottomLeftCornerRadius;
    }

    /* renamed from: contains-k-4lQ0M  reason: not valid java name */
    public final boolean m1652containsk4lQ0M(long j10) {
        float m1606getXimpl;
        float m1607getYimpl;
        float m1581getXimpl;
        float m1582getYimpl;
        if (Offset.m1606getXimpl(j10) < this.left || Offset.m1606getXimpl(j10) >= this.right || Offset.m1607getYimpl(j10) < this.top || Offset.m1607getYimpl(j10) >= this.bottom) {
            return false;
        }
        RoundRect scaledRadiiRect = scaledRadiiRect();
        if (Offset.m1606getXimpl(j10) < this.left + CornerRadius.m1581getXimpl(scaledRadiiRect.topLeftCornerRadius) && Offset.m1607getYimpl(j10) < this.top + CornerRadius.m1582getYimpl(scaledRadiiRect.topLeftCornerRadius)) {
            m1606getXimpl = (Offset.m1606getXimpl(j10) - this.left) - CornerRadius.m1581getXimpl(scaledRadiiRect.topLeftCornerRadius);
            m1607getYimpl = (Offset.m1607getYimpl(j10) - this.top) - CornerRadius.m1582getYimpl(scaledRadiiRect.topLeftCornerRadius);
            m1581getXimpl = CornerRadius.m1581getXimpl(scaledRadiiRect.topLeftCornerRadius);
            m1582getYimpl = CornerRadius.m1582getYimpl(scaledRadiiRect.topLeftCornerRadius);
        } else if (Offset.m1606getXimpl(j10) > this.right - CornerRadius.m1581getXimpl(scaledRadiiRect.topRightCornerRadius) && Offset.m1607getYimpl(j10) < this.top + CornerRadius.m1582getYimpl(scaledRadiiRect.topRightCornerRadius)) {
            m1606getXimpl = (Offset.m1606getXimpl(j10) - this.right) + CornerRadius.m1581getXimpl(scaledRadiiRect.topRightCornerRadius);
            m1607getYimpl = (Offset.m1607getYimpl(j10) - this.top) - CornerRadius.m1582getYimpl(scaledRadiiRect.topRightCornerRadius);
            m1581getXimpl = CornerRadius.m1581getXimpl(scaledRadiiRect.topRightCornerRadius);
            m1582getYimpl = CornerRadius.m1582getYimpl(scaledRadiiRect.topRightCornerRadius);
        } else if (Offset.m1606getXimpl(j10) > this.right - CornerRadius.m1581getXimpl(scaledRadiiRect.bottomRightCornerRadius) && Offset.m1607getYimpl(j10) > this.bottom - CornerRadius.m1582getYimpl(scaledRadiiRect.bottomRightCornerRadius)) {
            m1606getXimpl = (Offset.m1606getXimpl(j10) - this.right) + CornerRadius.m1581getXimpl(scaledRadiiRect.bottomRightCornerRadius);
            m1607getYimpl = (Offset.m1607getYimpl(j10) - this.bottom) + CornerRadius.m1582getYimpl(scaledRadiiRect.bottomRightCornerRadius);
            m1581getXimpl = CornerRadius.m1581getXimpl(scaledRadiiRect.bottomRightCornerRadius);
            m1582getYimpl = CornerRadius.m1582getYimpl(scaledRadiiRect.bottomRightCornerRadius);
        } else if (Offset.m1606getXimpl(j10) >= this.left + CornerRadius.m1581getXimpl(scaledRadiiRect.bottomLeftCornerRadius) || Offset.m1607getYimpl(j10) <= this.bottom - CornerRadius.m1582getYimpl(scaledRadiiRect.bottomLeftCornerRadius)) {
            return true;
        } else {
            m1606getXimpl = (Offset.m1606getXimpl(j10) - this.left) - CornerRadius.m1581getXimpl(scaledRadiiRect.bottomLeftCornerRadius);
            m1607getYimpl = (Offset.m1607getYimpl(j10) - this.bottom) + CornerRadius.m1582getYimpl(scaledRadiiRect.bottomLeftCornerRadius);
            m1581getXimpl = CornerRadius.m1581getXimpl(scaledRadiiRect.bottomLeftCornerRadius);
            m1582getYimpl = CornerRadius.m1582getYimpl(scaledRadiiRect.bottomLeftCornerRadius);
        }
        float f10 = m1606getXimpl / m1581getXimpl;
        float f11 = m1607getYimpl / m1582getYimpl;
        if ((f10 * f10) + (f11 * f11) > 1.0f) {
            return false;
        }
        return true;
    }

    @NotNull
    /* renamed from: copy-MDFrsts  reason: not valid java name */
    public final RoundRect m1653copyMDFrsts(float f10, float f11, float f12, float f13, long j10, long j11, long j12, long j13) {
        return new RoundRect(f10, f11, f12, f13, j10, j11, j12, j13, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoundRect)) {
            return false;
        }
        RoundRect roundRect = (RoundRect) obj;
        if (Intrinsics.areEqual((Object) Float.valueOf(this.left), (Object) Float.valueOf(roundRect.left)) && Intrinsics.areEqual((Object) Float.valueOf(this.top), (Object) Float.valueOf(roundRect.top)) && Intrinsics.areEqual((Object) Float.valueOf(this.right), (Object) Float.valueOf(roundRect.right)) && Intrinsics.areEqual((Object) Float.valueOf(this.bottom), (Object) Float.valueOf(roundRect.bottom)) && CornerRadius.m1580equalsimpl0(this.topLeftCornerRadius, roundRect.topLeftCornerRadius) && CornerRadius.m1580equalsimpl0(this.topRightCornerRadius, roundRect.topRightCornerRadius) && CornerRadius.m1580equalsimpl0(this.bottomRightCornerRadius, roundRect.bottomRightCornerRadius) && CornerRadius.m1580equalsimpl0(this.bottomLeftCornerRadius, roundRect.bottomLeftCornerRadius)) {
            return true;
        }
        return false;
    }

    public final float getBottom() {
        return this.bottom;
    }

    /* renamed from: getBottomLeftCornerRadius-kKHJgLs  reason: not valid java name */
    public final long m1654getBottomLeftCornerRadiuskKHJgLs() {
        return this.bottomLeftCornerRadius;
    }

    /* renamed from: getBottomRightCornerRadius-kKHJgLs  reason: not valid java name */
    public final long m1655getBottomRightCornerRadiuskKHJgLs() {
        return this.bottomRightCornerRadius;
    }

    public final float getHeight() {
        return this.bottom - this.top;
    }

    public final float getLeft() {
        return this.left;
    }

    public final float getRight() {
        return this.right;
    }

    public final float getTop() {
        return this.top;
    }

    /* renamed from: getTopLeftCornerRadius-kKHJgLs  reason: not valid java name */
    public final long m1656getTopLeftCornerRadiuskKHJgLs() {
        return this.topLeftCornerRadius;
    }

    /* renamed from: getTopRightCornerRadius-kKHJgLs  reason: not valid java name */
    public final long m1657getTopRightCornerRadiuskKHJgLs() {
        return this.topRightCornerRadius;
    }

    public final float getWidth() {
        return this.right - this.left;
    }

    public int hashCode() {
        return (((((((((((((Float.hashCode(this.left) * 31) + Float.hashCode(this.top)) * 31) + Float.hashCode(this.right)) * 31) + Float.hashCode(this.bottom)) * 31) + CornerRadius.m1583hashCodeimpl(this.topLeftCornerRadius)) * 31) + CornerRadius.m1583hashCodeimpl(this.topRightCornerRadius)) * 31) + CornerRadius.m1583hashCodeimpl(this.bottomRightCornerRadius)) * 31) + CornerRadius.m1583hashCodeimpl(this.bottomLeftCornerRadius);
    }

    @NotNull
    public String toString() {
        long j10 = this.topLeftCornerRadius;
        long j11 = this.topRightCornerRadius;
        long j12 = this.bottomRightCornerRadius;
        long j13 = this.bottomLeftCornerRadius;
        String str = GeometryUtilsKt.toStringAsFixed(this.left, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.top, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.right, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.bottom, 1);
        if (CornerRadius.m1580equalsimpl0(j10, j11) && CornerRadius.m1580equalsimpl0(j11, j12) && CornerRadius.m1580equalsimpl0(j12, j13)) {
            if (CornerRadius.m1581getXimpl(j10) == CornerRadius.m1582getYimpl(j10)) {
                return "RoundRect(rect=" + str + ", radius=" + GeometryUtilsKt.toStringAsFixed(CornerRadius.m1581getXimpl(j10), 1) + ')';
            }
            return "RoundRect(rect=" + str + ", x=" + GeometryUtilsKt.toStringAsFixed(CornerRadius.m1581getXimpl(j10), 1) + ", y=" + GeometryUtilsKt.toStringAsFixed(CornerRadius.m1582getYimpl(j10), 1) + ')';
        }
        return "RoundRect(rect=" + str + ", topLeft=" + ((Object) CornerRadius.m1587toStringimpl(j10)) + ", topRight=" + ((Object) CornerRadius.m1587toStringimpl(j11)) + ", bottomRight=" + ((Object) CornerRadius.m1587toStringimpl(j12)) + ", bottomLeft=" + ((Object) CornerRadius.m1587toStringimpl(j13)) + ')';
    }

    private RoundRect(float f10, float f11, float f12, float f13, long j10, long j11, long j12, long j13) {
        this.left = f10;
        this.top = f11;
        this.right = f12;
        this.bottom = f13;
        this.topLeftCornerRadius = j10;
        this.topRightCornerRadius = j11;
        this.bottomRightCornerRadius = j12;
        this.bottomLeftCornerRadius = j13;
    }

    public /* synthetic */ RoundRect(float f10, float f11, float f12, float f13, long j10, long j11, long j12, long j13, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, f12, f13, (i10 & 16) != 0 ? CornerRadius.Companion.m1591getZerokKHJgLs() : j10, (i10 & 32) != 0 ? CornerRadius.Companion.m1591getZerokKHJgLs() : j11, (i10 & 64) != 0 ? CornerRadius.Companion.m1591getZerokKHJgLs() : j12, (i10 & 128) != 0 ? CornerRadius.Companion.m1591getZerokKHJgLs() : j13, null);
    }
}
