package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.LinearLayout;
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
public class DialogFragmentUnlockTemplate21BindingImpl extends DialogFragmentUnlockTemplate21Binding {
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39114y = null;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private static final SparseIntArray f39115z;

    /* renamed from: x  reason: collision with root package name */
    private long f39116x;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39115z = sparseIntArray;
        sparseIntArray.put(R$id.slideView, 1);
        sparseIntArray.put(R$id.tv_title, 2);
        sparseIntArray.put(R$id.cl_coin_area, 3);
        sparseIntArray.put(R$id.tvPrice, 4);
        sparseIntArray.put(R$id.tvPriceValue, 5);
        sparseIntArray.put(R$id.coinsStoreLayout, 6);
        sparseIntArray.put(R$id.tvCoinsStore, 7);
        sparseIntArray.put(R$id.tvBalance, 8);
        sparseIntArray.put(R$id.tvCoinsValue, 9);
        sparseIntArray.put(R$id.balance_divider_line, 10);
        sparseIntArray.put(R$id.tvBonusValue, 11);
        sparseIntArray.put(R$id.nestedScrollView, 12);
        sparseIntArray.put(R$id.clWatchAdLayout, 13);
        sparseIntArray.put(R$id.tvFreeUnlock, 14);
        sparseIntArray.put(R$id.tvWatchAdInfo, 15);
        sparseIntArray.put(R$id.flexboxLayout, 16);
        sparseIntArray.put(R$id.autoUnlockEpisodeView, 17);
        sparseIntArray.put(R$id.rechargeTipView, 18);
        sparseIntArray.put(R$id.v_space, 19);
        sparseIntArray.put(R$id.bottom_mask_v, 20);
        sparseIntArray.put(R$id.stub_payment_method, 21);
        sparseIntArray.put(R$id.page_state_view, 22);
    }

    public DialogFragmentUnlockTemplate21BindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 23, f39114y, f39115z));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39116x = 0L;
        }
        if (this.f39103m.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39103m.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39116x != 0) {
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
            this.f39116x = 1L;
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

    private DialogFragmentUnlockTemplate21BindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AutoUnlockEpisodeView) objArr[17], (View) objArr[10], (View) objArr[20], (ConstraintLayout) objArr[3], (ConstraintLayout) objArr[13], (LinearLayout) objArr[6], (MaxHeightConstraintLayout) objArr[0], (FlexboxLayout) objArr[16], (MaxHeightNestedScrollView) objArr[12], (StateViewGroup) objArr[22], (RechargeTipView) objArr[18], (View) objArr[1], new ViewStubProxy((ViewStub) objArr[21]), (BaseTextView) objArr[8], (BaseTextView) objArr[11], (BaseTextView) objArr[7], (BaseTextView) objArr[9], (BaseTextView) objArr[14], (BaseTextView) objArr[4], (BaseTextView) objArr[5], (BaseTextView) objArr[2], (BaseTextView) objArr[15], (Space) objArr[19]);
        this.f39116x = -1L;
        this.f39097g.setTag(null);
        this.f39103m.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
