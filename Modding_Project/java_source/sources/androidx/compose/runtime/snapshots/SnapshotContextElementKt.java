package androidx.compose.runtime.snapshots;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotContextElement.kt */
@Metadata
/* loaded from: classes.dex */
public final class SnapshotContextElementKt {
    @NotNull
    public static final SnapshotContextElement asContextElement(@NotNull Snapshot snapshot) {
        return new SnapshotContextElementImpl(snapshot);
    }
}
