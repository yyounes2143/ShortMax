package androidx.datastore.core.okio;

import androidx.datastore.core.InterProcessCoordinator;
import androidx.datastore.core.InterProcessCoordinatorKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Path;
import org.jetbrains.annotations.NotNull;
/* compiled from: OkioStorage.kt */
@Metadata
/* loaded from: classes2.dex */
public final class OkioStorageKt {
    @NotNull
    public static final InterProcessCoordinator createSingleProcessCoordinator(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return InterProcessCoordinatorKt.createSingleProcessCoordinator(path.normalized().toString());
    }
}
