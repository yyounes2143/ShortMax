package androidx.compose.ui.text.input;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EditCommand.kt */
@Metadata
/* loaded from: classes.dex */
public final class DeleteSurroundingTextInCodePointsCommand implements EditCommand {
    private final int lengthAfterCursor;
    private final int lengthBeforeCursor;

    public DeleteSurroundingTextInCodePointsCommand(int i10, int i11) {
        this.lengthBeforeCursor = i10;
        this.lengthAfterCursor = i11;
        if (i10 >= 0 && i11 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were " + i10 + " and " + i11 + " respectively.").toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0038 A[LOOP:0: B:3:0x000a->B:12:0x0038, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0076 A[LOOP:1: B:14:0x003e->B:23:0x0076, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003b A[EDGE_INSN: B:26:0x003b->B:13:0x003b ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0079 A[EDGE_INSN: B:28:0x0079->B:24:0x0079 ?: BREAK  , SYNTHETIC] */
    @Override // androidx.compose.ui.text.input.EditCommand
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyTo(@org.jetbrains.annotations.NotNull androidx.compose.ui.text.input.EditingBuffer r8) {
        /*
            r7 = this;
            java.lang.String r0 = "buffer"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            int r0 = r7.lengthBeforeCursor
            r1 = 0
            r2 = r1
            r3 = r2
        La:
            if (r2 >= r0) goto L3b
            int r4 = r3 + 1
            int r5 = r8.getSelectionStart$ui_text_release()
            if (r5 <= r4) goto L31
            int r5 = r8.getSelectionStart$ui_text_release()
            int r5 = r5 - r4
            int r5 = r5 + (-1)
            char r5 = r8.get$ui_text_release(r5)
            int r6 = r8.getSelectionStart$ui_text_release()
            int r6 = r6 - r4
            char r6 = r8.get$ui_text_release(r6)
            boolean r5 = androidx.compose.ui.text.input.EditCommandKt.access$isSurrogatePair(r5, r6)
            if (r5 == 0) goto L31
            int r3 = r3 + 2
            goto L32
        L31:
            r3 = r4
        L32:
            int r4 = r8.getSelectionStart$ui_text_release()
            if (r3 == r4) goto L3b
            int r2 = r2 + 1
            goto La
        L3b:
            int r0 = r7.lengthAfterCursor
            r2 = r1
        L3e:
            if (r1 >= r0) goto L79
            int r4 = r2 + 1
            int r5 = r8.getSelectionEnd$ui_text_release()
            int r5 = r5 + r4
            int r6 = r8.getLength$ui_text_release()
            if (r5 >= r6) goto L6a
            int r5 = r8.getSelectionEnd$ui_text_release()
            int r5 = r5 + r4
            int r5 = r5 + (-1)
            char r5 = r8.get$ui_text_release(r5)
            int r6 = r8.getSelectionEnd$ui_text_release()
            int r6 = r6 + r4
            char r6 = r8.get$ui_text_release(r6)
            boolean r5 = androidx.compose.ui.text.input.EditCommandKt.access$isSurrogatePair(r5, r6)
            if (r5 == 0) goto L6a
            int r2 = r2 + 2
            goto L6b
        L6a:
            r2 = r4
        L6b:
            int r4 = r8.getSelectionEnd$ui_text_release()
            int r4 = r4 + r2
            int r5 = r8.getLength$ui_text_release()
            if (r4 == r5) goto L79
            int r1 = r1 + 1
            goto L3e
        L79:
            int r0 = r8.getSelectionEnd$ui_text_release()
            int r1 = r8.getSelectionEnd$ui_text_release()
            int r1 = r1 + r2
            r8.delete$ui_text_release(r0, r1)
            int r0 = r8.getSelectionStart$ui_text_release()
            int r0 = r0 - r3
            int r1 = r8.getSelectionStart$ui_text_release()
            r8.delete$ui_text_release(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.input.DeleteSurroundingTextInCodePointsCommand.applyTo(androidx.compose.ui.text.input.EditingBuffer):void");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeleteSurroundingTextInCodePointsCommand)) {
            return false;
        }
        DeleteSurroundingTextInCodePointsCommand deleteSurroundingTextInCodePointsCommand = (DeleteSurroundingTextInCodePointsCommand) obj;
        if (this.lengthBeforeCursor == deleteSurroundingTextInCodePointsCommand.lengthBeforeCursor && this.lengthAfterCursor == deleteSurroundingTextInCodePointsCommand.lengthAfterCursor) {
            return true;
        }
        return false;
    }

    public final int getLengthAfterCursor() {
        return this.lengthAfterCursor;
    }

    public final int getLengthBeforeCursor() {
        return this.lengthBeforeCursor;
    }

    public int hashCode() {
        return (this.lengthBeforeCursor * 31) + this.lengthAfterCursor;
    }

    @NotNull
    public String toString() {
        return "DeleteSurroundingTextInCodePointsCommand(lengthBeforeCursor=" + this.lengthBeforeCursor + ", lengthAfterCursor=" + this.lengthAfterCursor + ')';
    }
}
