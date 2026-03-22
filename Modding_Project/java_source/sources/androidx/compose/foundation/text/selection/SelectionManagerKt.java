package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SelectionManager.kt */
@Metadata
/* loaded from: classes.dex */
public final class SelectionManagerKt {

    /* compiled from: SelectionManager.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Handle.values().length];
            iArr[Handle.SelectionStart.ordinal()] = 1;
            iArr[Handle.SelectionEnd.ordinal()] = 2;
            iArr[Handle.Cursor.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: calculateSelectionMagnifierCenterAndroid-O0kMr_c  reason: not valid java name */
    public static final long m868calculateSelectionMagnifierCenterAndroidO0kMr_c(@NotNull SelectionManager manager, long j10) {
        int i10;
        Intrinsics.checkNotNullParameter(manager, "manager");
        Selection selection = manager.getSelection();
        if (selection == null) {
            return Offset.Companion.m1621getUnspecifiedF1C5BW0();
        }
        Handle draggingHandle = manager.getDraggingHandle();
        if (draggingHandle == null) {
            i10 = -1;
        } else {
            i10 = WhenMappings.$EnumSwitchMapping$0[draggingHandle.ordinal()];
        }
        if (i10 != -1) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    throw new IllegalStateException("SelectionContainer does not support cursor");
                }
                return calculateSelectionMagnifierCenterAndroid_O0kMr_c$getMagnifierCenter(manager, j10, selection.getEnd(), false);
            }
            return calculateSelectionMagnifierCenterAndroid_O0kMr_c$getMagnifierCenter(manager, j10, selection.getStart(), true);
        }
        return Offset.Companion.m1621getUnspecifiedF1C5BW0();
    }

    private static final long calculateSelectionMagnifierCenterAndroid_O0kMr_c$getMagnifierCenter(SelectionManager selectionManager, long j10, Selection.AnchorInfo anchorInfo, boolean z10) {
        Selectable anchorSelectable$foundation_release = selectionManager.getAnchorSelectable$foundation_release(anchorInfo);
        if (anchorSelectable$foundation_release == null) {
            return Offset.Companion.m1621getUnspecifiedF1C5BW0();
        }
        LayoutCoordinates containerLayoutCoordinates = selectionManager.getContainerLayoutCoordinates();
        if (containerLayoutCoordinates == null) {
            return Offset.Companion.m1621getUnspecifiedF1C5BW0();
        }
        LayoutCoordinates layoutCoordinates = anchorSelectable$foundation_release.getLayoutCoordinates();
        if (layoutCoordinates == null) {
            return Offset.Companion.m1621getUnspecifiedF1C5BW0();
        }
        int offset = anchorInfo.getOffset();
        if (!z10) {
            offset--;
        }
        Offset m857getCurrentDragPosition_m7T9E = selectionManager.m857getCurrentDragPosition_m7T9E();
        Intrinsics.checkNotNull(m857getCurrentDragPosition_m7T9E);
        float m1606getXimpl = Offset.m1606getXimpl(layoutCoordinates.mo3338localPositionOfR5De75A(containerLayoutCoordinates, m857getCurrentDragPosition_m7T9E.m1616unboximpl()));
        long mo811getRangeOfLineContainingjx7JFs = anchorSelectable$foundation_release.mo811getRangeOfLineContainingjx7JFs(offset);
        Rect boundingBox = anchorSelectable$foundation_release.getBoundingBox(TextRange.m3695getMinimpl(mo811getRangeOfLineContainingjx7JFs));
        Rect boundingBox2 = anchorSelectable$foundation_release.getBoundingBox(e.e(TextRange.m3694getMaximpl(mo811getRangeOfLineContainingjx7JFs) - 1, TextRange.m3695getMinimpl(mo811getRangeOfLineContainingjx7JFs)));
        float m10 = e.m(m1606getXimpl, Math.min(boundingBox.getLeft(), boundingBox2.getLeft()), Math.max(boundingBox.getRight(), boundingBox2.getRight()));
        if (Math.abs(m1606getXimpl - m10) > IntSize.m4209getWidthimpl(j10) / 2) {
            return Offset.Companion.m1621getUnspecifiedF1C5BW0();
        }
        return containerLayoutCoordinates.mo3338localPositionOfR5De75A(layoutCoordinates, OffsetKt.Offset(m10, Offset.m1607getYimpl(anchorSelectable$foundation_release.getBoundingBox(offset).m1636getCenterF1C5BW0())));
    }

    /* renamed from: containsInclusive-Uv8p0NA  reason: not valid java name */
    public static final boolean m869containsInclusiveUv8p0NA(@NotNull Rect containsInclusive, long j10) {
        Intrinsics.checkNotNullParameter(containsInclusive, "$this$containsInclusive");
        float left = containsInclusive.getLeft();
        float right = containsInclusive.getRight();
        float m1606getXimpl = Offset.m1606getXimpl(j10);
        if (left <= m1606getXimpl && m1606getXimpl <= right) {
            float top = containsInclusive.getTop();
            float bottom = containsInclusive.getBottom();
            float m1607getYimpl = Offset.m1607getYimpl(j10);
            if (top <= m1607getYimpl && m1607getYimpl <= bottom) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public static final AnnotatedString getCurrentSelectedText(@NotNull Selectable selectable, @NotNull Selection selection) {
        Intrinsics.checkNotNullParameter(selectable, "selectable");
        Intrinsics.checkNotNullParameter(selection, "selection");
        AnnotatedString text = selectable.getText();
        if (selectable.getSelectableId() == selection.getStart().getSelectableId() || selectable.getSelectableId() == selection.getEnd().getSelectableId()) {
            if (selectable.getSelectableId() == selection.getStart().getSelectableId() && selectable.getSelectableId() == selection.getEnd().getSelectableId()) {
                if (selection.getHandlesCrossed()) {
                    return text.subSequence(selection.getEnd().getOffset(), selection.getStart().getOffset());
                }
                return text.subSequence(selection.getStart().getOffset(), selection.getEnd().getOffset());
            } else if (selectable.getSelectableId() == selection.getStart().getSelectableId()) {
                if (selection.getHandlesCrossed()) {
                    return text.subSequence(0, selection.getStart().getOffset());
                }
                return text.subSequence(selection.getStart().getOffset(), text.length());
            } else if (selection.getHandlesCrossed()) {
                return text.subSequence(selection.getEnd().getOffset(), text.length());
            } else {
                return text.subSequence(0, selection.getEnd().getOffset());
            }
        }
        return text;
    }

    @Nullable
    public static final Selection merge(@Nullable Selection selection, @Nullable Selection selection2) {
        Selection merge;
        if (selection != null && (merge = selection.merge(selection2)) != null) {
            return merge;
        }
        return selection2;
    }

    @NotNull
    public static final Rect visibleBounds(@NotNull LayoutCoordinates layoutCoordinates) {
        Intrinsics.checkNotNullParameter(layoutCoordinates, "<this>");
        Rect boundsInWindow = LayoutCoordinatesKt.boundsInWindow(layoutCoordinates);
        return RectKt.m1644Rect0a9Yr6o(layoutCoordinates.mo3341windowToLocalMKHz9U(boundsInWindow.m1641getTopLeftF1C5BW0()), layoutCoordinates.mo3341windowToLocalMKHz9U(boundsInWindow.m1635getBottomRightF1C5BW0()));
    }
}
