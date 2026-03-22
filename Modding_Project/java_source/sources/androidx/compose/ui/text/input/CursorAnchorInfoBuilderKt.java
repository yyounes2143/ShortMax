package androidx.compose.ui.text.input;

import android.graphics.Matrix;
import android.view.inputmethod.CursorAnchorInfo;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CursorAnchorInfoBuilder.kt */
@Metadata
/* loaded from: classes.dex */
public final class CursorAnchorInfoBuilderKt {
    @NotNull
    public static final CursorAnchorInfo build(@NotNull CursorAnchorInfo.Builder builder, @NotNull TextFieldValue textFieldValue, @NotNull TextLayoutResult textLayoutResult, @NotNull Matrix matrix) {
        int i10;
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(textFieldValue, "textFieldValue");
        Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        builder.reset();
        builder.setMatrix(matrix);
        int m3695getMinimpl = TextRange.m3695getMinimpl(textFieldValue.m3874getSelectiond9O1mEE());
        builder.setSelectionRange(m3695getMinimpl, TextRange.m3694getMaximpl(textFieldValue.m3874getSelectiond9O1mEE()));
        setInsertionMarker(builder, m3695getMinimpl, textLayoutResult);
        TextRange m3873getCompositionMzsxiRA = textFieldValue.m3873getCompositionMzsxiRA();
        int i11 = -1;
        if (m3873getCompositionMzsxiRA != null) {
            i10 = TextRange.m3695getMinimpl(m3873getCompositionMzsxiRA.m3701unboximpl());
        } else {
            i10 = -1;
        }
        TextRange m3873getCompositionMzsxiRA2 = textFieldValue.m3873getCompositionMzsxiRA();
        if (m3873getCompositionMzsxiRA2 != null) {
            i11 = TextRange.m3694getMaximpl(m3873getCompositionMzsxiRA2.m3701unboximpl());
        }
        if (i10 >= 0 && i10 < i11) {
            builder.setComposingText(i10, textFieldValue.getText().subSequence(i10, i11));
        }
        CursorAnchorInfo build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build()");
        return build;
    }

    private static final CursorAnchorInfo.Builder setInsertionMarker(CursorAnchorInfo.Builder builder, int i10, TextLayoutResult textLayoutResult) {
        boolean z10;
        if (i10 < 0) {
            return builder;
        }
        Rect cursorRect = textLayoutResult.getCursorRect(i10);
        int i11 = 0;
        if (textLayoutResult.getBidiRunDirection(i10) == ResolvedTextDirection.Rtl) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            i11 = 4;
        }
        builder.setInsertionMarkerLocation(cursorRect.getLeft(), cursorRect.getTop(), cursorRect.getBottom(), cursorRect.getBottom(), i11);
        return builder;
    }
}
