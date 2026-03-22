package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.annotation.RequiresApi;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.R;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FragmentContainerView.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FragmentContainerView extends FrameLayout {
    @Nullable
    private View.OnApplyWindowInsetsListener applyWindowInsetsListener;
    @NotNull
    private final List<View> disappearingFragmentChildren;
    private boolean drawDisappearingViewsFirst;
    @NotNull
    private final List<View> transitioningFragmentViews;

    /* compiled from: FragmentContainerView.kt */
    @RequiresApi(20)
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Api20Impl {
        @NotNull
        public static final Api20Impl INSTANCE = new Api20Impl();

        private Api20Impl() {
        }

        @NotNull
        public final WindowInsets onApplyWindowInsets(@NotNull View.OnApplyWindowInsetsListener onApplyWindowInsetsListener, @NotNull View v10, @NotNull WindowInsets insets) {
            Intrinsics.checkNotNullParameter(onApplyWindowInsetsListener, "onApplyWindowInsetsListener");
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(insets, "insets");
            WindowInsets onApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(v10, insets);
            Intrinsics.checkNotNullExpressionValue(onApplyWindowInsets, "onApplyWindowInsetsListe…lyWindowInsets(v, insets)");
            return onApplyWindowInsets;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void addDisappearingFragmentView(View view) {
        if (this.transitioningFragmentViews.contains(view)) {
            this.disappearingFragmentChildren.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(@NotNull View child, int i10, @Nullable ViewGroup.LayoutParams layoutParams) {
        Intrinsics.checkNotNullParameter(child, "child");
        if (FragmentManager.getViewFragment(child) != null) {
            super.addView(child, i10, layoutParams);
            return;
        }
        throw new IllegalStateException(("Views added to a FragmentContainerView must be associated with a Fragment. View " + child + " is not associated with a Fragment.").toString());
    }

    @Override // android.view.ViewGroup, android.view.View
    @RequiresApi(20)
    @NotNull
    public WindowInsets dispatchApplyWindowInsets(@NotNull WindowInsets insets) {
        WindowInsetsCompat onApplyWindowInsets;
        Intrinsics.checkNotNullParameter(insets, "insets");
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(insets);
        Intrinsics.checkNotNullExpressionValue(windowInsetsCompat, "toWindowInsetsCompat(insets)");
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.applyWindowInsetsListener;
        if (onApplyWindowInsetsListener != null) {
            Api20Impl api20Impl = Api20Impl.INSTANCE;
            Intrinsics.checkNotNull(onApplyWindowInsetsListener);
            onApplyWindowInsets = WindowInsetsCompat.toWindowInsetsCompat(api20Impl.onApplyWindowInsets(onApplyWindowInsetsListener, this, insets));
        } else {
            onApplyWindowInsets = ViewCompat.onApplyWindowInsets(this, windowInsetsCompat);
        }
        Intrinsics.checkNotNullExpressionValue(onApplyWindowInsets, "if (applyWindowInsetsLis…, insetsCompat)\n        }");
        if (!onApplyWindowInsets.isConsumed()) {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                ViewCompat.dispatchApplyWindowInsets(getChildAt(i10), onApplyWindowInsets);
            }
        }
        return insets;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.drawDisappearingViewsFirst) {
            for (View view : this.disappearingFragmentChildren) {
                super.drawChild(canvas, view, getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(@NotNull Canvas canvas, @NotNull View child, long j10) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(child, "child");
        if (this.drawDisappearingViewsFirst && !this.disappearingFragmentChildren.isEmpty() && this.disappearingFragmentChildren.contains(child)) {
            return false;
        }
        return super.drawChild(canvas, child, j10);
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.transitioningFragmentViews.remove(view);
        if (this.disappearingFragmentChildren.remove(view)) {
            this.drawDisappearingViewsFirst = true;
        }
        super.endViewTransition(view);
    }

    public final <F extends Fragment> F getFragment() {
        return (F) FragmentManager.findFragmentManager(this).findFragmentById(getId());
    }

    @Override // android.view.View
    @RequiresApi(20)
    @NotNull
    public WindowInsets onApplyWindowInsets(@NotNull WindowInsets insets) {
        Intrinsics.checkNotNullParameter(insets, "insets");
        return insets;
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (-1 < childCount) {
                View view = getChildAt(childCount);
                Intrinsics.checkNotNullExpressionValue(view, "view");
                addDisappearingFragmentView(view);
            } else {
                super.removeAllViewsInLayout();
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        addDisappearingFragmentView(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i10) {
        View view = getChildAt(i10);
        Intrinsics.checkNotNullExpressionValue(view, "view");
        addDisappearingFragmentView(view);
        super.removeViewAt(i10);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        addDisappearingFragmentView(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i10, int i11) {
        int i12 = i10 + i11;
        for (int i13 = i10; i13 < i12; i13++) {
            View view = getChildAt(i13);
            Intrinsics.checkNotNullExpressionValue(view, "view");
            addDisappearingFragmentView(view);
        }
        super.removeViews(i10, i11);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i10, int i11) {
        int i12 = i10 + i11;
        for (int i13 = i10; i13 < i12; i13++) {
            View view = getChildAt(i13);
            Intrinsics.checkNotNullExpressionValue(view, "view");
            addDisappearingFragmentView(view);
        }
        super.removeViewsInLayout(i10, i11);
    }

    public final void setDrawDisappearingViewsLast(boolean z10) {
        this.drawDisappearingViewsFirst = z10;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(@Nullable LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(@NotNull View.OnApplyWindowInsetsListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.applyWindowInsetsListener = listener;
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view.getParent() == this) {
            this.transitioningFragmentViews.add(view);
        }
        super.startViewTransition(view);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.disappearingFragmentChildren = new ArrayList();
        this.transitioningFragmentViews = new ArrayList();
        this.drawDisappearingViewsFirst = true;
    }

    public /* synthetic */ FragmentContainerView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        this.disappearingFragmentChildren = new ArrayList();
        this.transitioningFragmentViews = new ArrayList();
        this.drawDisappearingViewsFirst = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            int[] FragmentContainerView = R.styleable.FragmentContainerView;
            Intrinsics.checkNotNullExpressionValue(FragmentContainerView, "FragmentContainerView");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, FragmentContainerView, 0, 0);
            if (classAttribute == null) {
                classAttribute = obtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_name);
                str = "android:name";
            } else {
                str = "class";
            }
            obtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + classAttribute + '\"');
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(@NotNull Context context, @NotNull AttributeSet attrs, @NotNull FragmentManager fm2) {
        super(context, attrs);
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        Intrinsics.checkNotNullParameter(fm2, "fm");
        this.disappearingFragmentChildren = new ArrayList();
        this.transitioningFragmentViews = new ArrayList();
        this.drawDisappearingViewsFirst = true;
        String classAttribute = attrs.getClassAttribute();
        int[] FragmentContainerView = R.styleable.FragmentContainerView;
        Intrinsics.checkNotNullExpressionValue(FragmentContainerView, "FragmentContainerView");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, FragmentContainerView, 0, 0);
        classAttribute = classAttribute == null ? obtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_name) : classAttribute;
        String string = obtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_tag);
        obtainStyledAttributes.recycle();
        int id2 = getId();
        Fragment findFragmentById = fm2.findFragmentById(id2);
        if (classAttribute != null && findFragmentById == null) {
            if (id2 == -1) {
                if (string != null) {
                    str = " with tag " + string;
                } else {
                    str = "";
                }
                throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + classAttribute + str);
            }
            Fragment instantiate = fm2.getFragmentFactory().instantiate(context.getClassLoader(), classAttribute);
            Intrinsics.checkNotNullExpressionValue(instantiate, "fm.fragmentFactory.insta…ontext.classLoader, name)");
            instantiate.onInflate(context, attrs, (Bundle) null);
            fm2.beginTransaction().setReorderingAllowed(true).add(this, instantiate, string).commitNowAllowingStateLoss();
        }
        fm2.onContainerAvailable(this);
    }
}
