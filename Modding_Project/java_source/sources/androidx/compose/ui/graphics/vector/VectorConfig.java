package androidx.compose.ui.graphics.vector;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VectorPainter.kt */
@Metadata
/* loaded from: classes.dex */
public interface VectorConfig {

    /* compiled from: VectorPainter.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static <T> T getOrDefault(@NotNull VectorConfig vectorConfig, @NotNull VectorProperty<T> property, T t10) {
            Intrinsics.checkNotNullParameter(property, "property");
            return (T) VectorConfig.super.getOrDefault(property, t10);
        }
    }

    default <T> T getOrDefault(@NotNull VectorProperty<T> property, T t10) {
        Intrinsics.checkNotNullParameter(property, "property");
        return t10;
    }
}
