package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import ps.a;
/* compiled from: LayoutCoordinates.kt */
@Metadata
/* loaded from: classes.dex */
public final class LayoutCoordinatesKt {
    @NotNull
    public static final Rect boundsInParent(@NotNull LayoutCoordinates layoutCoordinates) {
        Rect localBoundingBoxOf$default;
        Intrinsics.checkNotNullParameter(layoutCoordinates, "<this>");
        LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        if (parentLayoutCoordinates == null || (localBoundingBoxOf$default = LayoutCoordinates.localBoundingBoxOf$default(parentLayoutCoordinates, layoutCoordinates, false, 2, null)) == null) {
            return new Rect(0.0f, 0.0f, IntSize.m4209getWidthimpl(layoutCoordinates.mo3337getSizeYbymL2g()), IntSize.m4208getHeightimpl(layoutCoordinates.mo3337getSizeYbymL2g()));
        }
        return localBoundingBoxOf$default;
    }

    @NotNull
    public static final Rect boundsInRoot(@NotNull LayoutCoordinates layoutCoordinates) {
        Intrinsics.checkNotNullParameter(layoutCoordinates, "<this>");
        return LayoutCoordinates.localBoundingBoxOf$default(findRoot(layoutCoordinates), layoutCoordinates, false, 2, null);
    }

    @NotNull
    public static final Rect boundsInWindow(@NotNull LayoutCoordinates layoutCoordinates) {
        Intrinsics.checkNotNullParameter(layoutCoordinates, "<this>");
        LayoutCoordinates findRoot = findRoot(layoutCoordinates);
        Rect boundsInRoot = boundsInRoot(layoutCoordinates);
        long mo3340localToWindowMKHz9U = findRoot.mo3340localToWindowMKHz9U(OffsetKt.Offset(boundsInRoot.getLeft(), boundsInRoot.getTop()));
        long mo3340localToWindowMKHz9U2 = findRoot.mo3340localToWindowMKHz9U(OffsetKt.Offset(boundsInRoot.getRight(), boundsInRoot.getTop()));
        long mo3340localToWindowMKHz9U3 = findRoot.mo3340localToWindowMKHz9U(OffsetKt.Offset(boundsInRoot.getRight(), boundsInRoot.getBottom()));
        long mo3340localToWindowMKHz9U4 = findRoot.mo3340localToWindowMKHz9U(OffsetKt.Offset(boundsInRoot.getLeft(), boundsInRoot.getBottom()));
        return new Rect(a.g(Offset.m1606getXimpl(mo3340localToWindowMKHz9U), Offset.m1606getXimpl(mo3340localToWindowMKHz9U2), Offset.m1606getXimpl(mo3340localToWindowMKHz9U4), Offset.m1606getXimpl(mo3340localToWindowMKHz9U3)), a.g(Offset.m1607getYimpl(mo3340localToWindowMKHz9U), Offset.m1607getYimpl(mo3340localToWindowMKHz9U2), Offset.m1607getYimpl(mo3340localToWindowMKHz9U4), Offset.m1607getYimpl(mo3340localToWindowMKHz9U3)), a.e(Offset.m1606getXimpl(mo3340localToWindowMKHz9U), Offset.m1606getXimpl(mo3340localToWindowMKHz9U2), Offset.m1606getXimpl(mo3340localToWindowMKHz9U4), Offset.m1606getXimpl(mo3340localToWindowMKHz9U3)), a.e(Offset.m1607getYimpl(mo3340localToWindowMKHz9U), Offset.m1607getYimpl(mo3340localToWindowMKHz9U2), Offset.m1607getYimpl(mo3340localToWindowMKHz9U4), Offset.m1607getYimpl(mo3340localToWindowMKHz9U3)));
    }

    @NotNull
    public static final LayoutCoordinates findRoot(@NotNull LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates layoutCoordinates2;
        LayoutNodeWrapper layoutNodeWrapper;
        Intrinsics.checkNotNullParameter(layoutCoordinates, "<this>");
        LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        while (true) {
            LayoutCoordinates layoutCoordinates3 = parentLayoutCoordinates;
            layoutCoordinates2 = layoutCoordinates;
            layoutCoordinates = layoutCoordinates3;
            if (layoutCoordinates == null) {
                break;
            }
            parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        }
        if (layoutCoordinates2 instanceof LayoutNodeWrapper) {
            layoutNodeWrapper = (LayoutNodeWrapper) layoutCoordinates2;
        } else {
            layoutNodeWrapper = null;
        }
        if (layoutNodeWrapper == null) {
            return layoutCoordinates2;
        }
        LayoutNodeWrapper wrappedBy$ui_release = layoutNodeWrapper.getWrappedBy$ui_release();
        while (true) {
            LayoutNodeWrapper layoutNodeWrapper2 = wrappedBy$ui_release;
            LayoutNodeWrapper layoutNodeWrapper3 = layoutNodeWrapper;
            layoutNodeWrapper = layoutNodeWrapper2;
            if (layoutNodeWrapper != null) {
                wrappedBy$ui_release = layoutNodeWrapper.getWrappedBy$ui_release();
            } else {
                return layoutNodeWrapper3;
            }
        }
    }

    public static final long positionInParent(@NotNull LayoutCoordinates layoutCoordinates) {
        Intrinsics.checkNotNullParameter(layoutCoordinates, "<this>");
        LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        if (parentLayoutCoordinates != null) {
            return parentLayoutCoordinates.mo3338localPositionOfR5De75A(layoutCoordinates, Offset.Companion.m1622getZeroF1C5BW0());
        }
        return Offset.Companion.m1622getZeroF1C5BW0();
    }

    public static final long positionInRoot(@NotNull LayoutCoordinates layoutCoordinates) {
        Intrinsics.checkNotNullParameter(layoutCoordinates, "<this>");
        return layoutCoordinates.mo3339localToRootMKHz9U(Offset.Companion.m1622getZeroF1C5BW0());
    }

    public static final long positionInWindow(@NotNull LayoutCoordinates layoutCoordinates) {
        Intrinsics.checkNotNullParameter(layoutCoordinates, "<this>");
        return layoutCoordinates.mo3340localToWindowMKHz9U(Offset.Companion.m1622getZeroF1C5BW0());
    }
}
