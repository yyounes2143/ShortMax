package androidx.core.content;

import androidx.core.util.Consumer;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: OnTrimMemoryProvider.kt */
@Metadata
/* loaded from: classes.dex */
public interface OnTrimMemoryProvider {
    void addOnTrimMemoryListener(@NotNull Consumer<Integer> consumer);

    void removeOnTrimMemoryListener(@NotNull Consumer<Integer> consumer);
}
