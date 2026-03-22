package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FlowExt.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FlowExtKt {
    @NotNull
    public static final <T> kt.b<T> flowWithLifecycle(@NotNull kt.b<? extends T> bVar, @NotNull Lifecycle lifecycle, @NotNull Lifecycle.State minActiveState) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        Intrinsics.checkNotNullParameter(minActiveState, "minActiveState");
        return kotlinx.coroutines.flow.c.g(new FlowExtKt$flowWithLifecycle$1(lifecycle, minActiveState, bVar, null));
    }

    public static /* synthetic */ kt.b flowWithLifecycle$default(kt.b bVar, Lifecycle lifecycle, Lifecycle.State state, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            state = Lifecycle.State.STARTED;
        }
        return flowWithLifecycle(bVar, lifecycle, state);
    }
}
