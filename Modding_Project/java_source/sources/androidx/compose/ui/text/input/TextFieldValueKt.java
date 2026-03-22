package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextFieldValue.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldValueKt {
    @NotNull
    public static final AnnotatedString getSelectedText(@NotNull TextFieldValue textFieldValue) {
        Intrinsics.checkNotNullParameter(textFieldValue, "<this>");
        return textFieldValue.getAnnotatedString().m3610subSequence5zctL8(textFieldValue.m3874getSelectiond9O1mEE());
    }

    @NotNull
    public static final AnnotatedString getTextAfterSelection(@NotNull TextFieldValue textFieldValue, int i10) {
        Intrinsics.checkNotNullParameter(textFieldValue, "<this>");
        return textFieldValue.getAnnotatedString().subSequence(TextRange.m3694getMaximpl(textFieldValue.m3874getSelectiond9O1mEE()), Math.min(TextRange.m3694getMaximpl(textFieldValue.m3874getSelectiond9O1mEE()) + i10, textFieldValue.getText().length()));
    }

    @NotNull
    public static final AnnotatedString getTextBeforeSelection(@NotNull TextFieldValue textFieldValue, int i10) {
        Intrinsics.checkNotNullParameter(textFieldValue, "<this>");
        return textFieldValue.getAnnotatedString().subSequence(Math.max(0, TextRange.m3695getMinimpl(textFieldValue.m3874getSelectiond9O1mEE()) - i10), TextRange.m3695getMinimpl(textFieldValue.m3874getSelectiond9O1mEE()));
    }
}
