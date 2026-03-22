package androidx.compose.ui.graphics;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PathMeasure.kt */
@Metadata
/* loaded from: classes.dex */
public interface PathMeasure {

    /* compiled from: PathMeasure.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
    }

    static /* synthetic */ boolean getSegment$default(PathMeasure pathMeasure, float f10, float f11, Path path, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 8) != 0) {
                z10 = true;
            }
            return pathMeasure.getSegment(f10, f11, path, z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getSegment");
    }

    float getLength();

    boolean getSegment(float f10, float f11, @NotNull Path path, boolean z10);

    void setPath(@Nullable Path path, boolean z10);
}
