package androidx.datastore.core;

import androidx.annotation.RestrictTo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: InterProcessCoordinator.kt */
@Metadata
/* loaded from: classes2.dex */
public final class InterProcessCoordinatorKt {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final InterProcessCoordinator createSingleProcessCoordinator(@NotNull String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        return new SingleProcessCoordinator(filePath);
    }
}
