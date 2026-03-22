package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.activity.subs.HomeDiscountSubsFloatView;
import com.startshorts.androidplayer.ui.activity.subs.HomeTurboLinkFloatView;
import com.startshorts.androidplayer.ui.view.main.ContinuePlayLayout;
import com.startshorts.androidplayer.ui.view.main.tab.MainTabLayout;
/* loaded from: classes6.dex */
public class ActivityMainBindingImpl extends ActivityMainBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38370i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f38371j;

    /* renamed from: h  reason: collision with root package name */
    private long f38372h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38371j = sparseIntArray;
        sparseIntArray.put(R$id.view_pager, 1);
        sparseIntArray.put(R$id.tab_layout, 2);
        sparseIntArray.put(R$id.home_discount_subs_float_view, 3);
        sparseIntArray.put(R$id.home_turbo_link_float_view, 4);
        sparseIntArray.put(R$id.tab_layout_touch_view, 5);
        sparseIntArray.put(R$id.continue_play_layout, 6);
    }

    public ActivityMainBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f38370i, f38371j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38372h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38372h != 0) {
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f38372h = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        return true;
    }

    private ActivityMainBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ContinuePlayLayout) objArr[6], (HomeDiscountSubsFloatView) objArr[3], (HomeTurboLinkFloatView) objArr[4], (ConstraintLayout) objArr[0], (MainTabLayout) objArr[2], (View) objArr[5], (ViewPager2) objArr[1]);
        this.f38372h = -1L;
        this.f38366d.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
