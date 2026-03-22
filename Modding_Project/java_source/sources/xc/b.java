package xc;

import android.content.res.Resources;
import android.graphics.PointF;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.ScrollingView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
/* compiled from: SmartUtil.java */
/* loaded from: classes6.dex */
public class b implements Interpolator {

    /* renamed from: b  reason: collision with root package name */
    public static int f70437b = 0;

    /* renamed from: c  reason: collision with root package name */
    public static int f70438c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static float f70439d = Resources.getSystem().getDisplayMetrics().density;

    /* renamed from: e  reason: collision with root package name */
    private static final float f70440e;

    /* renamed from: f  reason: collision with root package name */
    private static final float f70441f;

    /* renamed from: a  reason: collision with root package name */
    private int f70442a;

    static {
        float k10 = 1.0f / k(1.0f);
        f70440e = k10;
        f70441f = 1.0f - (k10 * k(1.0f));
    }

    public b(int i10) {
        this.f70442a = i10;
    }

    public static boolean a(@NonNull View view, PointF pointF, boolean z10) {
        if (view.canScrollVertically(1) && view.getVisibility() == 0) {
            return false;
        }
        if ((view instanceof ViewGroup) && pointF != null && !f(view)) {
            ViewGroup viewGroup = (ViewGroup) view;
            PointF pointF2 = new PointF();
            for (int childCount = viewGroup.getChildCount(); childCount > 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount - 1);
                if (g(viewGroup, childAt, pointF.x, pointF.y, pointF2)) {
                    Object tag = childAt.getTag(uc.a.f68349a);
                    if ("fixed".equals(tag) || "fixed-top".equals(tag)) {
                        return false;
                    }
                    pointF.offset(pointF2.x, pointF2.y);
                    boolean a10 = a(childAt, pointF, z10);
                    pointF.offset(-pointF2.x, -pointF2.y);
                    return a10;
                }
            }
        }
        if (z10 || view.canScrollVertically(-1)) {
            return true;
        }
        return false;
    }

    public static boolean b(@NonNull View view, PointF pointF) {
        if (view.canScrollVertically(-1) && view.getVisibility() == 0) {
            return false;
        }
        if ((view instanceof ViewGroup) && pointF != null) {
            ViewGroup viewGroup = (ViewGroup) view;
            PointF pointF2 = new PointF();
            for (int childCount = viewGroup.getChildCount(); childCount > 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount - 1);
                if (g(viewGroup, childAt, pointF.x, pointF.y, pointF2)) {
                    Object tag = childAt.getTag(uc.a.f68349a);
                    if ("fixed".equals(tag) || "fixed-bottom".equals(tag)) {
                        return false;
                    }
                    pointF.offset(pointF2.x, pointF2.y);
                    boolean b10 = b(childAt, pointF);
                    pointF.offset(-pointF2.x, -pointF2.y);
                    return b10;
                }
            }
            return true;
        }
        return true;
    }

    public static int c(float f10) {
        return (int) ((f10 * f70439d) + 0.5f);
    }

    public static void d(View view, int i10) {
        if (view instanceof ScrollView) {
            ((ScrollView) view).fling(i10);
        } else if (view instanceof AbsListView) {
            ((AbsListView) view).fling(i10);
        } else if (view instanceof WebView) {
            ((WebView) view).flingScroll(0, i10);
        } else if (view instanceof NestedScrollView) {
            ((NestedScrollView) view).fling(i10);
        } else if (view instanceof RecyclerView) {
            ((RecyclerView) view).fling(0, i10);
        }
    }

    public static boolean e(View view) {
        if (view instanceof sc.a) {
            return false;
        }
        if (!f(view) && !(view instanceof ViewPager) && !(view instanceof NestedScrollingParent)) {
            return false;
        }
        return true;
    }

    public static boolean f(View view) {
        if (view instanceof sc.a) {
            return false;
        }
        if (!(view instanceof AbsListView) && !(view instanceof ScrollView) && !(view instanceof ScrollingView) && !(view instanceof WebView) && !(view instanceof NestedScrollingChild)) {
            return false;
        }
        return true;
    }

    public static boolean g(@NonNull View view, @NonNull View view2, float f10, float f11, PointF pointF) {
        boolean z10;
        if (view2.getVisibility() != 0) {
            return false;
        }
        float[] fArr = {f10, f11};
        fArr[0] = (view.getScrollX() - view2.getLeft()) + f10;
        float scrollY = fArr[1] + (view.getScrollY() - view2.getTop());
        fArr[1] = scrollY;
        float f12 = fArr[0];
        if (f12 >= 0.0f && scrollY >= 0.0f && f12 < view2.getWidth() && fArr[1] < view2.getHeight()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10 && pointF != null) {
            pointF.set(fArr[0] - f10, fArr[1] - f11);
        }
        return z10;
    }

    public static int h(View view) {
        int makeMeasureSpec;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(0, 0, layoutParams.width);
        int i10 = layoutParams.height;
        if (i10 > 0) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i10, 1073741824);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(childMeasureSpec, makeMeasureSpec);
        return view.getMeasuredHeight();
    }

    public static float i(int i10) {
        return i10 / f70439d;
    }

    public static void j(@NonNull AbsListView absListView, int i10) {
        absListView.scrollListBy(i10);
    }

    private static float k(float f10) {
        float f11 = f10 * 8.0f;
        if (f11 < 1.0f) {
            return f11 - (1.0f - ((float) Math.exp(-f11)));
        }
        return 0.36787945f + ((1.0f - ((float) Math.exp(1.0f - f11))) * 0.63212055f);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f10) {
        if (this.f70442a == f70438c) {
            float f11 = 1.0f - f10;
            return 1.0f - (f11 * f11);
        }
        float k10 = f70440e * k(f10);
        if (k10 > 0.0f) {
            return k10 + f70441f;
        }
        return k10;
    }
}
