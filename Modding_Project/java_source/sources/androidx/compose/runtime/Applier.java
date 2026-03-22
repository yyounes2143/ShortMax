package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Applier.kt */
@Metadata
/* loaded from: classes.dex */
public interface Applier<N> {

    /* compiled from: Applier.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static <N> void apply(@NotNull Applier<N> applier, @NotNull Function2<? super N, Object, Unit> function2, @Nullable Object obj) {
            Applier.super.apply(function2, obj);
        }

        @Deprecated
        public static <N> void onBeginChanges(@NotNull Applier<N> applier) {
            Applier.super.onBeginChanges();
        }

        @Deprecated
        public static <N> void onEndChanges(@NotNull Applier<N> applier) {
            Applier.super.onEndChanges();
        }

        @Deprecated
        public static <N> void reuse(@NotNull Applier<N> applier) {
            Applier.super.reuse();
        }
    }

    default void apply(@NotNull Function2<? super N, Object, Unit> function2, @Nullable Object obj) {
        function2.invoke(getCurrent(), obj);
    }

    void clear();

    void down(N n10);

    N getCurrent();

    void insertBottomUp(int i10, N n10);

    void insertTopDown(int i10, N n10);

    void move(int i10, int i11, int i12);

    void remove(int i10, int i11);

    default void reuse() {
        ComposeNodeLifecycleCallback composeNodeLifecycleCallback;
        N current = getCurrent();
        if (current instanceof ComposeNodeLifecycleCallback) {
            composeNodeLifecycleCallback = (ComposeNodeLifecycleCallback) current;
        } else {
            composeNodeLifecycleCallback = null;
        }
        if (composeNodeLifecycleCallback != null) {
            composeNodeLifecycleCallback.onReuse();
        }
    }

    void up();

    default void onBeginChanges() {
    }

    default void onEndChanges() {
    }
}
