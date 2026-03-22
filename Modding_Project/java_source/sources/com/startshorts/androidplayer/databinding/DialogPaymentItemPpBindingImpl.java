package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class DialogPaymentItemPpBindingImpl extends DialogPaymentItemPpBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39234k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f39235l;

    /* renamed from: j  reason: collision with root package name */
    private long f39236j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39235l = sparseIntArray;
        sparseIntArray.put(R$id.lay_item_sku, 1);
        sparseIntArray.put(R$id.ivPayLogo, 2);
        sparseIntArray.put(R$id.tv_price_discount, 3);
        sparseIntArray.put(R$id.tv_give_coin, 4);
        sparseIntArray.put(R$id.tv_price, 5);
        sparseIntArray.put(R$id.iv_check_box, 6);
        sparseIntArray.put(R$id.tv_rpp, 7);
        sparseIntArray.put(R$id.tv_label, 8);
    }

    public DialogPaymentItemPpBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f39234k, f39235l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39236j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39236j != 0) {
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
            this.f39236j = 1L;
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

    private DialogPaymentItemPpBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[0], (ImageView) objArr[6], (CustomFrescoView) objArr[2], (ConstraintLayout) objArr[1], (BaseTextView) objArr[4], (BaseTextView) objArr[8], (BaseTextView) objArr[5], (BaseTextView) objArr[3], (BaseTextView) objArr[7]);
        this.f39236j = -1L;
        this.f39225a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
