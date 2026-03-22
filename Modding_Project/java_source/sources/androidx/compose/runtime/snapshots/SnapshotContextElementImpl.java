package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.snapshots.SnapshotContextElement;
import gt.s1;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotContextElement.jvm.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class SnapshotContextElementImpl implements SnapshotContextElement, s1<Snapshot> {
    public static final int $stable = 8;
    @NotNull
    private final Snapshot snapshot;

    public SnapshotContextElementImpl(@NotNull Snapshot snapshot) {
        this.snapshot = snapshot;
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) SnapshotContextElement.DefaultImpls.fold(this, r10, function2);
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.b<E> bVar) {
        return (E) SnapshotContextElement.DefaultImpls.get(this, bVar);
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotContextElement, kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public CoroutineContext.b<?> getKey() {
        return SnapshotContextElement.Key;
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.b<?> bVar) {
        return SnapshotContextElement.DefaultImpls.minusKey(this, bVar);
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotContextElement, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return SnapshotContextElement.DefaultImpls.plus(this, coroutineContext);
    }

    @Override // gt.s1
    public void restoreThreadContext(@NotNull CoroutineContext coroutineContext, @Nullable Snapshot snapshot) {
        this.snapshot.unsafeLeave(snapshot);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // gt.s1
    @Nullable
    public Snapshot updateThreadContext(@NotNull CoroutineContext coroutineContext) {
        return this.snapshot.unsafeEnter();
    }
}
