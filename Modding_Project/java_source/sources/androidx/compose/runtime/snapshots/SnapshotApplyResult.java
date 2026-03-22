package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Snapshot.kt */
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes.dex */
public abstract class SnapshotApplyResult {
    public static final int $stable = 0;

    /* compiled from: Snapshot.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Failure extends SnapshotApplyResult {
        public static final int $stable = 8;
        @NotNull
        private final Snapshot snapshot;

        public Failure(@NotNull Snapshot snapshot) {
            super(null);
            this.snapshot = snapshot;
        }

        @Override // androidx.compose.runtime.snapshots.SnapshotApplyResult
        public void check() {
            this.snapshot.dispose();
            throw new SnapshotApplyConflictException(this.snapshot);
        }

        @NotNull
        public final Snapshot getSnapshot() {
            return this.snapshot;
        }

        @Override // androidx.compose.runtime.snapshots.SnapshotApplyResult
        public boolean getSucceeded() {
            return false;
        }
    }

    public /* synthetic */ SnapshotApplyResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract void check();

    public abstract boolean getSucceeded();

    private SnapshotApplyResult() {
    }

    /* compiled from: Snapshot.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Success extends SnapshotApplyResult {
        public static final int $stable = 0;
        @NotNull
        public static final Success INSTANCE = new Success();

        private Success() {
            super(null);
        }

        @Override // androidx.compose.runtime.snapshots.SnapshotApplyResult
        public boolean getSucceeded() {
            return true;
        }

        @Override // androidx.compose.runtime.snapshots.SnapshotApplyResult
        public void check() {
        }
    }
}
