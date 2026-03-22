package androidx.core.app;

import androidx.core.util.Consumer;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: OnMultiWindowModeChangedProvider.kt */
@Metadata
/* loaded from: classes.dex */
public interface OnMultiWindowModeChangedProvider {
    void addOnMultiWindowModeChangedListener(@NotNull Consumer<MultiWindowModeChangedInfo> consumer);

    void removeOnMultiWindowModeChangedListener(@NotNull Consumer<MultiWindowModeChangedInfo> consumer);
}
