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
public class FragmentRecentlyWatchedBindingImpl extends FragmentRecentlyWatchedBinding {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39611g = null;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final SparseIntArray f39612h;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final ConstraintLayout f39613e;

    /* renamed from: f  reason: collision with root package name */
    private long f39614f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39612h = sparseIntArray;
        sparseIntArray.put(R$id.refresh_layout, 1);
        sparseIntArray.put(R$id.recycler_view_viewstub, 2);
        sparseIntArray.put(R$id.edit_viewstub, 3);
        sparseIntArray.put(R$id.page_state_view, 4);
    }

    public FragmentRecentlyWatchedBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f39611g, f39612h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39614f = 0L;
        }
        if (this.f39607a.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39607a.getBinding());
        }
        if (this.f39609c.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39609c.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39614f != 0) {
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
            this.f39614f = 1L;
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

    private FragmentRecentlyWatchedBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, new ViewStubProxy((ViewStub) objArr[3]), (StateViewGroup) objArr[4], new ViewStubProxy((ViewStub) objArr[2]), (TwinklingRefreshLayout) objArr[1]);
        this.f39614f = -1L;
        this.f39607a.setContainingBinding(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39613e = constraintLayout;
        constraintLayout.setTag(null);
        this.f39609c.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
