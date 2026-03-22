package androidx.compose.ui.text.input;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EditCommand.kt */
@Metadata
/* loaded from: classes.dex */
public final class SetSelectionCommand implements EditCommand {
    private final int end;
    private final int start;

    public SetSelectionCommand(int i10, int i11) {
        this.start = i10;
        this.end = i11;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void applyTo(@NotNull EditingBuffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int n10 = e.n(this.start, 0, buffer.getLength$ui_text_release());
        int n11 = e.n(this.end, 0, buffer.getLength$ui_text_release());
        if (n10 < n11) {
            buffer.setSelection$ui_text_release(n10, n11);
        } else {
            buffer.setSelection$ui_text_release(n11, n10);
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetSelectionCommand)) {
            return false;
        }
        SetSelectionCommand setSelectionCommand = (SetSelectionCommand) obj;
        if (this.start == setSelectionCommand.start && this.end == setSelectionCommand.end) {
            return true;
        }
        return false;
    }

    public final int getEnd() {
        return this.end;
    }

    public final int getStart() {
        return this.start;
    }

    public int hashCode() {
        return (this.start * 31) + this.end;
    }

    @NotNull
    public String toString() {
        return "SetSelectionCommand(start=" + this.start + ", end=" + this.end + ')';
    }
}
