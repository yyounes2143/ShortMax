package androidx.compose.foundation.layout;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Padding.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface PaddingValues {

    /* compiled from: Padding.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class Absolute implements PaddingValues {
        private final float bottom;
        private final float left;
        private final float right;
        private final float top;

        public /* synthetic */ Absolute(float f10, float f11, float f12, float f13, DefaultConstructorMarker defaultConstructorMarker) {
            this(f10, f11, f12, f13);
        }

        @Override // androidx.compose.foundation.layout.PaddingValues
        /* renamed from: calculateBottomPadding-D9Ej5fM */
        public float mo427calculateBottomPaddingD9Ej5fM() {
            return this.bottom;
        }

        @Override // androidx.compose.foundation.layout.PaddingValues
        /* renamed from: calculateLeftPadding-u2uoSUM */
        public float mo428calculateLeftPaddingu2uoSUM(@NotNull LayoutDirection layoutDirection) {
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            return this.left;
        }

        @Override // androidx.compose.foundation.layout.PaddingValues
        /* renamed from: calculateRightPadding-u2uoSUM */
        public float mo429calculateRightPaddingu2uoSUM(@NotNull LayoutDirection layoutDirection) {
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            return this.right;
        }

        @Override // androidx.compose.foundation.layout.PaddingValues
        /* renamed from: calculateTopPadding-D9Ej5fM */
        public float mo430calculateTopPaddingD9Ej5fM() {
            return this.top;
        }

        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Absolute)) {
                return false;
            }
            Absolute absolute = (Absolute) obj;
            if (!Dp.m4054equalsimpl0(this.left, absolute.left) || !Dp.m4054equalsimpl0(this.top, absolute.top) || !Dp.m4054equalsimpl0(this.right, absolute.right) || !Dp.m4054equalsimpl0(this.bottom, absolute.bottom)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((((Dp.m4055hashCodeimpl(this.left) * 31) + Dp.m4055hashCodeimpl(this.top)) * 31) + Dp.m4055hashCodeimpl(this.right)) * 31) + Dp.m4055hashCodeimpl(this.bottom);
        }

        @NotNull
        public String toString() {
            return "PaddingValues.Absolute(left=" + ((Object) Dp.m4060toStringimpl(this.left)) + ", top=" + ((Object) Dp.m4060toStringimpl(this.top)) + ", right=" + ((Object) Dp.m4060toStringimpl(this.right)) + ", bottom=" + ((Object) Dp.m4060toStringimpl(this.bottom)) + ')';
        }

        private Absolute(float f10, float f11, float f12, float f13) {
            this.left = f10;
            this.top = f11;
            this.right = f12;
            this.bottom = f13;
        }

        public /* synthetic */ Absolute(float f10, float f11, float f12, float f13, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? Dp.m4049constructorimpl(0) : f10, (i10 & 2) != 0 ? Dp.m4049constructorimpl(0) : f11, (i10 & 4) != 0 ? Dp.m4049constructorimpl(0) : f12, (i10 & 8) != 0 ? Dp.m4049constructorimpl(0) : f13, null);
        }

        @Stable
        /* renamed from: getBottom-D9Ej5fM$annotations  reason: not valid java name */
        private static /* synthetic */ void m456getBottomD9Ej5fM$annotations() {
        }

        @Stable
        /* renamed from: getLeft-D9Ej5fM$annotations  reason: not valid java name */
        private static /* synthetic */ void m457getLeftD9Ej5fM$annotations() {
        }

        @Stable
        /* renamed from: getRight-D9Ej5fM$annotations  reason: not valid java name */
        private static /* synthetic */ void m458getRightD9Ej5fM$annotations() {
        }

        @Stable
        /* renamed from: getTop-D9Ej5fM$annotations  reason: not valid java name */
        private static /* synthetic */ void m459getTopD9Ej5fM$annotations() {
        }
    }

    /* renamed from: calculateBottomPadding-D9Ej5fM */
    float mo427calculateBottomPaddingD9Ej5fM();

    /* renamed from: calculateLeftPadding-u2uoSUM */
    float mo428calculateLeftPaddingu2uoSUM(@NotNull LayoutDirection layoutDirection);

    /* renamed from: calculateRightPadding-u2uoSUM */
    float mo429calculateRightPaddingu2uoSUM(@NotNull LayoutDirection layoutDirection);

    /* renamed from: calculateTopPadding-D9Ej5fM */
    float mo430calculateTopPaddingD9Ej5fM();
}
