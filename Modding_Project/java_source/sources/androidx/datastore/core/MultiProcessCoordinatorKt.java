package androidx.datastore.core;

import java.io.File;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MultiProcessCoordinator.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class MultiProcessCoordinatorKt {
    @NotNull
    public static final InterProcessCoordinator createMultiProcessCoordinator(@NotNull CoroutineContext context, @NotNull File file) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(file, "file");
        return new MultiProcessCoordinator(context, file);
    }
}
