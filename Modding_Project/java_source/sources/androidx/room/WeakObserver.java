package androidx.room;

import androidx.room.InvalidationTracker;
import java.lang.ref.WeakReference;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: InvalidationTracker.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class WeakObserver extends InvalidationTracker.Observer {
    @NotNull
    private final WeakReference<InvalidationTracker.Observer> delegateRef;
    @NotNull
    private final InvalidationTracker tracker;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WeakObserver(@NotNull InvalidationTracker tracker, @NotNull InvalidationTracker.Observer delegate) {
        super(delegate.getTables$room_runtime());
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.tracker = tracker;
        this.delegateRef = new WeakReference<>(delegate);
    }

    @Override // androidx.room.InvalidationTracker.Observer
    public void onInvalidated(@NotNull Set<String> tables) {
        Intrinsics.checkNotNullParameter(tables, "tables");
        InvalidationTracker.Observer observer = this.delegateRef.get();
        if (observer == null) {
            this.tracker.removeObserver(this);
        } else {
            observer.onInvalidated(tables);
        }
    }
}
