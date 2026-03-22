package androidx.compose.ui.text.input;

import androidx.compose.ui.text.JvmCharHelpers_androidKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EditCommand.kt */
@Metadata
/* loaded from: classes.dex */
public final class MoveCursorCommand implements EditCommand {
    private final int amount;

    public MoveCursorCommand(int i10) {
        this.amount = i10;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void applyTo(@NotNull EditingBuffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        if (buffer.getCursor$ui_text_release() == -1) {
            buffer.setCursor$ui_text_release(buffer.getSelectionStart$ui_text_release());
        }
        int selectionStart$ui_text_release = buffer.getSelectionStart$ui_text_release();
        String editingBuffer = buffer.toString();
        int i10 = this.amount;
        int i11 = 0;
        if (i10 > 0) {
            while (i11 < i10) {
                int findFollowingBreak = JvmCharHelpers_androidKt.findFollowingBreak(editingBuffer, selectionStart$ui_text_release);
                if (findFollowingBreak == -1) {
                    break;
                }
                i11++;
                selectionStart$ui_text_release = findFollowingBreak;
            }
        } else {
            int i12 = -i10;
            while (i11 < i12) {
                int findPrecedingBreak = JvmCharHelpers_androidKt.findPrecedingBreak(editingBuffer, selectionStart$ui_text_release);
                if (findPrecedingBreak == -1) {
                    break;
                }
                i11++;
                selectionStart$ui_text_release = findPrecedingBreak;
            }
        }
        buffer.setCursor$ui_text_release(selectionStart$ui_text_release);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof MoveCursorCommand) && this.amount == ((MoveCursorCommand) obj).amount) {
            return true;
        }
        return false;
    }

    public final int getAmount() {
        return this.amount;
    }

    public int hashCode() {
        return this.amount;
    }

    @NotNull
    public String toString() {
        return "MoveCursorCommand(amount=" + this.amount + ')';
    }
}
