package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextFieldSelectionDelegate.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldSelectionDelegateKt {
    /* renamed from: getTextFieldSelection-bb3KNj8  reason: not valid java name */
    public static final long m883getTextFieldSelectionbb3KNj8(@Nullable TextLayoutResult textLayoutResult, int i10, int i11, @Nullable TextRange textRange, boolean z10, @NotNull SelectionAdjustment adjustment) {
        Intrinsics.checkNotNullParameter(adjustment, "adjustment");
        if (textLayoutResult != null) {
            long TextRange = TextRangeKt.TextRange(i10, i11);
            if (textRange == null && Intrinsics.areEqual(adjustment, SelectionAdjustment.Companion.getCharacter())) {
                return TextRange;
            }
            return adjustment.mo820adjustZXO7KMw(textLayoutResult, TextRange, -1, z10, textRange);
        }
        return TextRangeKt.TextRange(0, 0);
    }
}
