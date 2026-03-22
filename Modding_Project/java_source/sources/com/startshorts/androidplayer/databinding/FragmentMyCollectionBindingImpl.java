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
public class FragmentMyCollectionBindingImpl extends FragmentMyCollectionBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39521f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f39522g;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final ConstraintLayout f39523d;

    /* renamed from: e  reason: collision with root package name */
    private long f39524e;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39522g = sparseIntArray;
        sparseIntArray.put(R$id.refresh_layout, 1);
        sparseIntArray.put(R$id.recycler_view_viewstub, 2);
        sparseIntArray.put(R$id.page_state_view, 3);
    }

    public FragmentMyCollectionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f39521f, f39522g));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39524e = 0L;
        }
        if (this.f39519b.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39519b.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39524e != 0) {
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
            this.f39524e = 1L;
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

    private FragmentMyCollectionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (StateViewGroup) objArr[3], new ViewStubProxy((ViewStub) objArr[2]), (TwinklingRefreshLayout) objArr[1]);
        this.f39524e = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39523d = constraintLayout;
        constraintLayout.setTag(null);
        this.f39519b.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
