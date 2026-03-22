package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {
    private View mActionBarView;
    Drawable mBackground;
    private View mContextView;
    private int mHeight;
    boolean mIsSplit;
    boolean mIsStacked;
    private boolean mIsTransitioning;
    Drawable mSplitBackground;
    Drawable mStackedBackground;
    private View mTabContainer;

    @RequiresApi(21)
    /* loaded from: classes.dex */
    private static class Api21Impl {
        private Api21Impl() {
        }

        public static void invalidateOutline(ActionBarContainer actionBarContainer) {
            actionBarContainer.invalidateOutline();
        }
    }

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    private int getMeasuredHeightWithMargins(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    private boolean isCollapsed(View view) {
        if (view != null && view.getVisibility() != 8 && view.getMeasuredHeight() != 0) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mBackground;
        if (drawable != null && drawable.isStateful()) {
            this.mBackground.setState(getDrawableState());
        }
        Drawable drawable2 = this.mStackedBackground;
        if (drawable2 != null && drawable2.isStateful()) {
            this.mStackedBackground.setState(getDrawableState());
        }
        Drawable drawable3 = this.mSplitBackground;
        if (drawable3 != null && drawable3.isStateful()) {
            this.mSplitBackground.setState(getDrawableState());
        }
    }

    public View getTabContainer() {
        return this.mTabContainer;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.mBackground;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.mStackedBackground;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.mSplitBackground;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mActionBarView = findViewById(R.id.action_bar);
        this.mContextView = findViewById(R.id.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.mIsTransitioning && !super.onInterceptTouchEvent(motionEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean z11;
        Drawable drawable;
        super.onLayout(z10, i10, i11, i12, i13);
        View view = this.mTabContainer;
        boolean z12 = true;
        boolean z13 = false;
        if (view != null && view.getVisibility() != 8) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            int i14 = ((FrameLayout.LayoutParams) view.getLayoutParams()).bottomMargin;
            view.layout(i10, (measuredHeight - view.getMeasuredHeight()) - i14, i12, measuredHeight - i14);
        }
        if (this.mIsSplit) {
            Drawable drawable2 = this.mSplitBackground;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
            z12 = z13;
        } else {
            if (this.mBackground != null) {
                if (this.mActionBarView.getVisibility() == 0) {
                    this.mBackground.setBounds(this.mActionBarView.getLeft(), this.mActionBarView.getTop(), this.mActionBarView.getRight(), this.mActionBarView.getBottom());
                } else {
                    View view2 = this.mContextView;
                    if (view2 != null && view2.getVisibility() == 0) {
                        this.mBackground.setBounds(this.mContextView.getLeft(), this.mContextView.getTop(), this.mContextView.getRight(), this.mContextView.getBottom());
                    } else {
                        this.mBackground.setBounds(0, 0, 0, 0);
                    }
                }
                z13 = true;
            }
            this.mIsStacked = z11;
            if (z11 && (drawable = this.mStackedBackground) != null) {
                drawable.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            z12 = z13;
        }
        if (z12) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        if (this.mActionBarView == null && View.MeasureSpec.getMode(i11) == Integer.MIN_VALUE && (i14 = this.mHeight) >= 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(Math.min(i14, View.MeasureSpec.getSize(i11)), Integer.MIN_VALUE);
        }
        super.onMeasure(i10, i11);
        if (this.mActionBarView == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i11);
        View view = this.mTabContainer;
        if (view != null && view.getVisibility() != 8 && mode != 1073741824) {
            if (!isCollapsed(this.mActionBarView)) {
                i12 = getMeasuredHeightWithMargins(this.mActionBarView);
            } else if (!isCollapsed(this.mContextView)) {
                i12 = getMeasuredHeightWithMargins(this.mContextView);
            } else {
                i12 = 0;
            }
            if (mode == Integer.MIN_VALUE) {
                i13 = View.MeasureSpec.getSize(i11);
            } else {
                i13 = Integer.MAX_VALUE;
            }
            setMeasuredDimension(getMeasuredWidth(), Math.min(i12 + getMeasuredHeightWithMargins(this.mTabContainer), i13));
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.mBackground;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.mBackground);
        }
        this.mBackground = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.mActionBarView;
            if (view != null) {
                this.mBackground.setBounds(view.getLeft(), this.mActionBarView.getTop(), this.mActionBarView.getRight(), this.mActionBarView.getBottom());
            }
        }
        boolean z10 = false;
        if (!this.mIsSplit ? !(this.mBackground != null || this.mStackedBackground != null) : this.mSplitBackground == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        invalidate();
        Api21Impl.invalidateOutline(this);
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.mSplitBackground;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.mSplitBackground);
        }
        this.mSplitBackground = drawable;
        boolean z10 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.mIsSplit && (drawable2 = this.mSplitBackground) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.mIsSplit ? !(this.mBackground != null || this.mStackedBackground != null) : this.mSplitBackground == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        invalidate();
        Api21Impl.invalidateOutline(this);
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.mStackedBackground;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.mStackedBackground);
        }
        this.mStackedBackground = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.mIsStacked && (drawable2 = this.mStackedBackground) != null) {
                drawable2.setBounds(this.mTabContainer.getLeft(), this.mTabContainer.getTop(), this.mTabContainer.getRight(), this.mTabContainer.getBottom());
            }
        }
        boolean z10 = false;
        if (!this.mIsSplit ? !(this.mBackground != null || this.mStackedBackground != null) : this.mSplitBackground == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        invalidate();
        Api21Impl.invalidateOutline(this);
    }

    public void setTabContainer(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.mTabContainer;
        if (view != null) {
            removeView(view);
        }
        this.mTabContainer = scrollingTabContainerView;
        if (scrollingTabContainerView != null) {
            addView(scrollingTabContainerView);
            ViewGroup.LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            scrollingTabContainerView.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z10) {
        int i10;
        this.mIsTransitioning = z10;
        if (z10) {
            i10 = 393216;
        } else {
            i10 = 262144;
        }
        setDescendantFocusability(i10);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        boolean z10;
        super.setVisibility(i10);
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        Drawable drawable = this.mBackground;
        if (drawable != null) {
            drawable.setVisible(z10, false);
        }
        Drawable drawable2 = this.mStackedBackground;
        if (drawable2 != null) {
            drawable2.setVisible(z10, false);
        }
        Drawable drawable3 = this.mSplitBackground;
        if (drawable3 != null) {
            drawable3.setVisible(z10, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(@NonNull Drawable drawable) {
        if ((drawable == this.mBackground && !this.mIsSplit) || ((drawable == this.mStackedBackground && this.mIsStacked) || ((drawable == this.mSplitBackground && this.mIsSplit) || super.verifyDrawable(drawable)))) {
            return true;
        }
        return false;
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBackground(new ActionBarBackgroundDrawable(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBar);
        this.mBackground = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_background);
        this.mStackedBackground = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_backgroundStacked);
        this.mHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionBar_height, -1);
        boolean z10 = true;
        if (getId() == R.id.split_action_bar) {
            this.mIsSplit = true;
            this.mSplitBackground = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        if (!this.mIsSplit ? this.mBackground != null || this.mStackedBackground != null : this.mSplitBackground != null) {
            z10 = false;
        }
        setWillNotDraw(z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i10) {
        if (i10 != 0) {
            return super.startActionModeForChild(view, callback, i10);
        }
        return null;
    }
}
