package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.Space;
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
public class ItemRewardFragmentModuleCheckInAndYourBonusBindingImpl extends ItemRewardFragmentModuleCheckInAndYourBonusBinding {
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40700u = null;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private static final SparseIntArray f40701v;

    /* renamed from: t  reason: collision with root package name */
    private long f40702t;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40701v = sparseIntArray;
        sparseIntArray.put(R$id.bg_header_coin_top_area, 1);
        sparseIntArray.put(R$id.toolbar_view, 2);
        sparseIntArray.put(R$id.navigation_iv, 3);
        sparseIntArray.put(R$id.toolbar_title_style_activity, 4);
        sparseIntArray.put(R$id.toolbar_title_style_fragment, 5);
        sparseIntArray.put(R$id.bonus_title_tv, 6);
        sparseIntArray.put(R$id.bonus_value_iv, 7);
        sparseIntArray.put(R$id.bonus_value_tv, 8);
        sparseIntArray.put(R$id.rewards_bg_view, 9);
        sparseIntArray.put(R$id.fold_up_module, 10);
        sparseIntArray.put(R$id.check_in_title_tv, 11);
        sparseIntArray.put(R$id.check_in_value_tv, 12);
        sparseIntArray.put(R$id.check_in_container_view, 13);
        sparseIntArray.put(R$id.check_in_rv_viewstub, 14);
        sparseIntArray.put(R$id.check_in_button_viewstub, 15);
        sparseIntArray.put(R$id.check_in_task_desc, 16);
        sparseIntArray.put(R$id.bottom_space, 17);
        sparseIntArray.put(R$id.check_in_state_view_group, 18);
    }

    public ItemRewardFragmentModuleCheckInAndYourBonusBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 19, f40700u, f40701v));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40702t = 0L;
        }
        if (this.f40686f.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f40686f.getBinding());
        }
        if (this.f40688h.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f40688h.getBinding());
        }
        if (this.f40693m.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f40693m.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40702t != 0) {
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
            this.f40702t = 1L;
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

    private ItemRewardFragmentModuleCheckInAndYourBonusBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (Space) objArr[1], (BaseTextView) objArr[6], (ImageView) objArr[7], (BaseTextView) objArr[8], (View) objArr[17], new ViewStubProxy((ViewStub) objArr[15]), (View) objArr[13], new ViewStubProxy((ViewStub) objArr[14]), (StateViewGroup) objArr[18], (BaseTextView) objArr[16], (BaseTextView) objArr[11], (BaseTextView) objArr[12], new ViewStubProxy((ViewStub) objArr[10]), (ImageView) objArr[3], (ConstraintLayout) objArr[9], (ConstraintLayout) objArr[0], (BaseTextView) objArr[4], (BaseTextView) objArr[5], (View) objArr[2]);
        this.f40702t = -1L;
        this.f40686f.setContainingBinding(this);
        this.f40688h.setContainingBinding(this);
        this.f40693m.setContainingBinding(this);
        this.f40696p.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
