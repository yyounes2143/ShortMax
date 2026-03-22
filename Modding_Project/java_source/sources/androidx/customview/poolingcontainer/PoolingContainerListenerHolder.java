package androidx.customview.poolingcontainer;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PoolingContainer.kt */
@Metadata
/* loaded from: classes.dex */
public final class PoolingContainerListenerHolder {
    @NotNull
    private final ArrayList<PoolingContainerListener> listeners = new ArrayList<>();

    public final void addListener(@NotNull PoolingContainerListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.add(listener);
    }

    public final void onRelease() {
        for (int p10 = CollectionsKt.p(this.listeners); -1 < p10; p10--) {
            this.listeners.get(p10).onRelease();
        }
    }

    public final void removeListener(@NotNull PoolingContainerListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.remove(listener);
    }
}
