package androidx.compose.ui.text.input;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: EditCommand.kt */
@Metadata
/* loaded from: classes.dex */
public interface EditCommand {
    void applyTo(@NotNull EditingBuffer editingBuffer);
}
