package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MultiWidgetSelectionDelegate.kt */
@Metadata
/* loaded from: classes.dex */
public final class MultiWidgetSelectionDelegate implements Selectable {
    @NotNull
    private final Function0<LayoutCoordinates> coordinatesCallback;
    @NotNull
    private final Function0<TextLayoutResult> layoutResultCallback;
    private final long selectableId;

    /* JADX WARN: Multi-variable type inference failed */
    public MultiWidgetSelectionDelegate(long j10, @NotNull Function0<? extends LayoutCoordinates> coordinatesCallback, @NotNull Function0<TextLayoutResult> layoutResultCallback) {
        Intrinsics.checkNotNullParameter(coordinatesCallback, "coordinatesCallback");
        Intrinsics.checkNotNullParameter(layoutResultCallback, "layoutResultCallback");
        this.selectableId = j10;
        this.coordinatesCallback = coordinatesCallback;
        this.layoutResultCallback = layoutResultCallback;
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    @NotNull
    public Rect getBoundingBox(int i10) {
        TextLayoutResult invoke = this.layoutResultCallback.invoke();
        if (invoke == null) {
            return Rect.Companion.getZero();
        }
        int length = invoke.getLayoutInput().getText().length();
        if (length < 1) {
            return Rect.Companion.getZero();
        }
        return invoke.getBoundingBox(e.n(i10, 0, length - 1));
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    /* renamed from: getHandlePosition-dBAh8RU  reason: not valid java name */
    public long mo810getHandlePositiondBAh8RU(@NotNull Selection selection, boolean z10) {
        Selection.AnchorInfo end;
        Intrinsics.checkNotNullParameter(selection, "selection");
        if ((z10 && selection.getStart().getSelectableId() != getSelectableId()) || (!z10 && selection.getEnd().getSelectableId() != getSelectableId())) {
            return Offset.Companion.m1622getZeroF1C5BW0();
        }
        if (getLayoutCoordinates() == null) {
            return Offset.Companion.m1622getZeroF1C5BW0();
        }
        TextLayoutResult invoke = this.layoutResultCallback.invoke();
        if (invoke == null) {
            return Offset.Companion.m1622getZeroF1C5BW0();
        }
        if (z10) {
            end = selection.getStart();
        } else {
            end = selection.getEnd();
        }
        return TextSelectionDelegateKt.getSelectionHandleCoordinates(invoke, end.getOffset(), z10, selection.getHandlesCrossed());
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    @Nullable
    public LayoutCoordinates getLayoutCoordinates() {
        LayoutCoordinates invoke = this.coordinatesCallback.invoke();
        if (invoke != null && invoke.isAttached()) {
            return invoke;
        }
        return null;
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    /* renamed from: getRangeOfLineContaining--jx7JFs  reason: not valid java name */
    public long mo811getRangeOfLineContainingjx7JFs(int i10) {
        TextLayoutResult invoke = this.layoutResultCallback.invoke();
        if (invoke == null) {
            return TextRange.Companion.m3702getZerod9O1mEE();
        }
        int length = invoke.getLayoutInput().getText().length();
        if (length < 1) {
            return TextRange.Companion.m3702getZerod9O1mEE();
        }
        int lineForOffset = invoke.getLineForOffset(e.n(i10, 0, length - 1));
        return TextRangeKt.TextRange(invoke.getLineStart(lineForOffset), invoke.getLineEnd(lineForOffset, true));
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    @Nullable
    public Selection getSelectAllSelection() {
        TextLayoutResult invoke = this.layoutResultCallback.invoke();
        if (invoke == null) {
            return null;
        }
        return MultiWidgetSelectionDelegateKt.m813access$getAssembledSelectionInfovJH6DeI(TextRangeKt.TextRange(0, invoke.getLayoutInput().getText().length()), false, getSelectableId(), invoke);
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    public long getSelectableId() {
        return this.selectableId;
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    @NotNull
    public AnnotatedString getText() {
        TextLayoutResult invoke = this.layoutResultCallback.invoke();
        if (invoke == null) {
            return new AnnotatedString("", null, null, 6, null);
        }
        return invoke.getLayoutInput().getText();
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    @NotNull
    /* renamed from: updateSelection-qCDeeow  reason: not valid java name */
    public Pair<Selection, Boolean> mo812updateSelectionqCDeeow(long j10, long j11, @Nullable Offset offset, boolean z10, @NotNull LayoutCoordinates containerLayoutCoordinates, @NotNull SelectionAdjustment adjustment, @Nullable Selection selection) {
        Offset offset2;
        Intrinsics.checkNotNullParameter(containerLayoutCoordinates, "containerLayoutCoordinates");
        Intrinsics.checkNotNullParameter(adjustment, "adjustment");
        if (selection != null && (getSelectableId() != selection.getStart().getSelectableId() || getSelectableId() != selection.getEnd().getSelectableId())) {
            throw new IllegalArgumentException("The given previousSelection doesn't belong to this selectable.");
        }
        LayoutCoordinates layoutCoordinates = getLayoutCoordinates();
        if (layoutCoordinates == null) {
            return new Pair<>(null, Boolean.FALSE);
        }
        TextLayoutResult invoke = this.layoutResultCallback.invoke();
        if (invoke == null) {
            return new Pair<>(null, Boolean.FALSE);
        }
        long mo3338localPositionOfR5De75A = containerLayoutCoordinates.mo3338localPositionOfR5De75A(layoutCoordinates, Offset.Companion.m1622getZeroF1C5BW0());
        long m1610minusMKHz9U = Offset.m1610minusMKHz9U(j10, mo3338localPositionOfR5De75A);
        long m1610minusMKHz9U2 = Offset.m1610minusMKHz9U(j11, mo3338localPositionOfR5De75A);
        if (offset != null) {
            offset2 = Offset.m1595boximpl(Offset.m1610minusMKHz9U(offset.m1616unboximpl(), mo3338localPositionOfR5De75A));
        } else {
            offset2 = null;
        }
        return MultiWidgetSelectionDelegateKt.m816getTextSelectionInfoyM0VcXU(invoke, m1610minusMKHz9U, m1610minusMKHz9U2, offset2, getSelectableId(), adjustment, selection, z10);
    }
}
