package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import androidx.viewpager2.widget.ViewPager2;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.TabView;
import com.startshorts.androidplayer.ui.view.main.NewUserRecommendLayout;
import com.startshorts.androidplayer.ui.view.search.HomeSearchBarView;
/* loaded from: classes6.dex */
public class FragmentDiscoverTabBindingImpl extends FragmentDiscoverTabBinding {
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39484l = null;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private static final SparseIntArray f39485m;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private final ConstraintLayout f39486j;

    /* renamed from: k  reason: collision with root package name */
    private long f39487k;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39485m = sparseIntArray;
        sparseIntArray.put(R$id.view_pager, 1);
        sparseIntArray.put(R$id.bg_search_bar_v, 2);
        sparseIntArray.put(R$id.search_bar, 3);
        sparseIntArray.put(R$id.tab_view, 4);
        sparseIntArray.put(R$id.vip_box_viewstub, 5);
        sparseIntArray.put(R$id.reward_box_viewstub, 6);
        sparseIntArray.put(R$id.page_state_view, 7);
        sparseIntArray.put(R$id.act_bottom_float_viewstub, 8);
        sparseIntArray.put(R$id.sale_layout, 9);
    }

    public FragmentDiscoverTabBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f39484l, f39485m));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39487k = 0L;
        }
        if (this.f39475a.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39475a.getBinding());
        }
        if (this.f39478d.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39478d.getBinding());
        }
        if (this.f39483i.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39483i.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39487k != 0) {
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
            this.f39487k = 1L;
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

    private FragmentDiscoverTabBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, new ViewStubProxy((ViewStub) objArr[8]), (View) objArr[2], (StateViewGroup) objArr[7], new ViewStubProxy((ViewStub) objArr[6]), (NewUserRecommendLayout) objArr[9], (HomeSearchBarView) objArr[3], (TabView) objArr[4], (ViewPager2) objArr[1], new ViewStubProxy((ViewStub) objArr[5]));
        this.f39487k = -1L;
        this.f39475a.setContainingBinding(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39486j = constraintLayout;
        constraintLayout.setTag(null);
        this.f39478d.setContainingBinding(this);
        this.f39483i.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
