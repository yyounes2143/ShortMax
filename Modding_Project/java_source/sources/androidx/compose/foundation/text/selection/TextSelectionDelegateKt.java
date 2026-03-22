package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextSelectionDelegate.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextSelectionDelegateKt {
    public static final float getHorizontalPosition(@NotNull TextLayoutResult textLayoutResult, int i10, boolean z10, boolean z11) {
        int max;
        Intrinsics.checkNotNullParameter(textLayoutResult, "<this>");
        boolean z12 = false;
        if ((z10 && !z11) || (!z10 && z11)) {
            max = i10;
        } else {
            max = Math.max(i10 - 1, 0);
        }
        if (textLayoutResult.getBidiRunDirection(max) == textLayoutResult.getParagraphDirection(i10)) {
            z12 = true;
        }
        return textLayoutResult.getHorizontalPosition(i10, z12);
    }

    public static final long getSelectionHandleCoordinates(@NotNull TextLayoutResult textLayoutResult, int i10, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
        return OffsetKt.Offset(getHorizontalPosition(textLayoutResult, i10, z10, z11), textLayoutResult.getLineBottom(textLayoutResult.getLineForOffset(i10)));
    }
}
