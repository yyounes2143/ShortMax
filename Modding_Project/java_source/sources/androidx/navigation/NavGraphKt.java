package androidx.navigation;

import androidx.annotation.IdRes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: NavGraph.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NavGraphKt {
    public static final boolean contains(@NotNull NavGraph contains, @IdRes int i10) {
        Intrinsics.checkParameterIsNotNull(contains, "$this$contains");
        if (contains.findNode(i10) != null) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final NavDestination get(@NotNull NavGraph get, @IdRes int i10) {
        Intrinsics.checkParameterIsNotNull(get, "$this$get");
        NavDestination findNode = get.findNode(i10);
        if (findNode != null) {
            return findNode;
        }
        throw new IllegalArgumentException("No destination for " + i10 + " was found in " + get);
    }

    public static final void minusAssign(@NotNull NavGraph minusAssign, @NotNull NavDestination node) {
        Intrinsics.checkParameterIsNotNull(minusAssign, "$this$minusAssign");
        Intrinsics.checkParameterIsNotNull(node, "node");
        minusAssign.remove(node);
    }

    public static final void plusAssign(@NotNull NavGraph plusAssign, @NotNull NavDestination node) {
        Intrinsics.checkParameterIsNotNull(plusAssign, "$this$plusAssign");
        Intrinsics.checkParameterIsNotNull(node, "node");
        plusAssign.addDestination(node);
    }

    public static final void plusAssign(@NotNull NavGraph plusAssign, @NotNull NavGraph other) {
        Intrinsics.checkParameterIsNotNull(plusAssign, "$this$plusAssign");
        Intrinsics.checkParameterIsNotNull(other, "other");
        plusAssign.addAll(other);
    }
}
