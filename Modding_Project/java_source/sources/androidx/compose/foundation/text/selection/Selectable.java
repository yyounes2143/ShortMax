package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import kotlin.Metadata;
import kotlin.Pair;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Selectable.kt */
@Metadata
/* loaded from: classes.dex */
public interface Selectable {
    /* renamed from: updateSelection-qCDeeow$default  reason: not valid java name */
    static /* synthetic */ Pair m818updateSelectionqCDeeow$default(Selectable selectable, long j10, long j11, Offset offset, boolean z10, LayoutCoordinates layoutCoordinates, SelectionAdjustment selectionAdjustment, Selection selection, int i10, Object obj) {
        boolean z11;
        Selection selection2;
        if (obj == null) {
            if ((i10 & 8) != 0) {
                z11 = true;
            } else {
                z11 = z10;
            }
            if ((i10 & 64) != 0) {
                selection2 = null;
            } else {
                selection2 = selection;
            }
            return selectable.mo812updateSelectionqCDeeow(j10, j11, offset, z11, layoutCoordinates, selectionAdjustment, selection2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateSelection-qCDeeow");
    }

    @NotNull
    Rect getBoundingBox(int i10);

    /* renamed from: getHandlePosition-dBAh8RU */
    long mo810getHandlePositiondBAh8RU(@NotNull Selection selection, boolean z10);

    @Nullable
    LayoutCoordinates getLayoutCoordinates();

    /* renamed from: getRangeOfLineContaining--jx7JFs */
    long mo811getRangeOfLineContainingjx7JFs(int i10);

    @Nullable
    Selection getSelectAllSelection();

    long getSelectableId();

    @NotNull
    AnnotatedString getText();

    @NotNull
    /* renamed from: updateSelection-qCDeeow */
    Pair<Selection, Boolean> mo812updateSelectionqCDeeow(long j10, long j11, @Nullable Offset offset, boolean z10, @NotNull LayoutCoordinates layoutCoordinates, @NotNull SelectionAdjustment selectionAdjustment, @Nullable Selection selection);
}
