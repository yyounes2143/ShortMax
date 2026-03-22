package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.AndroidPathMeasure_androidKt;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathMeasure;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Checkbox.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class CheckDrawingCache {
    @NotNull
    private final Path checkPath;
    @NotNull
    private final PathMeasure pathMeasure;
    @NotNull
    private final Path pathToDraw;

    public CheckDrawingCache() {
        this(null, null, null, 7, null);
    }

    @NotNull
    public final Path getCheckPath() {
        return this.checkPath;
    }

    @NotNull
    public final PathMeasure getPathMeasure() {
        return this.pathMeasure;
    }

    @NotNull
    public final Path getPathToDraw() {
        return this.pathToDraw;
    }

    public CheckDrawingCache(@NotNull Path checkPath, @NotNull PathMeasure pathMeasure, @NotNull Path pathToDraw) {
        Intrinsics.checkNotNullParameter(checkPath, "checkPath");
        Intrinsics.checkNotNullParameter(pathMeasure, "pathMeasure");
        Intrinsics.checkNotNullParameter(pathToDraw, "pathToDraw");
        this.checkPath = checkPath;
        this.pathMeasure = pathMeasure;
        this.pathToDraw = pathToDraw;
    }

    public /* synthetic */ CheckDrawingCache(Path path, PathMeasure pathMeasure, Path path2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? AndroidPath_androidKt.Path() : path, (i10 & 2) != 0 ? AndroidPathMeasure_androidKt.PathMeasure() : pathMeasure, (i10 & 4) != 0 ? AndroidPath_androidKt.Path() : path2);
    }
}
