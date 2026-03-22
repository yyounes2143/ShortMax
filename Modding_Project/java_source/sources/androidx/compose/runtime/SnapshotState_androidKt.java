package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotMutableState;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotState.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class SnapshotState_androidKt {
    @NotNull
    public static final <T> SnapshotMutableState<T> createSnapshotMutableState(T t10, @NotNull SnapshotMutationPolicy<T> snapshotMutationPolicy) {
        return new ParcelableSnapshotMutableState(t10, snapshotMutationPolicy);
    }
}
