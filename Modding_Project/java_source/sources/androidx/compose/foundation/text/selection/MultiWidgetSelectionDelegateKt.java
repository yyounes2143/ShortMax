package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MultiWidgetSelectionDelegate.kt */
@Metadata
/* loaded from: classes.dex */
public final class MultiWidgetSelectionDelegateKt {
    /* renamed from: access$getAssembledSelectionInfo-vJH6DeI */
    public static final /* synthetic */ Selection m813access$getAssembledSelectionInfovJH6DeI(long j10, boolean z10, long j11, TextLayoutResult textLayoutResult) {
        return m814getAssembledSelectionInfovJH6DeI(j10, z10, j11, textLayoutResult);
    }

    /* renamed from: getAssembledSelectionInfo-vJH6DeI */
    public static final Selection m814getAssembledSelectionInfovJH6DeI(long j10, boolean z10, long j11, TextLayoutResult textLayoutResult) {
        return new Selection(new Selection.AnchorInfo(textLayoutResult.getBidiRunDirection(TextRange.m3697getStartimpl(j10)), TextRange.m3697getStartimpl(j10), j11), new Selection.AnchorInfo(textLayoutResult.getBidiRunDirection(Math.max(TextRange.m3692getEndimpl(j10) - 1, 0)), TextRange.m3692getEndimpl(j10), j11), z10);
    }

    /* renamed from: getOffsetForPosition-0AR0LA0 */
    public static final int m815getOffsetForPosition0AR0LA0(@NotNull TextLayoutResult textLayoutResult, @NotNull Rect bounds, long j10) {
        Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        int length = textLayoutResult.getLayoutInput().getText().length();
        if (bounds.m1632containsk4lQ0M(j10)) {
            return e.n(textLayoutResult.m3682getOffsetForPositionk4lQ0M(j10), 0, length);
        }
        if (SelectionMode.Vertical.mo878compare3MmeM6k$foundation_release(j10, bounds) < 0) {
            return 0;
        }
        return length;
    }

    @NotNull
    /* renamed from: getTextSelectionInfo-yM0VcXU */
    public static final Pair<Selection, Boolean> m816getTextSelectionInfoyM0VcXU(@NotNull TextLayoutResult textLayoutResult, long j10, long j11, @Nullable Offset offset, long j12, @NotNull SelectionAdjustment adjustment, @Nullable Selection selection, boolean z10) {
        int i10;
        TextRange textRange;
        boolean z11;
        Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
        Intrinsics.checkNotNullParameter(adjustment, "adjustment");
        Rect rect = new Rect(0.0f, 0.0f, IntSize.m4209getWidthimpl(textLayoutResult.m3683getSizeYbymL2g()), IntSize.m4208getHeightimpl(textLayoutResult.m3683getSizeYbymL2g()));
        if (!SelectionMode.Vertical.m879isSelected2x9bVx0$foundation_release(rect, j10, j11)) {
            return new Pair<>(null, Boolean.FALSE);
        }
        int m815getOffsetForPosition0AR0LA0 = m815getOffsetForPosition0AR0LA0(textLayoutResult, rect, j10);
        int m815getOffsetForPosition0AR0LA02 = m815getOffsetForPosition0AR0LA0(textLayoutResult, rect, j11);
        if (offset != null) {
            i10 = m815getOffsetForPosition0AR0LA0(textLayoutResult, rect, offset.m1616unboximpl());
        } else {
            i10 = -1;
        }
        int i11 = i10;
        long TextRange = TextRangeKt.TextRange(m815getOffsetForPosition0AR0LA0, m815getOffsetForPosition0AR0LA02);
        if (selection != null) {
            textRange = TextRange.m3685boximpl(selection.m819toTextRanged9O1mEE());
        } else {
            textRange = null;
        }
        long mo820adjustZXO7KMw = adjustment.mo820adjustZXO7KMw(textLayoutResult, TextRange, i11, z10, textRange);
        Selection m814getAssembledSelectionInfovJH6DeI = m814getAssembledSelectionInfovJH6DeI(mo820adjustZXO7KMw, TextRange.m3696getReversedimpl(mo820adjustZXO7KMw), j12, textLayoutResult);
        boolean areEqual = Intrinsics.areEqual(m814getAssembledSelectionInfovJH6DeI, selection);
        if (!z10 ? m815getOffsetForPosition0AR0LA02 == i11 : m815getOffsetForPosition0AR0LA0 == i11) {
            if (areEqual) {
                z11 = false;
                return new Pair<>(m814getAssembledSelectionInfovJH6DeI, Boolean.valueOf(z11));
            }
        }
        z11 = true;
        return new Pair<>(m814getAssembledSelectionInfovJH6DeI, Boolean.valueOf(z11));
    }

    /* renamed from: getTextSelectionInfo-yM0VcXU$default */
    public static /* synthetic */ Pair m817getTextSelectionInfoyM0VcXU$default(TextLayoutResult textLayoutResult, long j10, long j11, Offset offset, long j12, SelectionAdjustment selectionAdjustment, Selection selection, boolean z10, int i10, Object obj) {
        Selection selection2;
        boolean z11;
        if ((i10 & 64) != 0) {
            selection2 = null;
        } else {
            selection2 = selection;
        }
        if ((i10 & 128) != 0) {
            z11 = true;
        } else {
            z11 = z10;
        }
        return m816getTextSelectionInfoyM0VcXU(textLayoutResult, j10, j11, offset, j12, selectionAdjustment, selection2, z11);
    }
}
