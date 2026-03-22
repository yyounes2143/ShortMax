package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.TextRangeKt;
import kotlin.Metadata;
/* compiled from: SelectionAdjustment.kt */
@Metadata
/* loaded from: classes.dex */
public final class SelectionAdjustmentKt {
    public static final long ensureAtLeastOneChar(int i10, int i11, boolean z10, boolean z11) {
        if (i11 == 0) {
            return TextRangeKt.TextRange(i10, i10);
        }
        if (i10 == 0) {
            if (z10) {
                return TextRangeKt.TextRange(1, 0);
            }
            return TextRangeKt.TextRange(0, 1);
        } else if (i10 == i11) {
            if (z10) {
                return TextRangeKt.TextRange(i11 - 1, i11);
            }
            return TextRangeKt.TextRange(i11, i11 - 1);
        } else if (z10) {
            if (!z11) {
                return TextRangeKt.TextRange(i10 - 1, i10);
            }
            return TextRangeKt.TextRange(i10 + 1, i10);
        } else if (!z11) {
            return TextRangeKt.TextRange(i10, i10 + 1);
        } else {
            return TextRangeKt.TextRange(i10, i10 - 1);
        }
    }
}
