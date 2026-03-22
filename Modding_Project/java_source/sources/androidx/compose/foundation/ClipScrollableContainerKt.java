package androidx.compose.foundation;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ClipScrollableContainer.kt */
@Metadata
/* loaded from: classes.dex */
public final class ClipScrollableContainerKt {
    @NotNull
    private static final Modifier HorizontalScrollableClipModifier;
    private static final float MaxSupportedElevation = Dp.m4049constructorimpl(30);
    @NotNull
    private static final Modifier VerticalScrollableClipModifier;

    static {
        Modifier.Companion companion = Modifier.Companion;
        HorizontalScrollableClipModifier = ClipKt.clip(companion, new Shape() { // from class: androidx.compose.foundation.ClipScrollableContainerKt$HorizontalScrollableClipModifier$1
            @Override // androidx.compose.ui.graphics.Shape
            @NotNull
            /* renamed from: createOutline-Pq9zytI  reason: not valid java name */
            public Outline mo235createOutlinePq9zytI(long j10, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                Intrinsics.checkNotNullParameter(density, "density");
                float mo336roundToPx0680j_4 = density.mo336roundToPx0680j_4(ClipScrollableContainerKt.getMaxSupportedElevation());
                return new Outline.Rectangle(new Rect(0.0f, -mo336roundToPx0680j_4, Size.m1675getWidthimpl(j10), Size.m1672getHeightimpl(j10) + mo336roundToPx0680j_4));
            }
        });
        VerticalScrollableClipModifier = ClipKt.clip(companion, new Shape() { // from class: androidx.compose.foundation.ClipScrollableContainerKt$VerticalScrollableClipModifier$1
            @Override // androidx.compose.ui.graphics.Shape
            @NotNull
            /* renamed from: createOutline-Pq9zytI */
            public Outline mo235createOutlinePq9zytI(long j10, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                Intrinsics.checkNotNullParameter(density, "density");
                float mo336roundToPx0680j_4 = density.mo336roundToPx0680j_4(ClipScrollableContainerKt.getMaxSupportedElevation());
                return new Outline.Rectangle(new Rect(-mo336roundToPx0680j_4, 0.0f, Size.m1675getWidthimpl(j10) + mo336roundToPx0680j_4, Size.m1672getHeightimpl(j10)));
            }
        });
    }

    @ExperimentalFoundationApi
    @NotNull
    public static final Modifier clipScrollableContainer(@NotNull Modifier modifier, @NotNull Orientation orientation) {
        Modifier modifier2;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        if (orientation == Orientation.Vertical) {
            modifier2 = VerticalScrollableClipModifier;
        } else {
            modifier2 = HorizontalScrollableClipModifier;
        }
        return modifier.then(modifier2);
    }

    public static final float getMaxSupportedElevation() {
        return MaxSupportedElevation;
    }
}
