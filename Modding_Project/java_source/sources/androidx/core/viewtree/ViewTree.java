package androidx.core.viewtree;

import android.view.View;
import android.view.ViewParent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewTree.kt */
@Metadata
/* loaded from: classes.dex */
public final class ViewTree {
    @Nullable
    public static final ViewParent getParentOrViewTreeDisjointParent(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewParent parent = view.getParent();
        if (parent != null) {
            return parent;
        }
        Object tag = view.getTag(R.id.view_tree_disjoint_parent);
        if (tag instanceof ViewParent) {
            return (ViewParent) tag;
        }
        return null;
    }

    public static final void setViewTreeDisjointParent(@NotNull View view, @Nullable ViewParent viewParent) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setTag(R.id.view_tree_disjoint_parent, viewParent);
    }
}
