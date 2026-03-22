package androidx.compose.ui.text.input;

import android.view.inputmethod.ExtractedText;
import androidx.compose.ui.text.TextRange;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: InputState.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class InputState_androidKt {
    @NotNull
    public static final ExtractedText toExtractedText(@NotNull TextFieldValue textFieldValue) {
        Intrinsics.checkNotNullParameter(textFieldValue, "<this>");
        ExtractedText extractedText = new ExtractedText();
        extractedText.text = textFieldValue.getText();
        extractedText.startOffset = 0;
        extractedText.partialEndOffset = textFieldValue.getText().length();
        extractedText.partialStartOffset = -1;
        extractedText.selectionStart = TextRange.m3695getMinimpl(textFieldValue.m3874getSelectiond9O1mEE());
        extractedText.selectionEnd = TextRange.m3694getMaximpl(textFieldValue.m3874getSelectiond9O1mEE());
        extractedText.flags = !StringsKt.a0(textFieldValue.getText(), '\n', false, 2, null) ? 1 : 0;
        return extractedText;
    }
}
