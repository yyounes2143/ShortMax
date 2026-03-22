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
import com.hades.aar.pagestate.StateViewGroup;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.startshorts.androidplayer.R$id;
/* loaded from: classes6.dex */
public class FragmentDiscoverMoreCategoryFilterListBindingImpl extends FragmentDiscoverMoreCategoryFilterListBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39458f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f39459g;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final ConstraintLayout f39460d;

    /* renamed from: e  reason: collision with root package name */
    private long f39461e;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39459g = sparseIntArray;
        sparseIntArray.put(R$id.refresh_layout, 1);
        sparseIntArray.put(R$id.recycler_view_viewstub, 2);
        sparseIntArray.put(R$id.page_state_view, 3);
    }

    public FragmentDiscoverMoreCategoryFilterListBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f39458f, f39459g));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39461e = 0L;
        }
        if (this.f39456b.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39456b.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39461e != 0) {
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
            this.f39461e = 1L;
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

    private FragmentDiscoverMoreCategoryFilterListBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (StateViewGroup) objArr[3], new ViewStubProxy((ViewStub) objArr[2]), (TwinklingRefreshLayout) objArr[1]);
        this.f39461e = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39460d = constraintLayout;
        constraintLayout.setTag(null);
        this.f39456b.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
