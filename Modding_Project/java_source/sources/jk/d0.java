package jk;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ViewPager2Ext.kt */
@Metadata
/* loaded from: classes7.dex */
public final class d0 {
    public static final void b(@NotNull final ViewPager2 viewPager2, final int i10) {
        RecyclerView recyclerView;
        Intrinsics.checkNotNullParameter(viewPager2, "<this>");
        RecyclerView.Adapter adapter = viewPager2.getAdapter();
        if (adapter == null) {
            return;
        }
        if (i10 >= 0 && i10 < adapter.getItemCount()) {
            View childAt = viewPager2.getChildAt(0);
            if (childAt instanceof RecyclerView) {
                recyclerView = (RecyclerView) childAt;
            } else {
                recyclerView = null;
            }
            if (recyclerView == null) {
                return;
            }
            if (recyclerView.getScrollState() != 0) {
                recyclerView.stopScroll();
            }
            RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
            recyclerView.setItemAnimator(null);
            recyclerView.scrollToPosition(i10);
            recyclerView.setItemAnimator(itemAnimator);
            viewPager2.post(new Runnable() { // from class: jk.c0
                @Override // java.lang.Runnable
                public final void run() {
                    d0.c(ViewPager2.this, i10);
                }
            });
            return;
        }
        viewPager2.setCurrentItem(i10, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(ViewPager2 viewPager2, int i10) {
        RecyclerView.Adapter adapter = viewPager2.getAdapter();
        if (adapter == null) {
            return;
        }
        int itemCount = adapter.getItemCount();
        if (i10 >= 0 && i10 < itemCount && viewPager2.getCurrentItem() != i10) {
            viewPager2.setCurrentItem(i10, false);
        }
    }
}
