package fc;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ScrollView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.lang.reflect.Field;
/* compiled from: ScrollingUtil.java */
/* loaded from: classes5.dex */
public class c {
    private static int a(RecyclerView.LayoutParams layoutParams) {
        try {
            Field declaredField = RecyclerView.LayoutParams.class.getDeclaredField("mDecorInsets");
            declaredField.setAccessible(true);
            return ((Rect) declaredField.get(layoutParams)).top;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static boolean b(AbsListView absListView) {
        if (absListView == null || absListView.getAdapter() == null || absListView.getChildCount() <= 0 || absListView.getLastVisiblePosition() != ((ListAdapter) absListView.getAdapter()).getCount() - 1 || absListView.getChildAt(absListView.getChildCount() - 1).getBottom() > absListView.getMeasuredHeight()) {
            return false;
        }
        return true;
    }

    public static boolean c(AbsListView absListView) {
        int i10;
        if (absListView != null) {
            if (absListView.getChildCount() > 0) {
                i10 = absListView.getChildAt(0).getTop() - absListView.getPaddingTop();
            } else {
                i10 = 0;
            }
            if (absListView.getFirstVisiblePosition() == 0 && i10 == 0) {
                return true;
            }
        }
        return false;
    }

    public static boolean d(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager;
        if (recyclerView != null && (layoutManager = recyclerView.getLayoutManager()) != null && layoutManager.getItemCount() != 0) {
            if (layoutManager instanceof LinearLayoutManager) {
                View childAt = recyclerView.getChildAt(recyclerView.getChildCount() - 1);
                if (childAt != null && childAt.getMeasuredHeight() >= recyclerView.getMeasuredHeight()) {
                    return !ViewCompat.canScrollVertically(recyclerView, 1);
                }
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                if (linearLayoutManager.findLastCompletelyVisibleItemPosition() == linearLayoutManager.getItemCount() - 1) {
                    return true;
                }
            } else if (layoutManager instanceof StaggeredGridLayoutManager) {
                StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
                int[] findLastCompletelyVisibleItemPositions = staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(null);
                int itemCount = staggeredGridLayoutManager.getItemCount() - 1;
                for (int i10 : findLastCompletelyVisibleItemPositions) {
                    if (i10 == itemCount) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean e(RecyclerView recyclerView) {
        int i10;
        if (recyclerView != null) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager == null || layoutManager.getItemCount() == 0) {
                return true;
            }
            if (recyclerView.getChildCount() > 0) {
                View childAt = recyclerView.getChildAt(0);
                if (childAt != null && childAt.getMeasuredHeight() >= recyclerView.getMeasuredHeight()) {
                    return !ViewCompat.canScrollVertically(recyclerView, -1);
                }
                View childAt2 = recyclerView.getChildAt(0);
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt2.getLayoutParams();
                i10 = ((childAt2.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - a(layoutParams)) - recyclerView.getPaddingTop();
            } else {
                i10 = 0;
            }
            if (layoutManager instanceof LinearLayoutManager) {
                if (((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition() < 1 && i10 == 0) {
                    return true;
                }
            } else if ((layoutManager instanceof StaggeredGridLayoutManager) && ((StaggeredGridLayoutManager) layoutManager).findFirstCompletelyVisibleItemPositions(null)[0] < 1 && i10 == 0) {
                return true;
            }
        }
        return false;
    }

    public static boolean f(ViewGroup viewGroup) {
        View childAt = viewGroup.getChildAt(0);
        if (childAt == null || childAt.getMeasuredHeight() > viewGroup.getScrollY() + viewGroup.getHeight()) {
            return false;
        }
        return true;
    }

    public static boolean g(View view, int i10) {
        if (view instanceof AbsListView) {
            return b((AbsListView) view);
        }
        if (view instanceof RecyclerView) {
            return d((RecyclerView) view);
        }
        if (view instanceof WebView) {
            return i((WebView) view, i10);
        }
        if (view instanceof ViewGroup) {
            return f((ViewGroup) view);
        }
        return false;
    }

    public static boolean h(View view, int i10) {
        if (view instanceof AbsListView) {
            return c((AbsListView) view);
        }
        if (view instanceof RecyclerView) {
            return e((RecyclerView) view);
        }
        if (view != null && Math.abs(view.getScrollY()) <= i10 * 2) {
            return true;
        }
        return false;
    }

    public static boolean i(WebView webView, int i10) {
        if (webView != null && (webView.getContentHeight() * webView.getScale()) - (webView.getHeight() + webView.getScrollY()) <= i10 * 2) {
            return true;
        }
        return false;
    }

    public static void j(View view, int i10) {
        if (view instanceof RecyclerView) {
            ((RecyclerView) view).scrollBy(0, i10);
        } else if (view instanceof ScrollView) {
            ((ScrollView) view).smoothScrollBy(0, i10);
        } else if (view instanceof AbsListView) {
            ((AbsListView) view).smoothScrollBy(i10, 0);
        } else {
            try {
                view.getClass().getDeclaredMethod("smoothScrollBy", Integer.class, Integer.class).invoke(view, 0, Integer.valueOf(i10));
            } catch (Exception unused) {
                view.scrollBy(0, i10);
            }
        }
    }
}
