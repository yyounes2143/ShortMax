package androidx.core.app;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: OnUserLeaveHintProvider.kt */
@Metadata
/* loaded from: classes.dex */
public interface OnUserLeaveHintProvider {
    void addOnUserLeaveHintListener(@NotNull Runnable runnable);

    void removeOnUserLeaveHintListener(@NotNull Runnable runnable);
}
