package com.google.android.flexbox;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
/* loaded from: classes4.dex */
public class FlexboxItemDecoration extends RecyclerView.ItemDecoration {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f19481c = {16843284};

    /* renamed from: a  reason: collision with root package name */
    private Drawable f19482a;

    /* renamed from: b  reason: collision with root package name */
    private int f19483b;

    private void a(Canvas canvas, RecyclerView recyclerView) {
        int top;
        int intrinsicHeight;
        int left;
        int right;
        int i10;
        int i11;
        int i12;
        if (!d()) {
            return;
        }
        FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) recyclerView.getLayoutManager();
        int flexDirection = flexboxLayoutManager.getFlexDirection();
        int left2 = recyclerView.getLeft() - recyclerView.getPaddingLeft();
        int right2 = recyclerView.getRight() + recyclerView.getPaddingRight();
        int childCount = recyclerView.getChildCount();
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = recyclerView.getChildAt(i13);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            if (flexDirection == 3) {
                intrinsicHeight = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                top = this.f19482a.getIntrinsicHeight() + intrinsicHeight;
            } else {
                top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                intrinsicHeight = top - this.f19482a.getIntrinsicHeight();
            }
            if (flexboxLayoutManager.j()) {
                if (flexboxLayoutManager.isLayoutRtl()) {
                    i11 = Math.min(childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + this.f19482a.getIntrinsicWidth(), right2);
                    i12 = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    this.f19482a.setBounds(i12, intrinsicHeight, i11, top);
                    this.f19482a.draw(canvas);
                } else {
                    left = Math.max((childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f19482a.getIntrinsicWidth(), left2);
                    right = childAt.getRight();
                    i10 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                }
            } else {
                left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                right = childAt.getRight();
                i10 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            }
            int i14 = left;
            i11 = right + i10;
            i12 = i14;
            this.f19482a.setBounds(i12, intrinsicHeight, i11, top);
            this.f19482a.draw(canvas);
        }
    }

    private void b(Canvas canvas, RecyclerView recyclerView) {
        int left;
        int intrinsicWidth;
        int max;
        int bottom;
        int i10;
        int i11;
        if (!e()) {
            return;
        }
        FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) recyclerView.getLayoutManager();
        int top = recyclerView.getTop() - recyclerView.getPaddingTop();
        int bottom2 = recyclerView.getBottom() + recyclerView.getPaddingBottom();
        int childCount = recyclerView.getChildCount();
        int flexDirection = flexboxLayoutManager.getFlexDirection();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = recyclerView.getChildAt(i12);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            if (flexboxLayoutManager.isLayoutRtl()) {
                intrinsicWidth = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                left = this.f19482a.getIntrinsicWidth() + intrinsicWidth;
            } else {
                left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                intrinsicWidth = left - this.f19482a.getIntrinsicWidth();
            }
            if (flexboxLayoutManager.j()) {
                max = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                bottom = childAt.getBottom();
                i10 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            } else if (flexDirection == 3) {
                int min = Math.min(childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + this.f19482a.getIntrinsicHeight(), bottom2);
                max = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                i11 = min;
                this.f19482a.setBounds(intrinsicWidth, max, left, i11);
                this.f19482a.draw(canvas);
            } else {
                max = Math.max((childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f19482a.getIntrinsicHeight(), top);
                bottom = childAt.getBottom();
                i10 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            }
            i11 = bottom + i10;
            this.f19482a.setBounds(intrinsicWidth, max, left, i11);
            this.f19482a.draw(canvas);
        }
    }

    private boolean c(int i10, List<b> list, FlexboxLayoutManager flexboxLayoutManager) {
        int H = flexboxLayoutManager.H(i10);
        if ((H != -1 && H < flexboxLayoutManager.getFlexLinesInternal().size() && flexboxLayoutManager.getFlexLinesInternal().get(H).f19580o == i10) || i10 == 0) {
            return true;
        }
        if (list.size() != 0 && list.get(list.size() - 1).f19581p == i10 - 1) {
            return true;
        }
        return false;
    }

    private boolean d() {
        if ((this.f19483b & 1) > 0) {
            return true;
        }
        return false;
    }

    private boolean e() {
        if ((this.f19483b & 2) > 0) {
            return true;
        }
        return false;
    }

    private void f(Rect rect, int i10, FlexboxLayoutManager flexboxLayoutManager, List<b> list) {
        if (list.size() == 0 || flexboxLayoutManager.H(i10) == 0) {
            return;
        }
        if (flexboxLayoutManager.j()) {
            if (!d()) {
                rect.top = 0;
                rect.bottom = 0;
                return;
            }
            rect.top = this.f19482a.getIntrinsicHeight();
            rect.bottom = 0;
        } else if (!e()) {
        } else {
            if (flexboxLayoutManager.isLayoutRtl()) {
                rect.right = this.f19482a.getIntrinsicWidth();
                rect.left = 0;
                return;
            }
            rect.left = this.f19482a.getIntrinsicWidth();
            rect.right = 0;
        }
    }

    private void g(Rect rect, int i10, FlexboxLayoutManager flexboxLayoutManager, List<b> list, int i11) {
        if (c(i10, list, flexboxLayoutManager)) {
            return;
        }
        if (flexboxLayoutManager.j()) {
            if (!e()) {
                rect.left = 0;
                rect.right = 0;
            } else if (flexboxLayoutManager.isLayoutRtl()) {
                rect.right = this.f19482a.getIntrinsicWidth();
                rect.left = 0;
            } else {
                rect.left = this.f19482a.getIntrinsicWidth();
                rect.right = 0;
            }
        } else if (!d()) {
            rect.top = 0;
            rect.bottom = 0;
        } else if (i11 == 3) {
            rect.bottom = this.f19482a.getIntrinsicHeight();
            rect.top = 0;
        } else {
            rect.top = this.f19482a.getIntrinsicHeight();
            rect.bottom = 0;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition == 0) {
            return;
        }
        if (!d() && !e()) {
            rect.set(0, 0, 0, 0);
            return;
        }
        FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) recyclerView.getLayoutManager();
        List<b> G = flexboxLayoutManager.G();
        g(rect, childAdapterPosition, flexboxLayoutManager, G, flexboxLayoutManager.getFlexDirection());
        f(rect, childAdapterPosition, flexboxLayoutManager, G);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        a(canvas, recyclerView);
        b(canvas, recyclerView);
    }
}
