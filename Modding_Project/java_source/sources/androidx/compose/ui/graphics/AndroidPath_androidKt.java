package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidPath.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidPath_androidKt {
    @NotNull
    public static final Path Path() {
        return new AndroidPath(null, 1, null);
    }

    @NotNull
    public static final android.graphics.Path asAndroidPath(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (path instanceof AndroidPath) {
            return ((AndroidPath) path).getInternalPath();
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
    }

    @NotNull
    public static final Path asComposePath(@NotNull android.graphics.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return new AndroidPath(path);
    }
}
