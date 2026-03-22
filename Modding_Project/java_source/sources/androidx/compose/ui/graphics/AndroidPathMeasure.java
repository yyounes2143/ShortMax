package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidPathMeasure.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidPathMeasure implements PathMeasure {
    @NotNull
    private final android.graphics.PathMeasure internalPathMeasure;

    public AndroidPathMeasure(@NotNull android.graphics.PathMeasure internalPathMeasure) {
        Intrinsics.checkNotNullParameter(internalPathMeasure, "internalPathMeasure");
        this.internalPathMeasure = internalPathMeasure;
    }

    @Override // androidx.compose.ui.graphics.PathMeasure
    public float getLength() {
        return this.internalPathMeasure.getLength();
    }

    @Override // androidx.compose.ui.graphics.PathMeasure
    public boolean getSegment(float f10, float f11, @NotNull Path destination, boolean z10) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        android.graphics.PathMeasure pathMeasure = this.internalPathMeasure;
        if (destination instanceof AndroidPath) {
            return pathMeasure.getSegment(f10, f11, ((AndroidPath) destination).getInternalPath(), z10);
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
    }

    @Override // androidx.compose.ui.graphics.PathMeasure
    public void setPath(@Nullable Path path, boolean z10) {
        android.graphics.Path path2;
        android.graphics.PathMeasure pathMeasure = this.internalPathMeasure;
        if (path != null) {
            if (path instanceof AndroidPath) {
                path2 = ((AndroidPath) path).getInternalPath();
            } else {
                throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
            }
        } else {
            path2 = null;
        }
        pathMeasure.setPath(path2, z10);
    }
}
