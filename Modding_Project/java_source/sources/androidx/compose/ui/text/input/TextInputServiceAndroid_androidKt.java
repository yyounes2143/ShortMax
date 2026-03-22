package androidx.compose.ui.text.input;

import android.view.inputmethod.EditorInfo;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.core.view.inputmethod.EditorInfoCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextInputServiceAndroid.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextInputServiceAndroid_androidKt {
    @NotNull
    private static final String DEBUG_CLASS = "TextInputServiceAndroid";

    private static final boolean hasFlag(int i10, int i11) {
        if ((i10 & i11) == i11) {
            return true;
        }
        return false;
    }

    public static final void update(@NotNull EditorInfo editorInfo, @NotNull ImeOptions imeOptions, @NotNull TextFieldValue textFieldValue) {
        Intrinsics.checkNotNullParameter(editorInfo, "<this>");
        Intrinsics.checkNotNullParameter(imeOptions, "imeOptions");
        Intrinsics.checkNotNullParameter(textFieldValue, "textFieldValue");
        int m3838getImeActioneUduSuo = imeOptions.m3838getImeActioneUduSuo();
        ImeAction.Companion companion = ImeAction.Companion;
        int i10 = 6;
        if (ImeAction.m3823equalsimpl0(m3838getImeActioneUduSuo, companion.m3827getDefaulteUduSuo())) {
            if (!imeOptions.getSingleLine()) {
                i10 = 0;
            }
        } else if (ImeAction.m3823equalsimpl0(m3838getImeActioneUduSuo, companion.m3831getNoneeUduSuo())) {
            i10 = 1;
        } else if (ImeAction.m3823equalsimpl0(m3838getImeActioneUduSuo, companion.m3829getGoeUduSuo())) {
            i10 = 2;
        } else if (ImeAction.m3823equalsimpl0(m3838getImeActioneUduSuo, companion.m3830getNexteUduSuo())) {
            i10 = 5;
        } else if (ImeAction.m3823equalsimpl0(m3838getImeActioneUduSuo, companion.m3832getPreviouseUduSuo())) {
            i10 = 7;
        } else if (ImeAction.m3823equalsimpl0(m3838getImeActioneUduSuo, companion.m3833getSearcheUduSuo())) {
            i10 = 3;
        } else if (ImeAction.m3823equalsimpl0(m3838getImeActioneUduSuo, companion.m3834getSendeUduSuo())) {
            i10 = 4;
        } else if (!ImeAction.m3823equalsimpl0(m3838getImeActioneUduSuo, companion.m3828getDoneeUduSuo())) {
            throw new IllegalStateException("invalid ImeAction");
        }
        editorInfo.imeOptions = i10;
        int m3839getKeyboardTypePjHm6EE = imeOptions.m3839getKeyboardTypePjHm6EE();
        KeyboardType.Companion companion2 = KeyboardType.Companion;
        if (KeyboardType.m3856equalsimpl0(m3839getKeyboardTypePjHm6EE, companion2.m3867getTextPjHm6EE())) {
            editorInfo.inputType = 1;
        } else if (KeyboardType.m3856equalsimpl0(m3839getKeyboardTypePjHm6EE, companion2.m3860getAsciiPjHm6EE())) {
            editorInfo.inputType = 1;
            editorInfo.imeOptions |= Integer.MIN_VALUE;
        } else if (KeyboardType.m3856equalsimpl0(m3839getKeyboardTypePjHm6EE, companion2.m3863getNumberPjHm6EE())) {
            editorInfo.inputType = 2;
        } else if (KeyboardType.m3856equalsimpl0(m3839getKeyboardTypePjHm6EE, companion2.m3866getPhonePjHm6EE())) {
            editorInfo.inputType = 3;
        } else if (KeyboardType.m3856equalsimpl0(m3839getKeyboardTypePjHm6EE, companion2.m3868getUriPjHm6EE())) {
            editorInfo.inputType = 17;
        } else if (KeyboardType.m3856equalsimpl0(m3839getKeyboardTypePjHm6EE, companion2.m3862getEmailPjHm6EE())) {
            editorInfo.inputType = 33;
        } else if (KeyboardType.m3856equalsimpl0(m3839getKeyboardTypePjHm6EE, companion2.m3865getPasswordPjHm6EE())) {
            editorInfo.inputType = 129;
        } else if (KeyboardType.m3856equalsimpl0(m3839getKeyboardTypePjHm6EE, companion2.m3864getNumberPasswordPjHm6EE())) {
            editorInfo.inputType = 18;
        } else if (KeyboardType.m3856equalsimpl0(m3839getKeyboardTypePjHm6EE, companion2.m3861getDecimalPjHm6EE())) {
            editorInfo.inputType = 8194;
        } else {
            throw new IllegalStateException("Invalid Keyboard Type");
        }
        if (!imeOptions.getSingleLine() && hasFlag(editorInfo.inputType, 1)) {
            editorInfo.inputType |= 131072;
            if (ImeAction.m3823equalsimpl0(imeOptions.m3838getImeActioneUduSuo(), companion.m3827getDefaulteUduSuo())) {
                editorInfo.imeOptions |= 1073741824;
            }
        }
        if (hasFlag(editorInfo.inputType, 1)) {
            int m3837getCapitalizationIUNYP9k = imeOptions.m3837getCapitalizationIUNYP9k();
            KeyboardCapitalization.Companion companion3 = KeyboardCapitalization.Companion;
            if (KeyboardCapitalization.m3845equalsimpl0(m3837getCapitalizationIUNYP9k, companion3.m3849getCharactersIUNYP9k())) {
                editorInfo.inputType |= 4096;
            } else if (KeyboardCapitalization.m3845equalsimpl0(m3837getCapitalizationIUNYP9k, companion3.m3852getWordsIUNYP9k())) {
                editorInfo.inputType |= 8192;
            } else if (KeyboardCapitalization.m3845equalsimpl0(m3837getCapitalizationIUNYP9k, companion3.m3851getSentencesIUNYP9k())) {
                editorInfo.inputType |= 16384;
            }
            if (imeOptions.getAutoCorrect()) {
                editorInfo.inputType |= 32768;
            }
        }
        editorInfo.initialSelStart = TextRange.m3697getStartimpl(textFieldValue.m3874getSelectiond9O1mEE());
        editorInfo.initialSelEnd = TextRange.m3692getEndimpl(textFieldValue.m3874getSelectiond9O1mEE());
        EditorInfoCompat.setInitialSurroundingText(editorInfo, textFieldValue.getText());
        editorInfo.imeOptions |= 33554432;
    }
}
