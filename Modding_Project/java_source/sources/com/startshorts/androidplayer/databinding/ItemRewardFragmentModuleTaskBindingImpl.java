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
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemRewardFragmentModuleTaskBindingImpl extends ItemRewardFragmentModuleTaskBinding {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40730g = null;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final SparseIntArray f40731h;

    /* renamed from: f  reason: collision with root package name */
    private long f40732f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40731h = sparseIntArray;
        sparseIntArray.put(R$id.task_container_view, 1);
        sparseIntArray.put(R$id.task_state_view_group, 2);
        sparseIntArray.put(R$id.task_rv_viewstub, 3);
        sparseIntArray.put(R$id.fold_up, 4);
    }

    public ItemRewardFragmentModuleTaskBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f40730g, f40731h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40732f = 0L;
        }
        if (this.f40728d.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f40728d.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40732f != 0) {
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
            this.f40732f = 1L;
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

    private ItemRewardFragmentModuleTaskBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[4], (ConstraintLayout) objArr[0], (View) objArr[1], new ViewStubProxy((ViewStub) objArr[3]), (StateViewGroup) objArr[2]);
        this.f40732f = -1L;
        this.f40726b.setTag(null);
        this.f40728d.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
