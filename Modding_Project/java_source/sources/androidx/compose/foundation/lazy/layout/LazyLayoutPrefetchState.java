package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyLayoutPrefetchState.kt */
@Stable
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
public final class LazyLayoutPrefetchState {
    @NotNull
    private final MutableState prefetcher$delegate;

    /* compiled from: LazyLayoutPrefetchState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface PrefetchHandle {
        void cancel();
    }

    /* compiled from: LazyLayoutPrefetchState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface Prefetcher {
        @NotNull
        /* renamed from: schedulePrefetch-0kLqBqw  reason: not valid java name */
        PrefetchHandle mo661schedulePrefetch0kLqBqw(int i10, long j10);
    }

    public LazyLayoutPrefetchState() {
        MutableState mutableStateOf$default;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.prefetcher$delegate = mutableStateOf$default;
    }

    @Nullable
    public final Prefetcher getPrefetcher$foundation_release() {
        return (Prefetcher) this.prefetcher$delegate.getValue();
    }

    @NotNull
    /* renamed from: schedulePrefetch-0kLqBqw  reason: not valid java name */
    public final PrefetchHandle m660schedulePrefetch0kLqBqw(int i10, long j10) {
        PrefetchHandle mo661schedulePrefetch0kLqBqw;
        Prefetcher prefetcher$foundation_release = getPrefetcher$foundation_release();
        if (prefetcher$foundation_release == null || (mo661schedulePrefetch0kLqBqw = prefetcher$foundation_release.mo661schedulePrefetch0kLqBqw(i10, j10)) == null) {
            return DummyHandle.INSTANCE;
        }
        return mo661schedulePrefetch0kLqBqw;
    }

    public final void setPrefetcher$foundation_release(@Nullable Prefetcher prefetcher) {
        this.prefetcher$delegate.setValue(prefetcher);
    }
}
