package androidx.datastore.core;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: InterProcessCoordinator.jvm.kt */
@Metadata
/* loaded from: classes2.dex */
public final class InterProcessCoordinator_jvmKt {
    @NotNull
    public static final InterProcessCoordinator createSingleProcessCoordinator(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        String absolutePath = file.getCanonicalFile().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "file.canonicalFile.absolutePath");
        return InterProcessCoordinatorKt.createSingleProcessCoordinator(absolutePath);
    }
}
