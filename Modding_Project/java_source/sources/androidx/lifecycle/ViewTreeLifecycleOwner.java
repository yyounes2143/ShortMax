package androidx.lifecycle;

import android.view.View;
import android.view.ViewParent;
import androidx.core.viewtree.ViewTree;
import androidx.lifecycle.runtime.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewTreeLifecycleOwner.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ViewTreeLifecycleOwner {
    @Nullable
    public static final LifecycleOwner get(@NotNull View view) {
        LifecycleOwner lifecycleOwner;
        Intrinsics.checkNotNullParameter(view, "<this>");
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_lifecycle_owner);
            if (tag instanceof LifecycleOwner) {
                lifecycleOwner = (LifecycleOwner) tag;
            } else {
                lifecycleOwner = null;
            }
            if (lifecycleOwner != null) {
                return lifecycleOwner;
            }
            ViewParent parentOrViewTreeDisjointParent = ViewTree.getParentOrViewTreeDisjointParent(view);
            if (parentOrViewTreeDisjointParent instanceof View) {
                view = (View) parentOrViewTreeDisjointParent;
            } else {
                view = null;
            }
        }
        return null;
    }

    public static final void set(@NotNull View view, @Nullable LifecycleOwner lifecycleOwner) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setTag(R.id.view_tree_lifecycle_owner, lifecycleOwner);
    }
}
