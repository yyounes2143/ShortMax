package androidx.compose.runtime.snapshots.tooling;

import androidx.compose.runtime.ExperimentalComposeRuntimeApi;
import androidx.compose.runtime.snapshots.Snapshot;
import java.util.Set;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotObserver.kt */
@ExperimentalComposeRuntimeApi
@Metadata
/* loaded from: classes.dex */
public interface SnapshotObserver {
    @Nullable
    default SnapshotInstanceObservers onPreCreate(@Nullable Snapshot snapshot, boolean z10) {
        return null;
    }

    default void onPreDispose(@NotNull Snapshot snapshot) {
    }

    default void onApplied(@NotNull Snapshot snapshot, @NotNull Set<? extends Object> set) {
    }

    default void onCreated(@NotNull Snapshot snapshot, @Nullable Snapshot snapshot2, @Nullable SnapshotInstanceObservers snapshotInstanceObservers) {
    }
}
