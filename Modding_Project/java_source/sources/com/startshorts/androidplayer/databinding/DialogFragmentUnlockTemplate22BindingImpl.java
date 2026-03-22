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
import com.google.android.flexbox.FlexboxLayout;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.MaxHeightConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.MaxHeightNestedScrollView;
import com.startshorts.androidplayer.ui.view.immersion.unlock.AutoUnlockEpisodeView;
import com.startshorts.androidplayer.ui.view.purchase.RechargeTipView;
/* loaded from: classes6.dex */
public class DialogFragmentUnlockTemplate22BindingImpl extends DialogFragmentUnlockTemplate22Binding {
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39136u = null;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private static final SparseIntArray f39137v;

    /* renamed from: t  reason: collision with root package name */
    private long f39138t;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39137v = sparseIntArray;
        sparseIntArray.put(R$id.tv_title, 1);
        sparseIntArray.put(R$id.cl_coin_area, 2);
        sparseIntArray.put(R$id.tvPrice, 3);
        sparseIntArray.put(R$id.tvPriceValue, 4);
        sparseIntArray.put(R$id.tvBalance, 5);
        sparseIntArray.put(R$id.tvCoinsValue, 6);
        sparseIntArray.put(R$id.ivClose, 7);
        sparseIntArray.put(R$id.nestedScrollView, 8);
        sparseIntArray.put(R$id.clWatchAdLayout, 9);
        sparseIntArray.put(R$id.tvFreeUnlock, 10);
        sparseIntArray.put(R$id.tvWatchAdInfo, 11);
        sparseIntArray.put(R$id.flexboxLayout, 12);
        sparseIntArray.put(R$id.autoUnlockEpisodeView, 13);
        sparseIntArray.put(R$id.rechargeTipView, 14);
        sparseIntArray.put(R$id.v_space, 15);
        sparseIntArray.put(R$id.bottom_mask_v, 16);
        sparseIntArray.put(R$id.stub_payment_method, 17);
        sparseIntArray.put(R$id.page_state_view, 18);
    }

    public DialogFragmentUnlockTemplate22BindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 19, f39136u, f39137v));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39138t = 0L;
        }
        if (this.f39127k.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39127k.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39138t != 0) {
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
            this.f39138t = 1L;
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

    private DialogFragmentUnlockTemplate22BindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AutoUnlockEpisodeView) objArr[13], (View) objArr[16], (ConstraintLayout) objArr[2], (ConstraintLayout) objArr[9], (MaxHeightConstraintLayout) objArr[0], (FlexboxLayout) objArr[12], (ImageView) objArr[7], (MaxHeightNestedScrollView) objArr[8], (StateViewGroup) objArr[18], (RechargeTipView) objArr[14], new ViewStubProxy((ViewStub) objArr[17]), (BaseTextView) objArr[5], (BaseTextView) objArr[6], (BaseTextView) objArr[10], (BaseTextView) objArr[3], (BaseTextView) objArr[4], (BaseTextView) objArr[1], (BaseTextView) objArr[11], (Space) objArr[15]);
        this.f39138t = -1L;
        this.f39121e.setTag(null);
        this.f39127k.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
