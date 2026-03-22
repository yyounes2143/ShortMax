package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SingleGeneratedAdapterObserver.jvm.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SingleGeneratedAdapterObserver implements LifecycleEventObserver {
    @NotNull
    private final GeneratedAdapter generatedAdapter;

    public SingleGeneratedAdapterObserver(@NotNull GeneratedAdapter generatedAdapter) {
        Intrinsics.checkNotNullParameter(generatedAdapter, "generatedAdapter");
        this.generatedAdapter = generatedAdapter;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        this.generatedAdapter.callMethods(source, event, false, null);
        this.generatedAdapter.callMethods(source, event, true, null);
    }
}
