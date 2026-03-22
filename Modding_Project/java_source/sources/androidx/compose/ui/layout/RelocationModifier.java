package androidx.compose.ui.layout;

import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RelocationModifier.kt */
@c
@ExperimentalComposeUiApi
@Metadata
/* loaded from: classes.dex */
public interface RelocationModifier extends Modifier.Element {

    /* compiled from: RelocationModifier.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static boolean all(@NotNull RelocationModifier relocationModifier, @NotNull Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return RelocationModifier.super.all(predicate);
        }

        @Deprecated
        public static boolean any(@NotNull RelocationModifier relocationModifier, @NotNull Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return RelocationModifier.super.any(predicate);
        }

        @Deprecated
        public static <R> R foldIn(@NotNull RelocationModifier relocationModifier, R r10, @NotNull Function2<? super R, ? super Modifier.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) RelocationModifier.super.foldIn(r10, operation);
        }

        @Deprecated
        public static <R> R foldOut(@NotNull RelocationModifier relocationModifier, R r10, @NotNull Function2<? super Modifier.Element, ? super R, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) RelocationModifier.super.foldOut(r10, operation);
        }

        @Deprecated
        @NotNull
        public static Modifier then(@NotNull RelocationModifier relocationModifier, @NotNull Modifier other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return RelocationModifier.super.then(other);
        }
    }

    @NotNull
    Rect computeDestination(@NotNull Rect rect, @NotNull LayoutCoordinates layoutCoordinates);

    @Nullable
    Object performRelocation(@NotNull Rect rect, @NotNull Rect rect2, @NotNull rs.c<? super Unit> cVar);
}
