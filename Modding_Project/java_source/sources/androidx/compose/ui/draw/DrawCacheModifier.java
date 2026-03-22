package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DrawModifier.kt */
@Metadata
/* loaded from: classes.dex */
public interface DrawCacheModifier extends DrawModifier {

    /* compiled from: DrawModifier.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(@NotNull DrawCacheModifier drawCacheModifier, @NotNull Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return DrawCacheModifier.super.all(predicate);
        }

        @Deprecated
        public static boolean any(@NotNull DrawCacheModifier drawCacheModifier, @NotNull Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return DrawCacheModifier.super.any(predicate);
        }

        @Deprecated
        public static <R> R foldIn(@NotNull DrawCacheModifier drawCacheModifier, R r10, @NotNull Function2<? super R, ? super Modifier.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) DrawCacheModifier.super.foldIn(r10, operation);
        }

        @Deprecated
        public static <R> R foldOut(@NotNull DrawCacheModifier drawCacheModifier, R r10, @NotNull Function2<? super Modifier.Element, ? super R, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) DrawCacheModifier.super.foldOut(r10, operation);
        }

        @Deprecated
        @NotNull
        public static Modifier then(@NotNull DrawCacheModifier drawCacheModifier, @NotNull Modifier other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return DrawCacheModifier.super.then(other);
        }
    }

    void onBuildCache(@NotNull BuildDrawCacheParams buildDrawCacheParams);
}
