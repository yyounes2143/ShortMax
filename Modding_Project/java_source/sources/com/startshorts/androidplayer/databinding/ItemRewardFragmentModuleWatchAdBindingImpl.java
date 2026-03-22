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
public class ItemRewardFragmentModuleWatchAdBindingImpl extends ItemRewardFragmentModuleWatchAdBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40739h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f40740i;

    /* renamed from: g  reason: collision with root package name */
    private long f40741g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40740i = sparseIntArray;
        sparseIntArray.put(R$id.watch_ad_title_tv, 1);
        sparseIntArray.put(R$id.watch_ad_value_tv, 2);
        sparseIntArray.put(R$id.watch_ad_bonus_rv_viewstub, 3);
        sparseIntArray.put(R$id.fold_up, 4);
        sparseIntArray.put(R$id.watch_ad_state_view_group, 5);
    }

    public ItemRewardFragmentModuleWatchAdBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f40739h, f40740i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40741g = 0L;
        }
        if (this.f40735c.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f40735c.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40741g != 0) {
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
            this.f40741g = 1L;
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

    private ItemRewardFragmentModuleWatchAdBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[4], (ConstraintLayout) objArr[0], new ViewStubProxy((ViewStub) objArr[3]), (StateViewGroup) objArr[5], (BaseTextView) objArr[1], (BaseTextView) objArr[2]);
        this.f40741g = -1L;
        this.f40734b.setTag(null);
        this.f40735c.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
