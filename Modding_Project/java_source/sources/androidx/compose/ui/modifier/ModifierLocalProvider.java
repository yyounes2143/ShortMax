package androidx.compose.ui.modifier;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ModifierLocalProvider.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface ModifierLocalProvider<T> extends Modifier.Element {

    /* compiled from: ModifierLocalProvider.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static <T> boolean all(@NotNull ModifierLocalProvider<T> modifierLocalProvider, @NotNull Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return ModifierLocalProvider.super.all(predicate);
        }

        @Deprecated
        public static <T> boolean any(@NotNull ModifierLocalProvider<T> modifierLocalProvider, @NotNull Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return ModifierLocalProvider.super.any(predicate);
        }

        @Deprecated
        public static <T, R> R foldIn(@NotNull ModifierLocalProvider<T> modifierLocalProvider, R r10, @NotNull Function2<? super R, ? super Modifier.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) ModifierLocalProvider.super.foldIn(r10, operation);
        }

        @Deprecated
        public static <T, R> R foldOut(@NotNull ModifierLocalProvider<T> modifierLocalProvider, R r10, @NotNull Function2<? super Modifier.Element, ? super R, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) ModifierLocalProvider.super.foldOut(r10, operation);
        }

        @Deprecated
        @NotNull
        public static <T> Modifier then(@NotNull ModifierLocalProvider<T> modifierLocalProvider, @NotNull Modifier other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return ModifierLocalProvider.super.then(other);
        }
    }

    @NotNull
    ProvidableModifierLocal<T> getKey();

    T getValue();
}
