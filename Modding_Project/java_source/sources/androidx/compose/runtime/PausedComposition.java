package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PausableComposition.kt */
@Metadata
/* loaded from: classes.dex */
public interface PausedComposition {
    void apply();

    void cancel();

    boolean isApplied();

    boolean isCancelled();

    boolean isComplete();

    boolean resume(@NotNull ShouldPauseCallback shouldPauseCallback);
}
