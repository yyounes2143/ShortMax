package androidx.compose.ui.text.input;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EditCommand.kt */
@Metadata
/* loaded from: classes.dex */
public final class DeleteAllCommand implements EditCommand {
    @Override // androidx.compose.ui.text.input.EditCommand
    public void applyTo(@NotNull EditingBuffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        buffer.replace$ui_text_release(0, buffer.getLength$ui_text_release(), "");
    }

    public boolean equals(@Nullable Object obj) {
        return obj instanceof DeleteAllCommand;
    }

    public int hashCode() {
        return Reflection.getOrCreateKotlinClass(DeleteAllCommand.class).hashCode();
    }

    @NotNull
    public String toString() {
        return "DeleteAllCommand()";
    }
}
