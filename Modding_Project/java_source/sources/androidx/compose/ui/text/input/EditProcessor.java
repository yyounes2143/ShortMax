package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.TextRange;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EditProcessor.kt */
@Metadata
/* loaded from: classes.dex */
public final class EditProcessor {
    @NotNull
    private TextFieldValue mBufferState = new TextFieldValue(AnnotatedStringKt.emptyAnnotatedString(), TextRange.Companion.m3702getZerod9O1mEE(), (TextRange) null, (DefaultConstructorMarker) null);
    @NotNull
    private EditingBuffer mBuffer = new EditingBuffer(this.mBufferState.getAnnotatedString(), this.mBufferState.m3874getSelectiond9O1mEE(), (DefaultConstructorMarker) null);

    @NotNull
    public final TextFieldValue apply(@NotNull List<? extends EditCommand> editCommands) {
        Intrinsics.checkNotNullParameter(editCommands, "editCommands");
        int size = editCommands.size();
        for (int i10 = 0; i10 < size; i10++) {
            editCommands.get(i10).applyTo(this.mBuffer);
        }
        TextFieldValue textFieldValue = new TextFieldValue(this.mBuffer.toAnnotatedString$ui_text_release(), this.mBuffer.m3818getSelectiond9O1mEE$ui_text_release(), this.mBuffer.m3817getCompositionMzsxiRA$ui_text_release(), (DefaultConstructorMarker) null);
        this.mBufferState = textFieldValue;
        return textFieldValue;
    }

    @NotNull
    public final EditingBuffer getMBuffer$ui_text_release() {
        return this.mBuffer;
    }

    @NotNull
    public final TextFieldValue getMBufferState$ui_text_release() {
        return this.mBufferState;
    }

    public final void reset(@NotNull TextFieldValue value, @Nullable TextInputSession textInputSession) {
        Intrinsics.checkNotNullParameter(value, "value");
        boolean areEqual = Intrinsics.areEqual(value.m3873getCompositionMzsxiRA(), this.mBuffer.m3817getCompositionMzsxiRA$ui_text_release());
        boolean z10 = true;
        boolean z11 = false;
        if (!Intrinsics.areEqual(this.mBufferState.getAnnotatedString(), value.getAnnotatedString())) {
            this.mBuffer = new EditingBuffer(value.getAnnotatedString(), value.m3874getSelectiond9O1mEE(), (DefaultConstructorMarker) null);
        } else if (!TextRange.m3690equalsimpl0(this.mBufferState.m3874getSelectiond9O1mEE(), value.m3874getSelectiond9O1mEE())) {
            this.mBuffer.setSelection$ui_text_release(TextRange.m3695getMinimpl(value.m3874getSelectiond9O1mEE()), TextRange.m3694getMaximpl(value.m3874getSelectiond9O1mEE()));
            z11 = true;
            z10 = false;
        } else {
            z10 = false;
        }
        if (value.m3873getCompositionMzsxiRA() == null) {
            this.mBuffer.commitComposition$ui_text_release();
        } else if (!TextRange.m3691getCollapsedimpl(value.m3873getCompositionMzsxiRA().m3701unboximpl())) {
            this.mBuffer.setComposition$ui_text_release(TextRange.m3695getMinimpl(value.m3873getCompositionMzsxiRA().m3701unboximpl()), TextRange.m3694getMaximpl(value.m3873getCompositionMzsxiRA().m3701unboximpl()));
        }
        if (z10 || (!z11 && !areEqual)) {
            this.mBuffer.commitComposition$ui_text_release();
            value = TextFieldValue.m3869copy3r_uNRQ$default(value, (AnnotatedString) null, 0L, (TextRange) null, 3, (Object) null);
        }
        TextFieldValue textFieldValue = this.mBufferState;
        this.mBufferState = value;
        if (textInputSession != null) {
            textInputSession.updateState(textFieldValue, value);
        }
    }

    @NotNull
    public final TextFieldValue toTextFieldValue() {
        return this.mBufferState;
    }
}
