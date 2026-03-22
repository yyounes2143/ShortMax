package lj;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewParent;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import androidx.viewpager.widget.ViewPager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewUtils.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f62232a = new a();

    private a() {
    }

    @Nullable
    public final Rect a(@Nullable View view, @Nullable View view2) {
        View view3 = null;
        if (view == null || view2 == null) {
            return null;
        }
        Context context = view2.getContext();
        if (context instanceof Activity) {
            view3 = ((Activity) context).getWindow().getDecorView();
        }
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        if (view2 == view) {
            view2.getHitRect(rect);
            return rect;
        }
        View view4 = view2;
        while (view4 != view3 && view4 != view) {
            view4.getHitRect(rect2);
            rect.left += rect2.left;
            rect.top += rect2.top;
            ViewParent parent = view4.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
            view4 = (View) parent;
            if (view4.getParent() instanceof ScrollView) {
                ViewParent parent2 = view4.getParent();
                Intrinsics.checkNotNull(parent2, "null cannot be cast to non-null type android.widget.ScrollView");
                rect.top -= ((ScrollView) parent2).getScrollY();
            }
            if (view4.getParent() instanceof HorizontalScrollView) {
                ViewParent parent3 = view4.getParent();
                Intrinsics.checkNotNull(parent3, "null cannot be cast to non-null type android.widget.HorizontalScrollView");
                rect.left -= ((HorizontalScrollView) parent3).getScrollX();
            }
            if (view4.getParent() != null && (view4.getParent() instanceof ViewPager)) {
                ViewParent parent4 = view4.getParent();
                Intrinsics.checkNotNull(parent4, "null cannot be cast to non-null type android.view.View");
                view4 = (View) parent4;
            }
        }
        rect.right = rect.left + view2.getMeasuredWidth();
        rect.bottom = rect.top + view2.getMeasuredHeight();
        return rect;
    }
}
