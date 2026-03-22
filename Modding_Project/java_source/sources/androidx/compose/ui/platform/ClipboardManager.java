package androidx.compose.ui.platform;

import androidx.compose.ui.text.AnnotatedString;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ClipboardManager.kt */
@Metadata
/* loaded from: classes.dex */
public interface ClipboardManager {
    @Nullable
    AnnotatedString getText();

    void setText(@NotNull AnnotatedString annotatedString);
}
