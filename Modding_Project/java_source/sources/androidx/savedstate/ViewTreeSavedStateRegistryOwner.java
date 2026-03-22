package androidx.savedstate;

import android.view.View;
import android.view.ViewParent;
import androidx.core.viewtree.ViewTree;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewTreeSavedStateRegistryOwner.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ViewTreeSavedStateRegistryOwner {
    @Nullable
    public static final SavedStateRegistryOwner get(@NotNull View view) {
        SavedStateRegistryOwner savedStateRegistryOwner;
        Intrinsics.checkNotNullParameter(view, "<this>");
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_saved_state_registry_owner);
            if (tag instanceof SavedStateRegistryOwner) {
                savedStateRegistryOwner = (SavedStateRegistryOwner) tag;
            } else {
                savedStateRegistryOwner = null;
            }
            if (savedStateRegistryOwner != null) {
                return savedStateRegistryOwner;
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

    public static final void set(@NotNull View view, @Nullable SavedStateRegistryOwner savedStateRegistryOwner) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setTag(R.id.view_tree_saved_state_registry_owner, savedStateRegistryOwner);
    }
}
