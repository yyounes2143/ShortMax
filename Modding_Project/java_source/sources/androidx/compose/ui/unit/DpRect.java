package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Dp.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class DpRect {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final float bottom;
    private final float left;
    private final float right;
    private final float top;

    /* compiled from: Dp.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ DpRect(float f10, float f11, float f12, float f13, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, f12, f13);
    }

    /* renamed from: copy-a9UjIt4$default  reason: not valid java name */
    public static /* synthetic */ DpRect m4121copya9UjIt4$default(DpRect dpRect, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = dpRect.left;
        }
        if ((i10 & 2) != 0) {
            f11 = dpRect.top;
        }
        if ((i10 & 4) != 0) {
            f12 = dpRect.right;
        }
        if ((i10 & 8) != 0) {
            f13 = dpRect.bottom;
        }
        return dpRect.m4130copya9UjIt4(f10, f11, f12, f13);
    }

    /* renamed from: component1-D9Ej5fM  reason: not valid java name */
    public final float m4126component1D9Ej5fM() {
        return this.left;
    }

    /* renamed from: component2-D9Ej5fM  reason: not valid java name */
    public final float m4127component2D9Ej5fM() {
        return this.top;
    }

    /* renamed from: component3-D9Ej5fM  reason: not valid java name */
    public final float m4128component3D9Ej5fM() {
        return this.right;
    }

    /* renamed from: component4-D9Ej5fM  reason: not valid java name */
    public final float m4129component4D9Ej5fM() {
        return this.bottom;
    }

    @NotNull
    /* renamed from: copy-a9UjIt4  reason: not valid java name */
    public final DpRect m4130copya9UjIt4(float f10, float f11, float f12, float f13) {
        return new DpRect(f10, f11, f12, f13, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DpRect)) {
            return false;
        }
        DpRect dpRect = (DpRect) obj;
        if (Dp.m4054equalsimpl0(this.left, dpRect.left) && Dp.m4054equalsimpl0(this.top, dpRect.top) && Dp.m4054equalsimpl0(this.right, dpRect.right) && Dp.m4054equalsimpl0(this.bottom, dpRect.bottom)) {
            return true;
        }
        return false;
    }

    /* renamed from: getBottom-D9Ej5fM  reason: not valid java name */
    public final float m4131getBottomD9Ej5fM() {
        return this.bottom;
    }

    /* renamed from: getLeft-D9Ej5fM  reason: not valid java name */
    public final float m4132getLeftD9Ej5fM() {
        return this.left;
    }

    /* renamed from: getRight-D9Ej5fM  reason: not valid java name */
    public final float m4133getRightD9Ej5fM() {
        return this.right;
    }

    /* renamed from: getTop-D9Ej5fM  reason: not valid java name */
    public final float m4134getTopD9Ej5fM() {
        return this.top;
    }

    public int hashCode() {
        return (((((Dp.m4055hashCodeimpl(this.left) * 31) + Dp.m4055hashCodeimpl(this.top)) * 31) + Dp.m4055hashCodeimpl(this.right)) * 31) + Dp.m4055hashCodeimpl(this.bottom);
    }

    @NotNull
    public String toString() {
        return "DpRect(left=" + ((Object) Dp.m4060toStringimpl(this.left)) + ", top=" + ((Object) Dp.m4060toStringimpl(this.top)) + ", right=" + ((Object) Dp.m4060toStringimpl(this.right)) + ", bottom=" + ((Object) Dp.m4060toStringimpl(this.bottom)) + ')';
    }

    public /* synthetic */ DpRect(long j10, long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11);
    }

    private DpRect(float f10, float f11, float f12, float f13) {
        this.left = f10;
        this.top = f11;
        this.right = f12;
        this.bottom = f13;
    }

    private DpRect(long j10, long j11) {
        this(DpOffset.m4110getXD9Ej5fM(j10), DpOffset.m4112getYD9Ej5fM(j10), Dp.m4049constructorimpl(DpOffset.m4110getXD9Ej5fM(j10) + DpSize.m4147getWidthD9Ej5fM(j11)), Dp.m4049constructorimpl(DpOffset.m4112getYD9Ej5fM(j10) + DpSize.m4145getHeightD9Ej5fM(j11)), null);
    }

    @Stable
    /* renamed from: getBottom-D9Ej5fM$annotations  reason: not valid java name */
    public static /* synthetic */ void m4122getBottomD9Ej5fM$annotations() {
    }

    @Stable
    /* renamed from: getLeft-D9Ej5fM$annotations  reason: not valid java name */
    public static /* synthetic */ void m4123getLeftD9Ej5fM$annotations() {
    }

    @Stable
    /* renamed from: getRight-D9Ej5fM$annotations  reason: not valid java name */
    public static /* synthetic */ void m4124getRightD9Ej5fM$annotations() {
    }

    @Stable
    /* renamed from: getTop-D9Ej5fM$annotations  reason: not valid java name */
    public static /* synthetic */ void m4125getTopD9Ej5fM$annotations() {
    }
}
