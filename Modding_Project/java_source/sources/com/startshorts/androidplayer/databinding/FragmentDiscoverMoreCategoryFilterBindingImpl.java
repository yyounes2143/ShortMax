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
import com.startshorts.androidplayer.ui.view.base.TabView;
/* loaded from: classes6.dex */
public class FragmentDiscoverMoreCategoryFilterBindingImpl extends FragmentDiscoverMoreCategoryFilterBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39451e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f39452f;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f39453c;

    /* renamed from: d  reason: collision with root package name */
    private long f39454d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39452f = sparseIntArray;
        sparseIntArray.put(R$id.category_filter_tab_view, 1);
        sparseIntArray.put(R$id.view_pager, 2);
    }

    public FragmentDiscoverMoreCategoryFilterBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f39451e, f39452f));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39454d = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39454d != 0) {
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
            this.f39454d = 1L;
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

    private FragmentDiscoverMoreCategoryFilterBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TabView) objArr[1], (ViewPager2) objArr[2]);
        this.f39454d = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39453c = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
