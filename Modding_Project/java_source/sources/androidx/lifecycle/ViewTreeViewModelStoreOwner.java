package androidx.lifecycle;

import android.view.View;
import android.view.ViewParent;
import androidx.core.viewtree.ViewTree;
import androidx.lifecycle.viewmodel.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewTreeViewModelStoreOwner.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ViewTreeViewModelStoreOwner {
    @Nullable
    public static final ViewModelStoreOwner get(@NotNull View view) {
        ViewModelStoreOwner viewModelStoreOwner;
        Intrinsics.checkNotNullParameter(view, "<this>");
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_view_model_store_owner);
            if (tag instanceof ViewModelStoreOwner) {
                viewModelStoreOwner = (ViewModelStoreOwner) tag;
            } else {
                viewModelStoreOwner = null;
            }
            if (viewModelStoreOwner != null) {
                return viewModelStoreOwner;
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

    public static final void set(@NotNull View view, @Nullable ViewModelStoreOwner viewModelStoreOwner) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setTag(R.id.view_tree_view_model_store_owner, viewModelStoreOwner);
    }
}
