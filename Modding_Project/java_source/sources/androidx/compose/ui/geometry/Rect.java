package androidx.compose.ui.geometry;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Rect.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class Rect {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Rect Zero = new Rect(0.0f, 0.0f, 0.0f, 0.0f);
    private final float bottom;
    private final float left;
    private final float right;
    private final float top;

    /* compiled from: Rect.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Rect getZero() {
            return Rect.Zero;
        }

        private Companion() {
        }

        @Stable
        public static /* synthetic */ void getZero$annotations() {
        }
    }

    public Rect(float f10, float f11, float f12, float f13) {
        this.left = f10;
        this.top = f11;
        this.right = f12;
        this.bottom = f13;
    }

    public static /* synthetic */ Rect copy$default(Rect rect, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = rect.left;
        }
        if ((i10 & 2) != 0) {
            f11 = rect.top;
        }
        if ((i10 & 4) != 0) {
            f12 = rect.right;
        }
        if ((i10 & 8) != 0) {
            f13 = rect.bottom;
        }
        return rect.copy(f10, f11, f12, f13);
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

    /* renamed from: contains-k-4lQ0M  reason: not valid java name */
    public final boolean m1632containsk4lQ0M(long j10) {
        if (Offset.m1606getXimpl(j10) >= this.left && Offset.m1606getXimpl(j10) < this.right && Offset.m1607getYimpl(j10) >= this.top && Offset.m1607getYimpl(j10) < this.bottom) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Rect copy(float f10, float f11, float f12, float f13) {
        return new Rect(f10, f11, f12, f13);
    }

    @Stable
    @NotNull
    public final Rect deflate(float f10) {
        return inflate(-f10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Rect)) {
            return false;
        }
        Rect rect = (Rect) obj;
        if (Intrinsics.areEqual((Object) Float.valueOf(this.left), (Object) Float.valueOf(rect.left)) && Intrinsics.areEqual((Object) Float.valueOf(this.top), (Object) Float.valueOf(rect.top)) && Intrinsics.areEqual((Object) Float.valueOf(this.right), (Object) Float.valueOf(rect.right)) && Intrinsics.areEqual((Object) Float.valueOf(this.bottom), (Object) Float.valueOf(rect.bottom))) {
            return true;
        }
        return false;
    }

    public final float getBottom() {
        return this.bottom;
    }

    /* renamed from: getBottomCenter-F1C5BW0  reason: not valid java name */
    public final long m1633getBottomCenterF1C5BW0() {
        return OffsetKt.Offset(this.left + (getWidth() / 2.0f), this.bottom);
    }

    /* renamed from: getBottomLeft-F1C5BW0  reason: not valid java name */
    public final long m1634getBottomLeftF1C5BW0() {
        return OffsetKt.Offset(this.left, this.bottom);
    }

    /* renamed from: getBottomRight-F1C5BW0  reason: not valid java name */
    public final long m1635getBottomRightF1C5BW0() {
        return OffsetKt.Offset(this.right, this.bottom);
    }

    /* renamed from: getCenter-F1C5BW0  reason: not valid java name */
    public final long m1636getCenterF1C5BW0() {
        return OffsetKt.Offset(this.left + (getWidth() / 2.0f), this.top + (getHeight() / 2.0f));
    }

    /* renamed from: getCenterLeft-F1C5BW0  reason: not valid java name */
    public final long m1637getCenterLeftF1C5BW0() {
        return OffsetKt.Offset(this.left, this.top + (getHeight() / 2.0f));
    }

    /* renamed from: getCenterRight-F1C5BW0  reason: not valid java name */
    public final long m1638getCenterRightF1C5BW0() {
        return OffsetKt.Offset(this.right, this.top + (getHeight() / 2.0f));
    }

    public final float getHeight() {
        return this.bottom - this.top;
    }

    public final float getLeft() {
        return this.left;
    }

    public final float getMaxDimension() {
        return Math.max(Math.abs(getWidth()), Math.abs(getHeight()));
    }

    public final float getMinDimension() {
        return Math.min(Math.abs(getWidth()), Math.abs(getHeight()));
    }

    public final float getRight() {
        return this.right;
    }

    /* renamed from: getSize-NH-jbRc  reason: not valid java name */
    public final long m1639getSizeNHjbRc() {
        return SizeKt.Size(getWidth(), getHeight());
    }

    public final float getTop() {
        return this.top;
    }

    /* renamed from: getTopCenter-F1C5BW0  reason: not valid java name */
    public final long m1640getTopCenterF1C5BW0() {
        return OffsetKt.Offset(this.left + (getWidth() / 2.0f), this.top);
    }

    /* renamed from: getTopLeft-F1C5BW0  reason: not valid java name */
    public final long m1641getTopLeftF1C5BW0() {
        return OffsetKt.Offset(this.left, this.top);
    }

    /* renamed from: getTopRight-F1C5BW0  reason: not valid java name */
    public final long m1642getTopRightF1C5BW0() {
        return OffsetKt.Offset(this.right, this.top);
    }

    public final float getWidth() {
        return this.right - this.left;
    }

    public int hashCode() {
        return (((((Float.hashCode(this.left) * 31) + Float.hashCode(this.top)) * 31) + Float.hashCode(this.right)) * 31) + Float.hashCode(this.bottom);
    }

    @Stable
    @NotNull
    public final Rect inflate(float f10) {
        return new Rect(this.left - f10, this.top - f10, this.right + f10, this.bottom + f10);
    }

    @Stable
    @NotNull
    public final Rect intersect(@NotNull Rect other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return new Rect(Math.max(this.left, other.left), Math.max(this.top, other.top), Math.min(this.right, other.right), Math.min(this.bottom, other.bottom));
    }

    public final boolean isEmpty() {
        if (this.left < this.right && this.top < this.bottom) {
            return false;
        }
        return true;
    }

    public final boolean isFinite() {
        float f10 = this.left;
        if (!Float.isInfinite(f10) && !Float.isNaN(f10)) {
            float f11 = this.top;
            if (!Float.isInfinite(f11) && !Float.isNaN(f11)) {
                float f12 = this.right;
                if (!Float.isInfinite(f12) && !Float.isNaN(f12)) {
                    float f13 = this.bottom;
                    if (!Float.isInfinite(f13) && !Float.isNaN(f13)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean isInfinite() {
        if (this.left < Float.POSITIVE_INFINITY && this.top < Float.POSITIVE_INFINITY && this.right < Float.POSITIVE_INFINITY && this.bottom < Float.POSITIVE_INFINITY) {
            return false;
        }
        return true;
    }

    public final boolean overlaps(@NotNull Rect other) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (this.right <= other.left || other.right <= this.left || this.bottom <= other.top || other.bottom <= this.top) {
            return false;
        }
        return true;
    }

    @NotNull
    public String toString() {
        return "Rect.fromLTRB(" + GeometryUtilsKt.toStringAsFixed(this.left, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.top, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.right, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.bottom, 1) + ')';
    }

    @Stable
    @NotNull
    public final Rect translate(float f10, float f11) {
        return new Rect(this.left + f10, this.top + f11, this.right + f10, this.bottom + f11);
    }

    @Stable
    @NotNull
    /* renamed from: translate-k-4lQ0M  reason: not valid java name */
    public final Rect m1643translatek4lQ0M(long j10) {
        return new Rect(this.left + Offset.m1606getXimpl(j10), this.top + Offset.m1607getYimpl(j10), this.right + Offset.m1606getXimpl(j10), this.bottom + Offset.m1607getYimpl(j10));
    }

    @Stable
    public static /* synthetic */ void getBottom$annotations() {
    }

    @Stable
    public static /* synthetic */ void getHeight$annotations() {
    }

    @Stable
    public static /* synthetic */ void getLeft$annotations() {
    }

    @Stable
    public static /* synthetic */ void getRight$annotations() {
    }

    @Stable
    /* renamed from: getSize-NH-jbRc$annotations  reason: not valid java name */
    public static /* synthetic */ void m1631getSizeNHjbRc$annotations() {
    }

    @Stable
    public static /* synthetic */ void getTop$annotations() {
    }

    @Stable
    public static /* synthetic */ void getWidth$annotations() {
    }

    @Stable
    public static /* synthetic */ void isEmpty$annotations() {
    }

    @Stable
    public static /* synthetic */ void isFinite$annotations() {
    }

    @Stable
    public static /* synthetic */ void isInfinite$annotations() {
    }
}
