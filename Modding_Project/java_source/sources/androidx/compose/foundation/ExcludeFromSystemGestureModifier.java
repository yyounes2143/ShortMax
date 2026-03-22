package androidx.compose.foundation;

import android.view.View;
import androidx.annotation.RequiresApi;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SystemGestureExclusion.kt */
@RequiresApi(30)
@Metadata
/* loaded from: classes.dex */
final class ExcludeFromSystemGestureModifier implements OnGloballyPositionedModifier {
    @Nullable
    private final Function1<LayoutCoordinates, Rect> exclusion;
    @Nullable
    private android.graphics.Rect rect;
    @NotNull
    private final View view;

    /* JADX WARN: Multi-variable type inference failed */
    public ExcludeFromSystemGestureModifier(@NotNull View view, @Nullable Function1<? super LayoutCoordinates, Rect> function1) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.view = view;
        this.exclusion = function1;
    }

    private final android.graphics.Rect calcBounds(LayoutCoordinates layoutCoordinates, Rect rect) {
        LayoutCoordinates findRoot = findRoot(layoutCoordinates);
        long mo3338localPositionOfR5De75A = findRoot.mo3338localPositionOfR5De75A(layoutCoordinates, rect.m1641getTopLeftF1C5BW0());
        long mo3338localPositionOfR5De75A2 = findRoot.mo3338localPositionOfR5De75A(layoutCoordinates, rect.m1642getTopRightF1C5BW0());
        long mo3338localPositionOfR5De75A3 = findRoot.mo3338localPositionOfR5De75A(layoutCoordinates, rect.m1634getBottomLeftF1C5BW0());
        long mo3338localPositionOfR5De75A4 = findRoot.mo3338localPositionOfR5De75A(layoutCoordinates, rect.m1635getBottomRightF1C5BW0());
        return new android.graphics.Rect(bt.a.c(ps.a.g(Offset.m1606getXimpl(mo3338localPositionOfR5De75A), Offset.m1606getXimpl(mo3338localPositionOfR5De75A2), Offset.m1606getXimpl(mo3338localPositionOfR5De75A3), Offset.m1606getXimpl(mo3338localPositionOfR5De75A4))), bt.a.c(ps.a.g(Offset.m1607getYimpl(mo3338localPositionOfR5De75A), Offset.m1607getYimpl(mo3338localPositionOfR5De75A2), Offset.m1607getYimpl(mo3338localPositionOfR5De75A3), Offset.m1607getYimpl(mo3338localPositionOfR5De75A4))), bt.a.c(ps.a.e(Offset.m1606getXimpl(mo3338localPositionOfR5De75A), Offset.m1606getXimpl(mo3338localPositionOfR5De75A2), Offset.m1606getXimpl(mo3338localPositionOfR5De75A3), Offset.m1606getXimpl(mo3338localPositionOfR5De75A4))), bt.a.c(ps.a.e(Offset.m1607getYimpl(mo3338localPositionOfR5De75A), Offset.m1607getYimpl(mo3338localPositionOfR5De75A2), Offset.m1607getYimpl(mo3338localPositionOfR5De75A3), Offset.m1607getYimpl(mo3338localPositionOfR5De75A4))));
    }

    private final LayoutCoordinates findRoot(LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        while (true) {
            LayoutCoordinates layoutCoordinates2 = parentLayoutCoordinates;
            LayoutCoordinates layoutCoordinates3 = layoutCoordinates;
            layoutCoordinates = layoutCoordinates2;
            if (layoutCoordinates != null) {
                parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
            } else {
                return layoutCoordinates3;
            }
        }
    }

    @Nullable
    public final Function1<LayoutCoordinates, Rect> getExclusion() {
        return this.exclusion;
    }

    @Nullable
    public final android.graphics.Rect getRect() {
        return this.rect;
    }

    @NotNull
    public final View getView() {
        return this.view;
    }

    @Override // androidx.compose.ui.layout.OnGloballyPositionedModifier
    public void onGloballyPositioned(@NotNull LayoutCoordinates coordinates) {
        android.graphics.Rect calcBounds;
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        Function1<LayoutCoordinates, Rect> function1 = this.exclusion;
        if (function1 == null) {
            calcBounds = RectHelper_androidKt.toAndroidRect(LayoutCoordinatesKt.boundsInRoot(coordinates));
        } else {
            calcBounds = calcBounds(coordinates, function1.invoke(coordinates));
        }
        replaceRect(calcBounds);
    }

    public final void removeRect() {
        replaceRect(null);
    }

    public final void replaceRect(@Nullable android.graphics.Rect rect) {
        List systemGestureExclusionRects;
        MutableVector mutableVector = new MutableVector(new android.graphics.Rect[16], 0);
        systemGestureExclusionRects = this.view.getSystemGestureExclusionRects();
        Intrinsics.checkNotNullExpressionValue(systemGestureExclusionRects, "view.systemGestureExclusionRects");
        mutableVector.addAll(mutableVector.getSize(), systemGestureExclusionRects);
        android.graphics.Rect rect2 = this.rect;
        if (rect2 != null) {
            mutableVector.remove(rect2);
        }
        if (rect != null && !rect.isEmpty()) {
            mutableVector.add(rect);
        }
        this.view.setSystemGestureExclusionRects(mutableVector.asMutableList());
        this.rect = rect;
    }

    public final void setRect(@Nullable android.graphics.Rect rect) {
        this.rect = rect;
    }
}
