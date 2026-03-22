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
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.MaxHeightNestedScrollView;
import com.startshorts.androidplayer.ui.view.immersion.unlock.AutoUnlockEpisodeView;
import com.startshorts.androidplayer.ui.view.purchase.RechargeTipView;
import com.startshorts.androidplayer.ui.view.subs.SubsTypeView;
/* loaded from: classes6.dex */
public class DialogTopupBindingImpl extends DialogTopupBinding {
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39351u = null;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private static final SparseIntArray f39352v;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    private final ConstraintLayout f39353s;

    /* renamed from: t  reason: collision with root package name */
    private long f39354t;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39352v = sparseIntArray;
        sparseIntArray.put(R$id.slide_view, 1);
        sparseIntArray.put(R$id.navigation_iv, 2);
        sparseIntArray.put(R$id.balance_tv, 3);
        sparseIntArray.put(R$id.coin_value_tv, 4);
        sparseIntArray.put(R$id.coin_unit_tv, 5);
        sparseIntArray.put(R$id.divider_line, 6);
        sparseIntArray.put(R$id.bonus_value_tv, 7);
        sparseIntArray.put(R$id.bonus_unit_tv, 8);
        sparseIntArray.put(R$id.divider_toolbar, 9);
        sparseIntArray.put(R$id.sku_sv, 10);
        sparseIntArray.put(R$id.subs_view, 11);
        sparseIntArray.put(R$id.recycler_view, 12);
        sparseIntArray.put(R$id.recharge_tips_tv, 13);
        sparseIntArray.put(R$id.auto_unlock_episode_view, 14);
        sparseIntArray.put(R$id.recharge_tip_view, 15);
        sparseIntArray.put(R$id.v_space, 16);
        sparseIntArray.put(R$id.bottom_mask_v, 17);
        sparseIntArray.put(R$id.stub_payment_method, 18);
    }

    public DialogTopupBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 19, f39351u, f39352v));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39354t = 0L;
        }
        if (this.f39348p.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39348p.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39354t != 0) {
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
            this.f39354t = 1L;
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

    private DialogTopupBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AutoUnlockEpisodeView) objArr[14], (BaseTextView) objArr[3], (BaseTextView) objArr[8], (BaseTextView) objArr[7], (View) objArr[17], (BaseTextView) objArr[5], (BaseTextView) objArr[4], (View) objArr[6], (View) objArr[9], (ImageView) objArr[2], (RechargeTipView) objArr[15], (BaseTextView) objArr[13], (RecyclerView) objArr[12], (MaxHeightNestedScrollView) objArr[10], (View) objArr[1], new ViewStubProxy((ViewStub) objArr[18]), (SubsTypeView) objArr[11], (Space) objArr[16]);
        this.f39354t = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39353s = constraintLayout;
        constraintLayout.setTag(null);
        this.f39348p.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
