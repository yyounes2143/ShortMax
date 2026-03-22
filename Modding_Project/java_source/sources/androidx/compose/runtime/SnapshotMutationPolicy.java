package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotMutationPolicy.kt */
@Metadata
/* loaded from: classes.dex */
public interface SnapshotMutationPolicy<T> {

    /* compiled from: SnapshotMutationPolicy.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        @Nullable
        public static <T> T merge(@NotNull SnapshotMutationPolicy<T> snapshotMutationPolicy, T t10, T t11, T t12) {
            return (T) SnapshotMutationPolicy.super.merge(t10, t11, t12);
        }
    }

    boolean equivalent(T t10, T t11);

    @Nullable
    default T merge(T t10, T t11, T t12) {
        return null;
    }
}
