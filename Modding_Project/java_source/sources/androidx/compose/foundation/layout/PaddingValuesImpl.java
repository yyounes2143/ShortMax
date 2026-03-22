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
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class PaddingValuesImpl implements PaddingValues {
    private final float bottom;
    private final float end;
    private final float start;
    private final float top;

    public /* synthetic */ PaddingValuesImpl(float f10, float f11, float f12, float f13, DefaultConstructorMarker defaultConstructorMarker) {
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
        if (layoutDirection == LayoutDirection.Ltr) {
            return this.start;
        }
        return this.end;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateRightPadding-u2uoSUM */
    public float mo429calculateRightPaddingu2uoSUM(@NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        if (layoutDirection == LayoutDirection.Ltr) {
            return this.end;
        }
        return this.start;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateTopPadding-D9Ej5fM */
    public float mo430calculateTopPaddingD9Ej5fM() {
        return this.top;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof PaddingValuesImpl)) {
            return false;
        }
        PaddingValuesImpl paddingValuesImpl = (PaddingValuesImpl) obj;
        if (!Dp.m4054equalsimpl0(this.start, paddingValuesImpl.start) || !Dp.m4054equalsimpl0(this.top, paddingValuesImpl.top) || !Dp.m4054equalsimpl0(this.end, paddingValuesImpl.end) || !Dp.m4054equalsimpl0(this.bottom, paddingValuesImpl.bottom)) {
            return false;
        }
        return true;
    }

    /* renamed from: getBottom-D9Ej5fM  reason: not valid java name */
    public final float m464getBottomD9Ej5fM() {
        return this.bottom;
    }

    /* renamed from: getEnd-D9Ej5fM  reason: not valid java name */
    public final float m465getEndD9Ej5fM() {
        return this.end;
    }

    /* renamed from: getStart-D9Ej5fM  reason: not valid java name */
    public final float m466getStartD9Ej5fM() {
        return this.start;
    }

    /* renamed from: getTop-D9Ej5fM  reason: not valid java name */
    public final float m467getTopD9Ej5fM() {
        return this.top;
    }

    public int hashCode() {
        return (((((Dp.m4055hashCodeimpl(this.start) * 31) + Dp.m4055hashCodeimpl(this.top)) * 31) + Dp.m4055hashCodeimpl(this.end)) * 31) + Dp.m4055hashCodeimpl(this.bottom);
    }

    @NotNull
    public String toString() {
        return "PaddingValues(start=" + ((Object) Dp.m4060toStringimpl(this.start)) + ", top=" + ((Object) Dp.m4060toStringimpl(this.top)) + ", end=" + ((Object) Dp.m4060toStringimpl(this.end)) + ", bottom=" + ((Object) Dp.m4060toStringimpl(this.bottom)) + ')';
    }

    private PaddingValuesImpl(float f10, float f11, float f12, float f13) {
        this.start = f10;
        this.top = f11;
        this.end = f12;
        this.bottom = f13;
    }

    public /* synthetic */ PaddingValuesImpl(float f10, float f11, float f12, float f13, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? Dp.m4049constructorimpl(0) : f10, (i10 & 2) != 0 ? Dp.m4049constructorimpl(0) : f11, (i10 & 4) != 0 ? Dp.m4049constructorimpl(0) : f12, (i10 & 8) != 0 ? Dp.m4049constructorimpl(0) : f13, null);
    }

    @Stable
    /* renamed from: getBottom-D9Ej5fM$annotations  reason: not valid java name */
    public static /* synthetic */ void m460getBottomD9Ej5fM$annotations() {
    }

    @Stable
    /* renamed from: getEnd-D9Ej5fM$annotations  reason: not valid java name */
    public static /* synthetic */ void m461getEndD9Ej5fM$annotations() {
    }

    @Stable
    /* renamed from: getStart-D9Ej5fM$annotations  reason: not valid java name */
    public static /* synthetic */ void m462getStartD9Ej5fM$annotations() {
    }

    @Stable
    /* renamed from: getTop-D9Ej5fM$annotations  reason: not valid java name */
    public static /* synthetic */ void m463getTopD9Ej5fM$annotations() {
    }
}
